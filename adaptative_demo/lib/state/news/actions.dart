import 'package:adaptative_demo/state/news/state.dart';
import 'package:adaptative_demo/state/state.dart';
import 'package:adaptative_demo/state/store.dart';
import 'package:flutter/widgets.dart';

abstract class NewsAction {
  factory NewsAction.refresh({@required String country}) => NewsActionRefresh(
        country: country,
      );
}

class NewsActionRefresh extends AsyncAction<ApplicationState>
    implements NewsAction {
  NewsActionRefresh({@required this.country});
  final String country;

  bool _isCancelled = false;

  void cancel() {
    _isCancelled = true;
  }

  @override
  Stream<ApplicationState> execute(GetState<ApplicationState> get) async* {
    final state = get();

    // Cancelling previous refresh
    state.news.maybeMap(
      loading: (state) => state.cancel(),
      orElse: () {},
    );

    print('Starting $country update...');

    yield state.copyWith(
      news: NewsState.loading(cancel: cancel),
    );
    try {
      if (!_isCancelled) {
        final result = await state.api.getTopHeadlines('general', country);
        if (!_isCancelled)
          yield state.copyWith(
            news: NewsState.loaded(
              country: country,
              articles: result.articles,
            ),
          );
      }
    } catch (e) {
      if (!_isCancelled)
        yield state.copyWith(
          news: NewsState.loadingFailed(
            error: e,
          ),
        );
    }
  }

  @override
  String toString() {
    return 'NewsAction.refresh(country: $country)';
  }
}
