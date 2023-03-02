import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shape_platform/ui/auth/get_users.dart';
import 'package:shape_platform/ui/auth/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'getUser': (context) => getUser(),
        //'addUser': (context) => postUser(),
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      //home: TextWidget(),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String? title;
  const TextWidget({super.key, this.title});
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    return Text(t.hello);
  }
}
