// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItemDua  extends StatelessWidget {

  final String title;
  final String imageUrl;
  final int price;
  final bool isWishlist;


  const HomePopularItemDua ({Key? key,

  required this.title, 
  required this.imageUrl,           
  required this.price, 
  required this.isWishlist

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailDua');
      },
      child: Container(
        height: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
              ),
          ),
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(left: 24),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 180,
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(10),),
                  ),
                  child: Center(
                    child: Image.asset(
                      imageUrl,
                      width: 160,
                      ),
                      ),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      title,
                      style: blackAccentTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\Rp $price\.000',
                            style:blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                          ),
                          Image.asset(
                            isWishlist ?
                            'assets/images/button_wishlist_active.png'
                            :'assets/images/button_wishlist.png',
                            width: 44,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}