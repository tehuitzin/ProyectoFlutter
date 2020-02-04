

import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en'), // English
          const Locale('es'), // Españos
          const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
          // ... other locales the app supports
        ],
              //home: HomePage()

        //configuracion de rurtas de alert
        initialRoute:'/',
        routes:getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings){

          print('ruta llamada {$settings.name}');

          return MaterialPageRoute(
            builder: (BuildContext context )=>AlertPage()

    );
  },
    );
}
}