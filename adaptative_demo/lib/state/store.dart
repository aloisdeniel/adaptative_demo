import 'package:flutter/material.dart';

typedef T Update<T>(T previousState, dynamic action);

class Store<T> extends ChangeNotifier {
  Store({
    @required Update<T> update,
    @required T initialState,
  })  : this._state = initialState,
        _update = update;
  T _state;
  final Update<T> _update;
  T get state => _state;

  void dispatch(dynamic action) async {
    print('Dispatch: $action');
    if (action is AsyncAction<T>) {
      await for (var newState in action.execute(() => _state)) {
        if (newState != _state) {
          _state = newState;
          notifyListeners();
        }
      }
    } else {
      final newState = _update(_state, action);
      if (newState != _state) {
        _state = newState;
        notifyListeners();
      }
    }
  }
}

class AsyncAction<T> {
  final ExecuteAsync<T> _execute;
  const AsyncAction([this._execute]);
  Stream<T> execute(GetState<T> state) => _execute(state);
}

typedef Stream<T> ExecuteAsync<T>(GetState<T> state);

typedef T GetState<T>();

typedef void SetState<T>(T value);

typedef void Canceller();
