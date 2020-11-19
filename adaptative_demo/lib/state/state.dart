import 'package:adaptative_demo/services/news_api.dart';
import 'package:adaptative_demo/state/news/state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    @required NewsApi api,
    @Default(ConnectivityResult.mobile) ConnectivityResult connectivity,
    @Default(NewsState.notLoaded()) NewsState news,
  }) = _ApplicationState;
}
