import 'package:adaptative_demo/state/state.dart';
import 'package:adaptative_demo/state/store.dart';
import 'package:connectivity/connectivity.dart';

abstract class ConnectivityAction {
  factory ConnectivityAction.start() => ConnectivityActionStart();
}

class ConnectivityActionStart extends AsyncAction<ApplicationState>
    implements ConnectivityAction {
  ConnectivityActionStart();

  @override
  Stream<ApplicationState> execute(GetState<ApplicationState> get) async* {
    final connectivity = Connectivity();
    final initialState = await (connectivity.checkConnectivity());
    yield get().copyWith(connectivity: initialState);
    await for (var stateUpdate in connectivity.onConnectivityChanged) {
      yield get().copyWith(connectivity: stateUpdate);
    }
  }

  @override
  String toString() {
    return 'ConnectivityAction.start()';
  }
}
