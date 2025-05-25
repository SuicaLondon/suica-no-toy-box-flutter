// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorResponseImpl _$$SponsorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SponsorResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SponsorResponseImplToJson(
        _$SponsorResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CompanyDetailResponseImpl _$$CompanyDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyDetailResponseImpl(
      data: CompanyDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyDetailResponseImplToJson(
        _$CompanyDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      county: json['county'] as String,
      type: json['type'] as String,
      rate: json['rate'] as String,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'county': instance.county,
      'type': instance.type,
      'rate': instance.rate,
    };

_$CompanyDetailImpl _$$CompanyDetailImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDetailImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      city: json['city'] as String,
      county: json['county'] as String,
      type: json['type'] as String,
      rate: json['rate'] as String,
      hasUrl: json['hasUrl'] as bool?,
      url: json['url'] as String?,
      description: json['description'] as String,
      values: json['values'] as String,
      businessModel: json['businessModel'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$CompanyDetailImplToJson(_$CompanyDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'county': instance.county,
      'type': instance.type,
      'rate': instance.rate,
      'hasUrl': instance.hasUrl,
      'url': instance.url,
      'description': instance.description,
      'values': instance.values,
      'businessModel': instance.businessModel,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
