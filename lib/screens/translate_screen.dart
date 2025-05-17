import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:suica_no_toy_box_flutter/constants/dimensions.dart';
import 'package:suica_no_toy_box_flutter/constants/form_keys.dart';
import 'package:suica_no_toy_box_flutter/constants/languages.dart';
import 'package:suica_no_toy_box_flutter/cubits/translate/translate_cubit.dart';
import 'package:suica_no_toy_box_flutter/cubits/translate/translate_state.dart';
import 'package:suica_no_toy_box_flutter/widgets/language_dropdown.dart';

class TranslateScreen extends StatefulWidget {
  const TranslateScreen({super.key});

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final formState = _formKey.currentState;

      formState?.patchValue({
        TranslateFormKeys.sourceLanguage: 'en',
        TranslateFormKeys.targetLanguage: 'zh',
      });
    });
  }

  void _swapLanguages() {
    final formState = _formKey.currentState;
    final fields = formState?.fields;
    if (fields == null) {
      return;
    }
    final sourceLanguage = fields[TranslateFormKeys.sourceLanguage]?.value;
    final targetLanguage = fields[TranslateFormKeys.targetLanguage]?.value;
    fields[TranslateFormKeys.sourceLanguage]?.didChange(targetLanguage);
    fields[TranslateFormKeys.targetLanguage]?.didChange(sourceLanguage);

    final sourceText = fields[TranslateFormKeys.sourceText]?.value;
    final targetText = fields[TranslateFormKeys.targetText]?.value;

    fields[TranslateFormKeys.sourceText]?.didChange(targetText);
    fields[TranslateFormKeys.targetText]?.didChange(sourceText);
  }

  void _translate() {
    final isValid = _formKey.currentState?.saveAndValidate();
    if (isValid != true) {
      return;
    }
    final formState = _formKey.currentState;
    final values = formState?.value;
    if (values == null) {
      return;
    }
    final sourceLang = values[TranslateFormKeys.sourceLanguage];
    final sourceText = values[TranslateFormKeys.sourceText];
    final targetLang = values[TranslateFormKeys.targetLanguage];
    context.read<TranslateCubit>().translate(
          sourceLang: sourceLang,
          sourceText: sourceText,
          targetLang: targetLang,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Translator'),
        actions: [
          IconButton(
            onPressed: _swapLanguages,
            icon: const Icon(Icons.swap_horiz),
            tooltip: 'Swap Languages',
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.lg),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              spacing: Dimensions.md,
              children: [
                LanguageDropdown(
                  formKey: _formKey,
                  name: TranslateFormKeys.sourceLanguage,
                  labelText: 'From',
                  items: languages,
                ),
                Expanded(
                  child: FormBuilderTextField(
                    name: TranslateFormKeys.sourceText,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        hintText: 'Enter text to translate',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.sm),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                        )),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ),
                LanguageDropdown(
                  formKey: _formKey,
                  name: TranslateFormKeys.targetLanguage,
                  labelText: 'To',
                  items: languages,
                ),
                Expanded(
                  child: BlocListener<TranslateCubit, TranslateState>(
                    listener: (context, state) {
                      _formKey
                          .currentState?.fields[TranslateFormKeys.targetText]
                          ?.didChange(state.translatedText);
                    },
                    child: FormBuilderTextField(
                      name: TranslateFormKeys.targetText,
                      maxLines: null,
                      expands: true,
                      readOnly: true,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        hintText: 'Translation will appear here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.sm),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _translate,
        child: const Icon(Icons.translate),
      ),
    );
  }
}
