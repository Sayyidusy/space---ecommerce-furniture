// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/product_list_item.dart';
import 'package:space/widgets/skeleton_item.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {

  bool isLoading = true;
  bool isShowGrid = true;

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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
         appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhitebgColor,
            elevation: 1,
            title: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                GestureDetector(
                  onTap: (){
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
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search Furniture'
                            ),
                        ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.close,color: kGreyColor,)
                    ],
                   ),
                    ),
                   ), 
                   SizedBox(
                    width: 18,
                   ),
                    Image.asset(
                      'assets/images/icon_filter.png',
                    width: 24,)
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            bottom: TabBar(
              indicatorColor: kBlackAccentColor,
              labelColor: kBlackAccentColor,
              isScrollable: true,
              tabs: [
              Tab(
                text: 'Bubur',
              ),
              Tab(
                text: 'Nasi',
              ),
              Tab(
                text: 'Indomie',
              ),
              Tab(
                text: 'Gorengan',
              ),
              Tab(
                text: 'Minuman',
              ),
              
            ],
            ),
          ),
         ),
         body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
          ],
         ),
         ),
    );

  }

  Widget buildBody(){
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ) ,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Result for : bubur ayam',
              style: blackAccentTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
               setState(() {
                  isShowGrid = !isShowGrid;
               });
              },
              child: Image.asset(
                isShowGrid ? 'assets/images/icon_list.png' : 'assets/images/icon_grid.png' ,
                width: 24,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
          ),
         isLoading 
          ? buildLoading() 
          : isShowGrid 
          ? buildGrid()
          : buildList(),
          // buildGrid(),
          // buildList(),
      ],
    );
  }

  Widget buildLoading(){
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
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
      children: [
        ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: true
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: false
          ),

          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: false
          ),
          ProductGridItem(
          title: 'Bubur ayam', 
          imageUrl: 'assets/images/bubur_search.png', 
          price: 17, 
          isWishList: false
          ),
          
      ],
    );
  }

  Widget buildList(){
    return Column(
      children: [
        // 6.28
            ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
             ProductListItem(
            title: 'Bubur Ayam', 
            price: 17, 
            imageUrl: 'assets/images/bubur_search.png'
            ),
            
            
    ],
    );
  }
}