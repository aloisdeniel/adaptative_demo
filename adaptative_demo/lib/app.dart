import 'package:adaptative_demo/services/news_api.dart';
import 'package:adaptative_demo/services/news_api_key.dart';
import 'package:adaptative_demo/state/connectivity/actions.dart';
import 'package:adaptative_demo/state/state.dart';
import 'package:adaptative_demo/state/store.dart';
import 'package:adaptative_demo/state/update.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'layout/home/layout.dart';
import 'localization/delegate.dart';

class AdaptativeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locale = DevicePreview.locale(context);
    return ChangeNotifierProvider(
      create: (context) => Store<ApplicationState>(
        initialState: ApplicationState(
          api: NewsApi(newsApiKey),
        ),
        update: update,
      )..dispatch(ConnectivityAction.start()),
      child: MaterialApp(
        title: 'Adaptative Demo',
        builder: DevicePreview.appBuilder,
        locale: locale,
        supportedLocales: [
          Locale('fr', 'FR'),
          Locale('en', 'US'),
          Locale('ar', 'EG'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          const AdaptativeLocalizationDelegate(),
        ],
        home: HomeLayout(),
      ),
    );
  }
}
