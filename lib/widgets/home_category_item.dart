// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {

  final String title;
  final String welcome;
  final String subtitle;
  final String imageUrl;

  const HomeCategoryItem({
    Key? key,
    required this.title, 
    required this.welcome,
    required this.subtitle, 
    required this.imageUrl
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/category');
      },
      child: Container(
        height: 123,
        width: MediaQuery.of(context).size.width - (2*24),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                height: 102,
                decoration: BoxDecoration(
                  color: kkremColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children:[
                    SizedBox(
                      width: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          welcome,
                          style: blackAccentTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          title,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            subtitle,
                          style: greyTextStyle.copyWith(
                            fontSize: 11,
                            fontWeight: semiBold,
                          ),
                          ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
              Image.asset(
                imageUrl,
                height: 200,
                ),
          ],
        )
      ),
    );
  }
}