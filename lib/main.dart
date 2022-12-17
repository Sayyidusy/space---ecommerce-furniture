// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:space/pages/category_page.dart';
import 'package:space/pages/detail_page.dart';
import 'package:space/pages/home_detail_page/home_detail_page_dua.dart';
import 'package:space/pages/home_detail_page/home_detail_page_empat.dart';
import 'package:space/pages/home_detail_page/home_detail_page_satu.dart';
import 'package:space/pages/home_detail_page/home_detail_page_tiga.dart';
import 'package:space/pages/home_page.dart';
import 'package:space/pages/onboarding_page.dart';
import 'package:space/pages/profile_page.dart';
import 'package:space/pages/register_page.dart';
import 'package:space/pages/search_page.dart';
import 'package:space/pages/search_result_page.dart';
import 'package:space/pages/sign_in_page.dart';
import 'package:space/pages/splash_page.dart';
import 'package:space/pages/wishlist_page.dart';


void main(){
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            '/onboarding': (context) => OnboardingPage(),
            '/sign-In':(context) => SignInPage(),
            '/register': (context) => RegisterPage(),
            '/home' : (context) => HomePage(),
            '/search': (context) => SearchPage(),
            '/search-result' : (context) => SearchResultPage(),
            '/category' : (context) => CategoryPage(),
            '/wishlist' :(context) => WishListPage(),
            '/profile' : (context) => ProfilePage(),
            '/detail' : (context) => DetailPage(),
            '/detailDua' : (context) => DetailPageDua(),
            '/detailTiga' : (context) => DetailPageTiga(),
            '/detailEmpat' : (context) => DetailPageEmpat(),

          },
    );
  }
}