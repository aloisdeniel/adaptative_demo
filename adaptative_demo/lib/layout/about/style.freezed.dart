// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AboutStyleDataTearOff {
  const _$AboutStyleDataTearOff();

// ignore: unused_element
  _AboutStyleData call(
      {@required TextStyle titleStyle,
      @required TextStyle descriptionStyle,
      @required bool isCentered,
      @required EdgeInsets padding}) {
    return _AboutStyleData(
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      isCentered: isCentered,
      padding: padding,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AboutStyleData = _$AboutStyleDataTearOff();

/// @nodoc
mixin _$AboutStyleData {
  TextStyle get titleStyle;
  TextStyle get descriptionStyle;
  bool get isCentered;
  EdgeInsets get padding;

  $AboutStyleDataCopyWith<AboutStyleData> get copyWith;
}

/// @nodoc
abstract class $AboutStyleDataCopyWith<$Res> {
  factory $AboutStyleDataCopyWith(
          AboutStyleData value, $Res Function(AboutStyleData) then) =
      _$AboutStyleDataCopyWithImpl<$Res>;
  $Res call(
      {TextStyle titleStyle,
      TextStyle descriptionStyle,
      bool isCentered,
      EdgeInsets padding});
}

/// @nodoc
class _$AboutStyleDataCopyWithImpl<$Res>
    implements $AboutStyleDataCopyWith<$Res> {
  _$AboutStyleDataCopyWithImpl(this._value, this._then);

  final AboutStyleData _value;
  // ignore: unused_field
  final $Res Function(AboutStyleData) _then;

  @override
  $Res call({
    Object titleStyle = freezed,
    Object descriptionStyle = freezed,
    Object isCentered = freezed,
    Object padding = freezed,
  }) {
    return _then(_value.copyWith(
      titleStyle:
          titleStyle == freezed ? _value.titleStyle : titleStyle as TextStyle,
      descriptionStyle: descriptionStyle == freezed
          ? _value.descriptionStyle
          : descriptionStyle as TextStyle,
      isCentered:
          isCentered == freezed ? _value.isCentered : isCentered as bool,
      padding: padding == freezed ? _value.padding : padding as EdgeInsets,
    ));
  }
}

/// @nodoc
abstract class _$AboutStyleDataCopyWith<$Res>
    implements $AboutStyleDataCopyWith<$Res> {
  factory _$AboutStyleDataCopyWith(
          _AboutStyleData value, $Res Function(_AboutStyleData) then) =
      __$AboutStyleDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextStyle titleStyle,
      TextStyle descriptionStyle,
      bool isCentered,
      EdgeInsets padding});
}

/// @nodoc
class __$AboutStyleDataCopyWithImpl<$Res>
    extends _$AboutStyleDataCopyWithImpl<$Res>
    implements _$AboutStyleDataCopyWith<$Res> {
  __$AboutStyleDataCopyWithImpl(
      _AboutStyleData _value, $Res Function(_AboutStyleData) _then)
      : super(_value, (v) => _then(v as _AboutStyleData));

  @override
  _AboutStyleData get _value => super._value as _AboutStyleData;

  @override
  $Res call({
    Object titleStyle = freezed,
    Object descriptionStyle = freezed,
    Object isCentered = freezed,
    Object padding = freezed,
  }) {
    return _then(_AboutStyleData(
      titleStyle:
          titleStyle == freezed ? _value.titleStyle : titleStyle as TextStyle,
      descriptionStyle: descriptionStyle == freezed
          ? _value.descriptionStyle
          : descriptionStyle as TextStyle,
      isCentered:
          isCentered == freezed ? _value.isCentered : isCentered as bool,
      padding: padding == freezed ? _value.padding : padding as EdgeInsets,
    ));
  }
}

/// @nodoc
class _$_AboutStyleData implements _AboutStyleData {
  const _$_AboutStyleData(
      {@required this.titleStyle,
      @required this.descriptionStyle,
      @required this.isCentered,
      @required this.padding})
      : assert(titleStyle != null),
        assert(descriptionStyle != null),
        assert(isCentered != null),
        assert(padding != null);

  @override
  final TextStyle titleStyle;
  @override
  final TextStyle descriptionStyle;
  @override
  final bool isCentered;
  @override
  final EdgeInsets padding;

  @override
  String toString() {
    return 'AboutStyleData(titleStyle: $titleStyle, descriptionStyle: $descriptionStyle, isCentered: $isCentered, padding: $padding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AboutStyleData &&
            (identical(other.titleStyle, titleStyle) ||
                const DeepCollectionEquality()
                    .equals(other.titleStyle, titleStyle)) &&
            (identical(other.descriptionStyle, descriptionStyle) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionStyle, descriptionStyle)) &&
            (identical(other.isCentered, isCentered) ||
                const DeepCollectionEquality()
                    .equals(other.isCentered, isCentered)) &&
            (identical(other.padding, padding) ||
                const DeepCollectionEquality().equals(other.padding, padding)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(titleStyle) ^
      const DeepCollectionEquality().hash(descriptionStyle) ^
      const DeepCollectionEquality().hash(isCentered) ^
      const DeepCollectionEquality().hash(padding);

  @override
  _$AboutStyleDataCopyWith<_AboutStyleData> get copyWith =>
      __$AboutStyleDataCopyWithImpl<_AboutStyleData>(this, _$identity);
}

abstract class _AboutStyleData implements AboutStyleData {
  const factory _AboutStyleData(
      {@required TextStyle titleStyle,
      @required TextStyle descriptionStyle,
      @required bool isCentered,
      @required EdgeInsets padding}) = _$_AboutStyleData;

  @override
  TextStyle get titleStyle;
  @override
  TextStyle get descriptionStyle;
  @override
  bool get isCentered;
  @override
  EdgeInsets get padding;
  @override
  _$AboutStyleDataCopyWith<_AboutStyleData> get copyWith;
}
