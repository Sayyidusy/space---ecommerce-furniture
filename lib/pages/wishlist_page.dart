// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/skeleton_item.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {

   bool isLoading = true;
  // bool isShowGrid = true;

  @override
  void initState() {
    
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 1,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap:() {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'WishList',
                style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/images/icon_search.png',
                width: 24,
              ),
              // Padding(padding: EdgeInsets.only(left: 20))
            ],
          ),
        ),
        ),
     bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: kWhiteColor,
        onTap: (value){
          if (value == 0){
            Navigator.pushNamed(context, '/home');
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
           ),
            label: 'home',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_wishlist.png',
              width: 24,
              height: 24,
              color: kBlueColor,
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 20,),
          isLoading ? buildLoading() : buildGrid(),
        ],
      )
    );
  }

  Widget buildLoading(){
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid(){
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid1.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid2.png', 
          price: 34, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid3.png', 
          price: 34, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid4.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_review2.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_review4.png', 
          price: 34, 
          isWishList: true
          ),

          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid1.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid2.png', 
          price: 34, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid3.png', 
          price: 34, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_grid4.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_review2.png', 
          price: 34, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Poan Chair', 
          imageUrl: 'assets/images/image_product_review4.png', 
          price: 34, 
          isWishList: true
          ),
          
      ],
    );
  }
}