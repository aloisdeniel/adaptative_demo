// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApplicationStateTearOff {
  const _$ApplicationStateTearOff();

// ignore: unused_element
  _ApplicationState call(
      {@required NewsApi api, NewsState news = const NewsState.notLoaded()}) {
    return _ApplicationState(
      api: api,
      news: news,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApplicationState = _$ApplicationStateTearOff();

/// @nodoc
mixin _$ApplicationState {
  NewsApi get api;
  NewsState get news;

  $ApplicationStateCopyWith<ApplicationState> get copyWith;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
  $Res call({NewsApi api, NewsState news});

  $NewsStateCopyWith<$Res> get news;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  final ApplicationState _value;
  // ignore: unused_field
  final $Res Function(ApplicationState) _then;

  @override
  $Res call({
    Object api = freezed,
    Object news = freezed,
  }) {
    return _then(_value.copyWith(
      api: api == freezed ? _value.api : api as NewsApi,
      news: news == freezed ? _value.news : news as NewsState,
    ));
  }

  @override
  $NewsStateCopyWith<$Res> get news {
    if (_value.news == null) {
      return null;
    }
    return $NewsStateCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc
abstract class _$ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$ApplicationStateCopyWith(
          _ApplicationState value, $Res Function(_ApplicationState) then) =
      __$ApplicationStateCopyWithImpl<$Res>;
  @override
  $Res call({NewsApi api, NewsState news});

  @override
  $NewsStateCopyWith<$Res> get news;
}

/// @nodoc
class __$ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$ApplicationStateCopyWith<$Res> {
  __$ApplicationStateCopyWithImpl(
      _ApplicationState _value, $Res Function(_ApplicationState) _then)
      : super(_value, (v) => _then(v as _ApplicationState));

  @override
  _ApplicationState get _value => super._value as _ApplicationState;

  @override
  $Res call({
    Object api = freezed,
    Object news = freezed,
  }) {
    return _then(_ApplicationState(
      api: api == freezed ? _value.api : api as NewsApi,
      news: news == freezed ? _value.news : news as NewsState,
    ));
  }
}

/// @nodoc
class _$_ApplicationState implements _ApplicationState {
  const _$_ApplicationState(
      {@required this.api, this.news = const NewsState.notLoaded()})
      : assert(api != null),
        assert(news != null);

  @override
  final NewsApi api;
  @JsonKey(defaultValue: const NewsState.notLoaded())
  @override
  final NewsState news;

  @override
  String toString() {
    return 'ApplicationState(api: $api, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationState &&
            (identical(other.api, api) ||
                const DeepCollectionEquality().equals(other.api, api)) &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(api) ^
      const DeepCollectionEquality().hash(news);

  @override
  _$ApplicationStateCopyWith<_ApplicationState> get copyWith =>
      __$ApplicationStateCopyWithImpl<_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState({@required NewsApi api, NewsState news}) =
      _$_ApplicationState;

  @override
  NewsApi get api;
  @override
  NewsState get news;
  @override
  _$ApplicationStateCopyWith<_ApplicationState> get copyWith;
}
