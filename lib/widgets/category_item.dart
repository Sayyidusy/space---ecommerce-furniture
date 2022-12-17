// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class CategoryItem  extends StatelessWidget {

  final String title;
  final String imageUrl;
 
  const CategoryItem ({Key? key,

  required this.title, 
  required this.imageUrl,           
  
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
              ),
          ),
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            left: 35
            ),
            child: Column(
              children: [
                Container(
                  width: 58,
                  height: 58,
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
                SizedBox(
                  height: 2,
                ),
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
              
            ),
        ),
      ),
    );
  }
}