// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitebgColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 1,
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
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
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                   ),
                   child:Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        textInputAction: TextInputAction.go,
                        onFieldSubmitted: (value) {
                          Navigator.pushNamed(context, '/search-result');
                          
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: 'Mau sarapan apa pagi ini?'
                          ),
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.close,color: kGreyColor,)
                  ],
                 ),
                  ),
                 ), 
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
          style: blackAccentTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
          ),
          SizedBox(
            height: 20,
          ),

            ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search1.png'
            ),
            
            ProductListItem(
            title: 'Nasi Uduk', 
            price: 15, 
            imageUrl: 'assets/images/bubur_search2.png'
            ),

             ProductListItem(
            title: 'Pastel', 
            price: 8, 
            imageUrl: 'assets/images/bubur_search3.png'
            ),

             ProductListItem(
            title: 'Risol', 
            price: 5, 
            imageUrl: 'assets/images/bubur_search4.png'
            ),
        ],
      )
    );
  }
}