// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslateRequestImpl _$$TranslateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslateRequestImpl(
      sourceLang: json['sourceLang'] as String,
      sourceText: json['sourceText'] as String,
      targetLang: json['targetLang'] as String,
    );

Map<String, dynamic> _$$TranslateRequestImplToJson(
        _$TranslateRequestImpl instance) =>
    <String, dynamic>{
      'sourceLang': instance.sourceLang,
      'sourceText': instance.sourceText,
      'targetLang': instance.targetLang,
    };
