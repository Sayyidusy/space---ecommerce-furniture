// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/category_item.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/home_pooular_item/home_popular_item_dua.dart';
import 'package:space/widgets/home_pooular_item/home_popular_item_satu.dart';
import 'package:space/widgets/home_pooular_item/home_popular_item_tiga.dart';
import 'package:space/widgets/home_pooular_item/home_pupular_item_empat.dart';
import 'package:space/widgets/home_popular_item.dart';
import 'package:space/widgets/home_pupular_item_dua.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitebgColor,
      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: kWhiteColor,
         onTap: (value){
          if (value == 1){
            Navigator.pushNamed(context, '/wishlist');
          }else if(value == 2){
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_home.png',
              width: 24,
              height: 24,
              color: kRedbgColor,
           ),
            label: 'home',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_cart.png',
              width: 24,
              height: 24,
           ),
           label: 'profile',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_wishlist.png',
              width: 24,
              height: 24,
           ),
           label: 'wishlist',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_profile.png',
              width: 24,
              height: 24,
           ),
           label: 'profile',
          ),

          

        ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image_background.png',
          ),
          ListView(
            //NOTE: Header/title
            children: [
            Container(
              margin: EdgeInsets.only(
                top:24,
                ),
                padding:  EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children:[
                  Image.asset(
                    'assets/images/logo1.png',
                     width: 53,
                     ),
                     SizedBox(
                      width: 8,
                     ),
                     Text(
                      'Bubur Gowes',
                      style: redbgTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                     ),
                     ),
                    Spacer(),
                    // Icon(Icons.notifications_active),
                    Image.asset(
                      'assets/images/bell.png',width: 25,
                      ),
                ],
                ),
            ),
             //NOTE: SearchBar
             GestureDetector(
              onTap:(){
                Navigator.pushNamed(context,'/search');
              },
               child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mau sarapan apa pagi Ini?',
                        style: greyTextStyle.copyWith(
                          fontSize:16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset('assets/images/icon_search.png',
                      width: 24,
                      color: kGreyColor,
                      ),
                  ],
                  ),
               ),
             ),
             // NOTE : CATEGORY,
             
             
             //NOTE: Category carousel
             Container(
              margin: EdgeInsets.only(
                top: 25
                ),
                child: CarouselSlider(
                  // ignore: prefer_const_literals_to_create_immutables
                  items: [
                    HomeCategoryItem(
                      welcome: 'Halo Selamat Pagi..',
                      title: 'Sayyidusy Syauqi A.', 
                      subtitle: "Belum sarapan ya? Ayo pesan sekarang!", 
                      imageUrl: 'assets/images/orang_home.png'
                      ),

                      HomeCategoryItem(
                      welcome: 'Sarapan Paling Favorit',
                      title: 'Bubur Ayam Spesial', 
                      subtitle: "Rp 15.000", 
                      imageUrl: 'assets/images/bubur_home3.png'
                      ),

                      HomeCategoryItem(
                      welcome : 'Menu Terbaru',
                      title   : 'Indomie Ayam Spesial', 
                      subtitle: "Rp 10.000", 
                      imageUrl: 'assets/images/bubur_home2.png'
                      ),
                  ],
                   options: CarouselOptions(
                    height: 140,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (value, _) {
                      setState(() {
                        categoryIndex = value;
                      });
                    } ,
                   ),
                  ),
             ),

             //NOTE : Carousel Indicator
             Container(
              margin: EdgeInsets.only(
                top:13,
                left: 24, 
                right: 24
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right:10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 0 ? kRedbgColor: kLineDarkColor,
                        ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right:10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 1 ? kRedbgColor: kLineDarkColor,
                        ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(
                        right:10
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 2 ? kRedbgColor: kLineDarkColor,
                        ),
                    ),
                  ],
                ),
             ),

              Container(
              margin: EdgeInsets.only(
                top: 30, 
                left: 24,
                right: 24
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category', 
                      style: blackAccentTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    ),
                    Text(
                      'Show All',style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                    ),
                  ],
                  ),
             ),

            //NOTE: Category item
             Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  
                  CategoryItem(
                    title: 'Bubur', 
                    imageUrl: 'assets/images/bubur_category1.png'
                    ),
                  
                  CategoryItem(
                    title: 'Nasi', 
                    imageUrl: 'assets/images/bubur_category2.png'
                    ),

                  CategoryItem(
                    title: 'Gorengan', 
                    imageUrl: 'assets/images/bubur_category3.png'
                    ),

                  CategoryItem(
                    title: 'Minuman', 
                    imageUrl: 'assets/images/bubur_category4.png'
                    ),
                  
                ],
              ) ,
             ),


             

             //NOTE: Popular section

             Container(
              margin: EdgeInsets.only(
                top: 24
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40)
                    ),
                    color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                      'Popular', 
                      style: blackAccentTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    ),
                    Text(
                      'Show All',style: blackTextStyle,
                    ),
                      ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 330,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            HomePopularItem(
                            title: 'Bubur Ayam ', 
                            imageUrl: 'assets/images/popular2.png', 
                            price: 17, 
                            isWishlist: true,
                            ),

                            HomePopularItemDua(
                            title: 'Nasi Uduk', 
                            imageUrl: 'assets/images/popular1.png', 
                            price: 15, 
                            isWishlist: false,
                            ),
                      
                             HomePopularItemTiga(
                            title: 'Pastel', 
                            imageUrl: 'assets/images/popular3.png', 
                            price: 8, 
                            isWishlist: false,
                            ),

                            HomePopularItemEmpat(
                            title: 'Risol', 
                            imageUrl: 'assets/images/popular4.png', 
                            price: 5, 
                            isWishlist: false,
                            ),
                          ],
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
             ),
            
          ],
          ),
        ],
       ),
    );
  }
}