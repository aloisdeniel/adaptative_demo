import 'package:adaptative_demo/services/news_api.dart';
import 'package:adaptative_demo/state/store.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.notLoaded() = _NewsStateNotLoaded;
  const factory NewsState.loading({
    @required Canceller cancel,
  }) = _NewsStateLoading;
  const factory NewsState.loaded({
    @required String country,
    @required List<Article> articles,
  }) = _NewsStateLoaded;
  const factory NewsState.loadingFailed({@required dynamic error}) =
      _NewsStateLoadingFailed;
}
