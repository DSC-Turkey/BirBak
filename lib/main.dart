import 'package:birbak/ui/afet_detay_screen/afet_detay_screen_view.dart';
import 'package:birbak/ui/auth_screen/auth_screen_view.dart';
import 'package:birbak/ui/detail_screen/detail_secreen_view.dart';
import 'package:birbak/ui/home_screen/home_page_screen_view.dart';
import 'package:birbak/ui/kisi_detay_screen/kisi_detay_screen_view.dart';
import 'package:birbak/ui/register_screen/register_screen_view.dart';
import 'package:birbak/ui/sign_in_screen/sign_in_screen_view.dart';
import 'package:birbak/ui/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BirBak - Birlik Vakti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => SplashScreen(),
        AuthTypeSelector.routeNames: (_) => AuthTypeSelector(),
        HomePageScreenView.routeNames: (_) => HomePageScreenView(),
        AfetDetayScreenView.routeNames: (_) => AfetDetayScreenView(),
        DetailsScreenView.routeNames: (_) => DetailsScreenView(),
        KisiDetayScreenView.routeNames: (_) => KisiDetayScreenView(),
        RegisterPage.routeNames: (_) => RegisterPage(),
        SignInPage.routeNames: (_) => SignInPage(),
      },
    );
  }
}