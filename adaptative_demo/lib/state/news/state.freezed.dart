// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _NewsStateNotLoaded notLoaded() {
    return const _NewsStateNotLoaded();
  }

// ignore: unused_element
  _NewsStateLoading loading({@required void Function() cancel}) {
    return _NewsStateLoading(
      cancel: cancel,
    );
  }

// ignore: unused_element
  _NewsStateLoaded loaded(
      {@required String country, @required List<Article> articles}) {
    return _NewsStateLoaded(
      country: country,
      articles: articles,
    );
  }

// ignore: unused_element
  _NewsStateLoadingFailed loadingFailed({@required dynamic error}) {
    return _NewsStateLoadingFailed(
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notLoaded(),
    @required Result loading(void Function() cancel),
    @required Result loaded(String country, List<Article> articles),
    @required Result loadingFailed(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notLoaded(),
    Result loading(void Function() cancel),
    Result loaded(String country, List<Article> articles),
    Result loadingFailed(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notLoaded(_NewsStateNotLoaded value),
    @required Result loading(_NewsStateLoading value),
    @required Result loaded(_NewsStateLoaded value),
    @required Result loadingFailed(_NewsStateLoadingFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notLoaded(_NewsStateNotLoaded value),
    Result loading(_NewsStateLoading value),
    Result loaded(_NewsStateLoaded value),
    Result loadingFailed(_NewsStateLoadingFailed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$NewsStateNotLoadedCopyWith<$Res> {
  factory _$NewsStateNotLoadedCopyWith(
          _NewsStateNotLoaded value, $Res Function(_NewsStateNotLoaded) then) =
      __$NewsStateNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewsStateNotLoadedCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateNotLoadedCopyWith<$Res> {
  __$NewsStateNotLoadedCopyWithImpl(
      _NewsStateNotLoaded _value, $Res Function(_NewsStateNotLoaded) _then)
      : super(_value, (v) => _then(v as _NewsStateNotLoaded));

  @override
  _NewsStateNotLoaded get _value => super._value as _NewsStateNotLoaded;
}

/// @nodoc
class _$_NewsStateNotLoaded implements _NewsStateNotLoaded {
  const _$_NewsStateNotLoaded();

  @override
  String toString() {
    return 'NewsState.notLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewsStateNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notLoaded(),
    @required Result loading(void Function() cancel),
    @required Result loaded(String country, List<Article> articles),
    @required Result loadingFailed(dynamic error),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return notLoaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notLoaded(),
    Result loading(void Function() cancel),
    Result loaded(String country, List<Article> articles),
    Result loadingFailed(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoaded != null) {
      return notLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notLoaded(_NewsStateNotLoaded value),
    @required Result loading(_NewsStateLoading value),
    @required Result loaded(_NewsStateLoaded value),
    @required Result loadingFailed(_NewsStateLoadingFailed value),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notLoaded(_NewsStateNotLoaded value),
    Result loading(_NewsStateLoading value),
    Result loaded(_NewsStateLoaded value),
    Result loadingFailed(_NewsStateLoadingFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class _NewsStateNotLoaded implements NewsState {
  const factory _NewsStateNotLoaded() = _$_NewsStateNotLoaded;
}

/// @nodoc
abstract class _$NewsStateLoadingCopyWith<$Res> {
  factory _$NewsStateLoadingCopyWith(
          _NewsStateLoading value, $Res Function(_NewsStateLoading) then) =
      __$NewsStateLoadingCopyWithImpl<$Res>;
  $Res call({void Function() cancel});
}

/// @nodoc
class __$NewsStateLoadingCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateLoadingCopyWith<$Res> {
  __$NewsStateLoadingCopyWithImpl(
      _NewsStateLoading _value, $Res Function(_NewsStateLoading) _then)
      : super(_value, (v) => _then(v as _NewsStateLoading));

  @override
  _NewsStateLoading get _value => super._value as _NewsStateLoading;

  @override
  $Res call({
    Object cancel = freezed,
  }) {
    return _then(_NewsStateLoading(
      cancel: cancel == freezed ? _value.cancel : cancel as void Function(),
    ));
  }
}

/// @nodoc
class _$_NewsStateLoading implements _NewsStateLoading {
  const _$_NewsStateLoading({@required this.cancel}) : assert(cancel != null);

  @override
  final void Function() cancel;

  @override
  String toString() {
    return 'NewsState.loading(cancel: $cancel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsStateLoading &&
            (identical(other.cancel, cancel) ||
                const DeepCollectionEquality().equals(other.cancel, cancel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cancel);

  @override
  _$NewsStateLoadingCopyWith<_NewsStateLoading> get copyWith =>
      __$NewsStateLoadingCopyWithImpl<_NewsStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notLoaded(),
    @required Result loading(void Function() cancel),
    @required Result loaded(String country, List<Article> articles),
    @required Result loadingFailed(dynamic error),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loading(cancel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notLoaded(),
    Result loading(void Function() cancel),
    Result loaded(String country, List<Article> articles),
    Result loadingFailed(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(cancel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notLoaded(_NewsStateNotLoaded value),
    @required Result loading(_NewsStateLoading value),
    @required Result loaded(_NewsStateLoaded value),
    @required Result loadingFailed(_NewsStateLoadingFailed value),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notLoaded(_NewsStateNotLoaded value),
    Result loading(_NewsStateLoading value),
    Result loaded(_NewsStateLoaded value),
    Result loadingFailed(_NewsStateLoadingFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewsStateLoading implements NewsState {
  const factory _NewsStateLoading({@required void Function() cancel}) =
      _$_NewsStateLoading;

  void Function() get cancel;
  _$NewsStateLoadingCopyWith<_NewsStateLoading> get copyWith;
}

/// @nodoc
abstract class _$NewsStateLoadedCopyWith<$Res> {
  factory _$NewsStateLoadedCopyWith(
          _NewsStateLoaded value, $Res Function(_NewsStateLoaded) then) =
      __$NewsStateLoadedCopyWithImpl<$Res>;
  $Res call({String country, List<Article> articles});
}

/// @nodoc
class __$NewsStateLoadedCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateLoadedCopyWith<$Res> {
  __$NewsStateLoadedCopyWithImpl(
      _NewsStateLoaded _value, $Res Function(_NewsStateLoaded) _then)
      : super(_value, (v) => _then(v as _NewsStateLoaded));

  @override
  _NewsStateLoaded get _value => super._value as _NewsStateLoaded;

  @override
  $Res call({
    Object country = freezed,
    Object articles = freezed,
  }) {
    return _then(_NewsStateLoaded(
      country: country == freezed ? _value.country : country as String,
      articles:
          articles == freezed ? _value.articles : articles as List<Article>,
    ));
  }
}

/// @nodoc
class _$_NewsStateLoaded implements _NewsStateLoaded {
  const _$_NewsStateLoaded({@required this.country, @required this.articles})
      : assert(country != null),
        assert(articles != null);

  @override
  final String country;
  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'NewsState.loaded(country: $country, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsStateLoaded &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(articles);

  @override
  _$NewsStateLoadedCopyWith<_NewsStateLoaded> get copyWith =>
      __$NewsStateLoadedCopyWithImpl<_NewsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notLoaded(),
    @required Result loading(void Function() cancel),
    @required Result loaded(String country, List<Article> articles),
    @required Result loadingFailed(dynamic error),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loaded(country, articles);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notLoaded(),
    Result loading(void Function() cancel),
    Result loaded(String country, List<Article> articles),
    Result loadingFailed(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(country, articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notLoaded(_NewsStateNotLoaded value),
    @required Result loading(_NewsStateLoading value),
    @required Result loaded(_NewsStateLoaded value),
    @required Result loadingFailed(_NewsStateLoadingFailed value),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notLoaded(_NewsStateNotLoaded value),
    Result loading(_NewsStateLoading value),
    Result loaded(_NewsStateLoaded value),
    Result loadingFailed(_NewsStateLoadingFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _NewsStateLoaded implements NewsState {
  const factory _NewsStateLoaded(
      {@required String country,
      @required List<Article> articles}) = _$_NewsStateLoaded;

  String get country;
  List<Article> get articles;
  _$NewsStateLoadedCopyWith<_NewsStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$NewsStateLoadingFailedCopyWith<$Res> {
  factory _$NewsStateLoadingFailedCopyWith(_NewsStateLoadingFailed value,
          $Res Function(_NewsStateLoadingFailed) then) =
      __$NewsStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$NewsStateLoadingFailedCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateLoadingFailedCopyWith<$Res> {
  __$NewsStateLoadingFailedCopyWithImpl(_NewsStateLoadingFailed _value,
      $Res Function(_NewsStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as _NewsStateLoadingFailed));

  @override
  _NewsStateLoadingFailed get _value => super._value as _NewsStateLoadingFailed;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_NewsStateLoadingFailed(
      error: error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$_NewsStateLoadingFailed implements _NewsStateLoadingFailed {
  const _$_NewsStateLoadingFailed({@required this.error})
      : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'NewsState.loadingFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsStateLoadingFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$NewsStateLoadingFailedCopyWith<_NewsStateLoadingFailed> get copyWith =>
      __$NewsStateLoadingFailedCopyWithImpl<_NewsStateLoadingFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notLoaded(),
    @required Result loading(void Function() cancel),
    @required Result loaded(String country, List<Article> articles),
    @required Result loadingFailed(dynamic error),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loadingFailed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notLoaded(),
    Result loading(void Function() cancel),
    Result loaded(String country, List<Article> articles),
    Result loadingFailed(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailed != null) {
      return loadingFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notLoaded(_NewsStateNotLoaded value),
    @required Result loading(_NewsStateLoading value),
    @required Result loaded(_NewsStateLoaded value),
    @required Result loadingFailed(_NewsStateLoadingFailed value),
  }) {
    assert(notLoaded != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingFailed != null);
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notLoaded(_NewsStateNotLoaded value),
    Result loading(_NewsStateLoading value),
    Result loaded(_NewsStateLoaded value),
    Result loadingFailed(_NewsStateLoadingFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class _NewsStateLoadingFailed implements NewsState {
  const factory _NewsStateLoadingFailed({@required dynamic error}) =
      _$_NewsStateLoadingFailed;

  dynamic get error;
  _$NewsStateLoadingFailedCopyWith<_NewsStateLoadingFailed> get copyWith;
}
