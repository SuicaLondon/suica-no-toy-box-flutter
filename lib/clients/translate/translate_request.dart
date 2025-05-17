import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_request.freezed.dart';
part 'translate_request.g.dart';

@freezed
class TranslateRequest with _$TranslateRequest {
  const factory TranslateRequest({
    required String sourceLang,
    required String sourceText,
    required String targetLang,
  }) = _TranslateRequest;

  factory TranslateRequest.fromJson(Map<String, dynamic> json) =>
      _$TranslateRequestFromJson(json);
}
