// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
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
                'Chair',
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
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/images/icon_filter.png',
                width: 24,
              ),
                
            ],
          ),
        ),
        ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 20,
          ),
          HomeCategoryItem(
              welcome: '.',
              title: 'Minimalis Chair', 
              subtitle: "Chair", 
              imageUrl: 'assets/images/image_product_category1.png'
           ),
          SizedBox(
            height: 24,
          ),

          Wrap(
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
    ),
        ],
      ),
    );
  }
}