import 'package:flutter/material.dart';
import 'package:news/layout/home_screen.dart';
import 'package:news/screens/settings.dart';
import 'package:news/screens/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/shared/network/provider/my_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return MaterialApp(
      locale: Locale(provider.language),
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),

        HomeScreen.routeName:(context)=>HomeScreen(),
        Settings.routeName:(context)=>Settings(),


      },
    );
  }
}
