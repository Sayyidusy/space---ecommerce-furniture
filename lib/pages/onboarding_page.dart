// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  int currentIndex = 0 ;
  CarouselController controller = CarouselController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kWhitebgColor ,
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: CarouselSlider(
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding_bubur3.png',
                   title: 'Murah Meriah',
                    subtitle: 'Bubur Gowes menyediakan sarapan \nuntuk anda dengan harga yang sangat\n murah meriah, sehingga rasa lapar anda\n terpenuhi dengan cukup.',
                    ),
                    OnboardingItem(
                  imageUrl: 'assets/images/onboarding_bubur2.png',
                   title: 'Menu Menarik',
                    subtitle: 'Banyak sekali pilihan menu makanan di \nBubur Gowes, sehingga bisa pilih\n sesuka anda.',
                    ),
                    OnboardingItem(
                  imageUrl: 'assets/images/onboarding_bubur1.png',
                   title: 'Pesan Antar',
                    subtitle: 'Bubur Gowes juga menyediakan layanan \npesan antar, sehingga anda tidak perlu\n repot-repot mengantri.',
                    ),
                    
              ], 
                options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: currentIndex,
                  onPageChanged: (index, _ ){
                    setState(() {
                      currentIndex = index;
                    });
                  },
              ),
              carouselController: controller,
            ),
          ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                     Navigator.pushNamed(context,
                      '/sign-In');
                    // controller.animateToPage(2);
                  }, 
                  child: Text(
                    "SKIP",
                    style: blackAccentTextStyle.copyWith(fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      color: currentIndex == 0? kBlackAccentColor : kLineDarkColor,
                      ),
                      ),
                       SizedBox(width: 10,
                      ),
                      
                      Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      color:  currentIndex == 1? kBlackAccentColor : kLineDarkColor,
                      ),
                      ),
                       SizedBox(width: 10,
                      ),

                      Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, 
                      color:  currentIndex == 2? kBlackAccentColor : kLineDarkColor,
                      ),
                      ),
                        SizedBox(width: 10,
                      ),

                ],
                ),
                 TextButton(
                  onPressed: (){
                    if(currentIndex == 2){
                      Navigator.pushNamed(context, '/sign-In');
                    }else{
                      controller.nextPage();
                    }
                    controller.nextPage();
                 }, 
                  child: Text(
                    "NEXT",
                    style: blackAccentTextStyle.copyWith(fontSize: 18,
                    ),
                  ),
                ),
              ],
              ),
            ),
            SizedBox(
              height:29,
              ),
        ],
        ),
       
    );
  }
}