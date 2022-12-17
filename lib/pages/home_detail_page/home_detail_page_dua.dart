// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/review_item.dart';

class DetailPageDua extends StatefulWidget {
  const DetailPageDua({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPageDua> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;
  bool isShowReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      extendBody: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image_background.png',
          ),
          Container(
            margin: EdgeInsets.only(top: 95),
            child: Image.asset(
              'assets/images/bubur_detail2_item$currentIndex.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
                border: Border.all(
                  color: kLineDarkColor,
                ),
              ),
              child: Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.95,
              builder: (BuildContext build, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: NotificationListener(
                    onNotification: (Notification notif) {
                      if (notif is ScrollEndNotification) {
                        if (notif.metrics.minScrollExtent == -1.0) {
                          setState(() {
                            isExpand = true;
                          });
                        } else {
                          setState(() {
                            isExpand = false;
                            isShowReview = false;
                          });
                        }
                      }
                      return true;
                    },
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Center(
                              child: Container(
                                width: 30,
                                height: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: kLineDarkColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nasi Uduk',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  'Rp 15.000',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bubur Gowes',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 50,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Row(
                                    children: [
                                      colorIndicator(Color(0xff335837), 0),
                                      colorIndicator(Color(0xff762334), 1),
                                      // colorIndicator(Color(0xff757477), 2),
                                      // colorIndicator(Color(0xff29282C), 3),
                                      // colorIndicator(Color(0xffECE9DA), 4),
                                    ],
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInsets.only(
                                      left: indicatorMargin,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: indicatorColor,
                                      border: Border.all(
                                        width: 3,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            isShowReview
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Review',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 24,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                      // ignore: prefer_const_constructors
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewItem(
                                        name: 'Lydia Clayton',
                                        imageUrl: 'assets/images/image_reviewer1.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/images/image_product_list1.png',
                                          'assets/images/image_product_list2.png',
                                          'assets/images/image_product_list3.png',
                                        ],
                                      ),
                                      ReviewItem(
                                        name: 'Audra Still',
                                        imageUrl: 'assets/images/image_reviewer2.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/images/image_product_list3.png',
                                          'assets/images/image_product_list4.png',
                                        ],
                                      ),
                                      ReviewItem(
                                        name: 'Joan Gray',
                                        imageUrl: 'assets/images/image_reviewer3.png',
                                        review:
                                            'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial...',
                                        items: [
                                          'assets/images/image_product_list2.png',
                                          'assets/images/image_product_list3.png',
                                        ],
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: isShowReview
          ? null
          : isExpand
              ? Container(
                  width: double.infinity,
                  height: 315,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kWhiteColor.withOpacity(0.5),
                        kWhiteColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isShowReview = true;
                          });
                        },
                        child: Text(
                          'See More',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kGreyColor,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: kWhiteGreyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/icon_cart.png',
                            width: 24,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 56,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: kBlackColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Text(
                              'Buy Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 70);
          currentIndex = index + 1;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}