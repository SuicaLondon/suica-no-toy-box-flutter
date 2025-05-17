import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suica_no_toy_box_flutter/clients/translate/translate_client.dart';
import 'package:suica_no_toy_box_flutter/cubits/translate/translate_state.dart';

class TranslateCubit extends Cubit<TranslateState> {
  TranslateCubit({TranslateClient? translateClient})
      : _translateClient = translateClient ?? TranslateClient(),
        super(const TranslateState.initial(translatedText: ''));
  final TranslateClient _translateClient;

  Future<void> translate({
    required String sourceLang,
    required String sourceText,
    required String targetLang,
  }) async {
    try {
      emit(const TranslateState.loading(translatedText: ''));

      final translationStream = await _translateClient.translate(
        sourceLang: sourceLang,
        sourceText: sourceText,
        targetLang: targetLang,
      );

      await for (final translatedText in translationStream) {
        emit(TranslateState.success(
            translatedText: state.translatedText + translatedText));
      }
    } catch (e) {
      emit(TranslateState.error(error: e.toString(), translatedText: ''));
    }
  }
}
