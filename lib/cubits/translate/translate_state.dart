import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_state.freezed.dart';
part 'translate_state.g.dart';

@freezed
class TranslateState with _$TranslateState {
  const factory TranslateState.initial({
    required String translatedText,
  }) = TranslateInitial;
  const factory TranslateState.loading({
    required String translatedText,
  }) = TranslateLoading;
  const factory TranslateState.success({
    required String translatedText,
  }) = TranslateSuccess;
  const factory TranslateState.error({
    required String error,
    required String translatedText,
  }) = TranslateError;

  factory TranslateState.fromJson(Map<String, dynamic> json) =>
      _$TranslateStateFromJson(json);
}
