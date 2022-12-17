// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem({Key? key}) : super(key: key);

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
              children: [
                Shimmer.fromColors(
                  // ignore: sort_child_properties_last
                  child: Container(
                    width: double.infinity,
                    height: 122,
                    color: kLineDarkColor,
                  ),
                   baseColor: kLineDarkColor, 
                   highlightColor: kWhiteGreyColor
                   ),
                   SizedBox(height: 20,
                   ),
                     Shimmer.fromColors(
                  // ignore: sort_child_properties_last
                    child: Container(
                    width: double.infinity,
                    height: 22,
                    color: kLineDarkColor,
                  ),
                   baseColor: kLineDarkColor, 
                   highlightColor: kWhiteGreyColor
                   ),
                   SizedBox(
                    height: 20,
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Shimmer.fromColors(
                  // ignore: sort_child_properties_last
                    child: Container(
                    width: 62,
                    height: 25,
                    color: kLineDarkColor,
                  ),
                   baseColor: kLineDarkColor, 
                   highlightColor: kWhiteGreyColor
                   ),
                   Shimmer.fromColors(
                  // ignore: sort_child_properties_last
                    child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                       color: kLineDarkColor,
                    ),
                   
                  ),
                   baseColor: kLineDarkColor, 
                   highlightColor: kWhiteGreyColor
                   ),
                   ],
                   ),

            ],
            ),
        ),
    );
  }
}