// ignore_for_file: must_be_immutable

import 'package:cavz/utils/colors.dart';
import 'package:cavz/widgets/car_card.dart';
import 'package:cavz/widgets/home_card.dart';
import 'package:cavz/widgets/upper_ui_component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = PageController();

  int currentIndex = 0;
  List<String> image = [
    'https://images.template.net/108089/free-professional-car-banner-template-edit-online.jpg',
    'https://images.template.net/108088/car-advertisement-banner-template-edit-online.jpg',
    'https://images.template.net/108089/free-professional-car-banner-template-edit-online.jpg',
  ];
  List<String> cardimage = [
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cars-sale-design-template-f112a176368db0ce37ee9971206572a5_screen.jpg?ts=1671180447',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRodhb2dfU1-l84VQO7Hg5sNyL1tf-62L7VAVvvjguJ35kBiGMSI5CYDbLI3sBJgWbxMnw&usqp=CAU',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/valentines-car-sale-flyer-design-template-7f324049cbdb1aa81a0dcbb6072d9e1c_screen.jpg?ts=1675756812',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/car-sale-design-template-c78cbcb6c011a5d8e46b5d2983f25d92_screen.jpg?ts=1677636022',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW6UyOC9MNiQuK3M7SElr2xnrrQTz1uyVeW0CBX5uu0ojxeiObyJe0hA3sE7YHz-VaJxI&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UpperUIComponent(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Rent for',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    CarCard(
                      text: 'Me',
                      imageUrl: 'assets/images/car1-removebg-preview.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CarCard(
                      text: 'My Company',
                      imageUrl: 'assets/images/car2-removebg-preview.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    CarCard(
                        text: 'Weddings',
                        imageUrl: 'assets/images/car3-removebg-preview.png'),
                    SizedBox(
                      width: 10,
                    ),
                    CarCard(
                      text: 'Events',
                      imageUrl: 'assets/images/car4-removebg-preview.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 170,
                width: double.infinity,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 170,
                      width: 360,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    activeDotColor: textColor, dotHeight: 8, dotWidth: 8),
                controller: controller,
                count: 3,
              ),
              SizedBox(
                height: 235,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 220,
                        width: 133,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  cardimage[index],
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: SizedBox(
            height: 100,
            width: 100,
            child: ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(kwhiteColor, BlendMode.srcIn),
                child: Image.asset('assets/images/robo-removebg-preview.png'))),
      ),
    );
  }
}
