// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SponsorResponse _$SponsorResponseFromJson(Map<String, dynamic> json) {
  return _SponsorResponse.fromJson(json);
}

/// @nodoc
mixin _$SponsorResponse {
  List<Company> get data => throw _privateConstructorUsedError;

  /// Serializes this SponsorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorResponseCopyWith<SponsorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorResponseCopyWith<$Res> {
  factory $SponsorResponseCopyWith(
          SponsorResponse value, $Res Function(SponsorResponse) then) =
      _$SponsorResponseCopyWithImpl<$Res, SponsorResponse>;
  @useResult
  $Res call({List<Company> data});
}

/// @nodoc
class _$SponsorResponseCopyWithImpl<$Res, $Val extends SponsorResponse>
    implements $SponsorResponseCopyWith<$Res> {
  _$SponsorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorResponseImplCopyWith<$Res>
    implements $SponsorResponseCopyWith<$Res> {
  factory _$$SponsorResponseImplCopyWith(_$SponsorResponseImpl value,
          $Res Function(_$SponsorResponseImpl) then) =
      __$$SponsorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Company> data});
}

/// @nodoc
class __$$SponsorResponseImplCopyWithImpl<$Res>
    extends _$SponsorResponseCopyWithImpl<$Res, _$SponsorResponseImpl>
    implements _$$SponsorResponseImplCopyWith<$Res> {
  __$$SponsorResponseImplCopyWithImpl(
      _$SponsorResponseImpl _value, $Res Function(_$SponsorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SponsorResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorResponseImpl implements _SponsorResponse {
  const _$SponsorResponseImpl({required final List<Company> data})
      : _data = data;

  factory _$SponsorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorResponseImplFromJson(json);

  final List<Company> _data;
  @override
  List<Company> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SponsorResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SponsorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorResponseImplCopyWith<_$SponsorResponseImpl> get copyWith =>
      __$$SponsorResponseImplCopyWithImpl<_$SponsorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorResponseImplToJson(
      this,
    );
  }
}

abstract class _SponsorResponse implements SponsorResponse {
  const factory _SponsorResponse({required final List<Company> data}) =
      _$SponsorResponseImpl;

  factory _SponsorResponse.fromJson(Map<String, dynamic> json) =
      _$SponsorResponseImpl.fromJson;

  @override
  List<Company> get data;

  /// Create a copy of SponsorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorResponseImplCopyWith<_$SponsorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDetailResponse _$CompanyDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyDetailResponse {
  CompanyDetail get data => throw _privateConstructorUsedError;

  /// Serializes this CompanyDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyDetailResponseCopyWith<CompanyDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDetailResponseCopyWith<$Res> {
  factory $CompanyDetailResponseCopyWith(CompanyDetailResponse value,
          $Res Function(CompanyDetailResponse) then) =
      _$CompanyDetailResponseCopyWithImpl<$Res, CompanyDetailResponse>;
  @useResult
  $Res call({CompanyDetail data});

  $CompanyDetailCopyWith<$Res> get data;
}

/// @nodoc
class _$CompanyDetailResponseCopyWithImpl<$Res,
        $Val extends CompanyDetailResponse>
    implements $CompanyDetailResponseCopyWith<$Res> {
  _$CompanyDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyDetail,
    ) as $Val);
  }

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDetailCopyWith<$Res> get data {
    return $CompanyDetailCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyDetailResponseImplCopyWith<$Res>
    implements $CompanyDetailResponseCopyWith<$Res> {
  factory _$$CompanyDetailResponseImplCopyWith(
          _$CompanyDetailResponseImpl value,
          $Res Function(_$CompanyDetailResponseImpl) then) =
      __$$CompanyDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompanyDetail data});

  @override
  $CompanyDetailCopyWith<$Res> get data;
}

/// @nodoc
class __$$CompanyDetailResponseImplCopyWithImpl<$Res>
    extends _$CompanyDetailResponseCopyWithImpl<$Res,
        _$CompanyDetailResponseImpl>
    implements _$$CompanyDetailResponseImplCopyWith<$Res> {
  __$$CompanyDetailResponseImplCopyWithImpl(_$CompanyDetailResponseImpl _value,
      $Res Function(_$CompanyDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CompanyDetailResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDetailResponseImpl implements _CompanyDetailResponse {
  const _$CompanyDetailResponseImpl({required this.data});

  factory _$CompanyDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDetailResponseImplFromJson(json);

  @override
  final CompanyDetail data;

  @override
  String toString() {
    return 'CompanyDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDetailResponseImplCopyWith<_$CompanyDetailResponseImpl>
      get copyWith => __$$CompanyDetailResponseImplCopyWithImpl<
          _$CompanyDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyDetailResponse implements CompanyDetailResponse {
  const factory _CompanyDetailResponse({required final CompanyDetail data}) =
      _$CompanyDetailResponseImpl;

  factory _CompanyDetailResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyDetailResponseImpl.fromJson;

  @override
  CompanyDetail get data;

  /// Create a copy of CompanyDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyDetailResponseImplCopyWith<_$CompanyDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get county => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {String id,
      String name,
      String city,
      String county,
      String type,
      String rate});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? county = null,
    Object? type = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String city,
      String county,
      String type,
      String rate});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? county = null,
    Object? type = null,
    Object? rate = null,
  }) {
    return _then(_$CompanyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {required this.id,
      required this.name,
      required this.city,
      required this.county,
      required this.type,
      required this.rate});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String county;
  @override
  final String type;
  @override
  final String rate;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, city: $city, county: $county, type: $type, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, city, county, type, rate);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {required final String id,
      required final String name,
      required final String city,
      required final String county,
      required final String type,
      required final String rate}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get county;
  @override
  String get type;
  @override
  String get rate;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDetail _$CompanyDetailFromJson(Map<String, dynamic> json) {
  return _CompanyDetail.fromJson(json);
}

/// @nodoc
mixin _$CompanyDetail {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get county => throw _privateConstructorUsedError;
  String get rate => throw _privateConstructorUsedError;
  bool? get hasUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get values => throw _privateConstructorUsedError;
  String get businessModel => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CompanyDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyDetailCopyWith<CompanyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDetailCopyWith<$Res> {
  factory $CompanyDetailCopyWith(
          CompanyDetail value, $Res Function(CompanyDetail) then) =
      _$CompanyDetailCopyWithImpl<$Res, CompanyDetail>;
  @useResult
  $Res call(
      {String id,
      String name,
      String city,
      String county,
      String rate,
      bool? hasUrl,
      String? url,
      String description,
      String values,
      String businessModel,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$CompanyDetailCopyWithImpl<$Res, $Val extends CompanyDetail>
    implements $CompanyDetailCopyWith<$Res> {
  _$CompanyDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? county = null,
    Object? rate = null,
    Object? hasUrl = freezed,
    Object? url = freezed,
    Object? description = null,
    Object? values = null,
    Object? businessModel = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      hasUrl: freezed == hasUrl
          ? _value.hasUrl
          : hasUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String,
      businessModel: null == businessModel
          ? _value.businessModel
          : businessModel // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyDetailImplCopyWith<$Res>
    implements $CompanyDetailCopyWith<$Res> {
  factory _$$CompanyDetailImplCopyWith(
          _$CompanyDetailImpl value, $Res Function(_$CompanyDetailImpl) then) =
      __$$CompanyDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String city,
      String county,
      String rate,
      bool? hasUrl,
      String? url,
      String description,
      String values,
      String businessModel,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$CompanyDetailImplCopyWithImpl<$Res>
    extends _$CompanyDetailCopyWithImpl<$Res, _$CompanyDetailImpl>
    implements _$$CompanyDetailImplCopyWith<$Res> {
  __$$CompanyDetailImplCopyWithImpl(
      _$CompanyDetailImpl _value, $Res Function(_$CompanyDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? county = null,
    Object? rate = null,
    Object? hasUrl = freezed,
    Object? url = freezed,
    Object? description = null,
    Object? values = null,
    Object? businessModel = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CompanyDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      hasUrl: freezed == hasUrl
          ? _value.hasUrl
          : hasUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String,
      businessModel: null == businessModel
          ? _value.businessModel
          : businessModel // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDetailImpl implements _CompanyDetail {
  const _$CompanyDetailImpl(
      {required this.id,
      required this.name,
      required this.city,
      required this.county,
      required this.rate,
      this.hasUrl,
      this.url,
      required this.description,
      required this.values,
      required this.businessModel,
      required this.createdAt,
      required this.updatedAt});

  factory _$CompanyDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String county;
  @override
  final String rate;
  @override
  final bool? hasUrl;
  @override
  final String? url;
  @override
  final String description;
  @override
  final String values;
  @override
  final String businessModel;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'CompanyDetail(id: $id, name: $name, city: $city, county: $county, rate: $rate, hasUrl: $hasUrl, url: $url, description: $description, values: $values, businessModel: $businessModel, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.hasUrl, hasUrl) || other.hasUrl == hasUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.values, values) || other.values == values) &&
            (identical(other.businessModel, businessModel) ||
                other.businessModel == businessModel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, city, county, rate,
      hasUrl, url, description, values, businessModel, createdAt, updatedAt);

  /// Create a copy of CompanyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDetailImplCopyWith<_$CompanyDetailImpl> get copyWith =>
      __$$CompanyDetailImplCopyWithImpl<_$CompanyDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDetailImplToJson(
      this,
    );
  }
}

abstract class _CompanyDetail implements CompanyDetail {
  const factory _CompanyDetail(
      {required final String id,
      required final String name,
      required final String city,
      required final String county,
      required final String rate,
      final bool? hasUrl,
      final String? url,
      required final String description,
      required final String values,
      required final String businessModel,
      required final String createdAt,
      required final String updatedAt}) = _$CompanyDetailImpl;

  factory _CompanyDetail.fromJson(Map<String, dynamic> json) =
      _$CompanyDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get county;
  @override
  String get rate;
  @override
  bool? get hasUrl;
  @override
  String? get url;
  @override
  String get description;
  @override
  String get values;
  @override
  String get businessModel;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of CompanyDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyDetailImplCopyWith<_$CompanyDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
