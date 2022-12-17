// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {

  final String title;
  final String imageUrl;
  final int price;
  final bool isWishList ;

  const ProductGridItem({Key? key, 

  required this.title,
  required this.imageUrl,
  required this.price,
  required this.isWishList,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
        ),
        child: Container(
          width: (MediaQuery.of(context).size.width - 85) / 2,
          padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl, 
                ),
                   SizedBox(
                    height: 20,
                   ),
                     Text(title,
                      style: blackAccentTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                     ),
                   SizedBox(
                    height: 20,
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\Rp $price ',
                      style: blackAccentTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      ),
                   Image.asset(
                          isWishList ?
                          'assets/images/button_wishlist_active.png'
                          :'assets/images/button_wishlist.png',
                          width: 44,
                          ),
                   ],
                   ),

            ],
            ),
        ),
    );
  }
}