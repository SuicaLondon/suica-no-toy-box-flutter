// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslateInitialImpl _$$TranslateInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslateInitialImpl(
      translatedText: json['translatedText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TranslateInitialImplToJson(
        _$TranslateInitialImpl instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
      'runtimeType': instance.$type,
    };

_$TranslateLoadingImpl _$$TranslateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslateLoadingImpl(
      translatedText: json['translatedText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TranslateLoadingImplToJson(
        _$TranslateLoadingImpl instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
      'runtimeType': instance.$type,
    };

_$TranslateSuccessImpl _$$TranslateSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslateSuccessImpl(
      translatedText: json['translatedText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TranslateSuccessImplToJson(
        _$TranslateSuccessImpl instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
      'runtimeType': instance.$type,
    };

_$TranslateErrorImpl _$$TranslateErrorImplFromJson(Map<String, dynamic> json) =>
    _$TranslateErrorImpl(
      error: json['error'] as String,
      translatedText: json['translatedText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TranslateErrorImplToJson(
        _$TranslateErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'translatedText': instance.translatedText,
      'runtimeType': instance.$type,
    };
