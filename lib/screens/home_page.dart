import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery/screens/widgets/carousel_container.dart';
import 'package:delivery/screens/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<CarouselContainer> lsCarousel = [
    const CarouselContainer(),
    const CarouselContainer(),
    const CarouselContainer()
  ];

  List<Widget> buttons = [];

  List<CategoryItem> lsCategoryItem = [
    CategoryItem(
      asset: './lib/assets/hamburguer.png',
      name: 'Hamburguers',
    ),
    CategoryItem(
      asset: './lib/assets/potato.png',
      name: 'Potatos',
    ),
    CategoryItem(
      asset: './lib/assets/sundae.png',
      name: 'Sundae',
    ),
    CategoryItem(
      asset: './lib/assets/meal.png',
      name: 'Happy Meal',
    )
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFDB0007),
                  Color(0xFFfcca0f),
                  Colors.white,
                  Colors.white
                ],
                stops: [0.2, 0.25, 0.2, 1.0],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.10,
                        size.width * 0.10,
                        size.width * 0.10,
                        size.width * 0.01),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: size.width * 0.1,
                                child: Image.asset('lib/assets/mc.png')),
                            const Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined,
                                      color: Colors.white),
                                  Text('Pato Branco, Paraná',
                                      style: TextStyle(color: Colors.white)),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFFfcca0f),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: 'hello, what do you want to order?',
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: Icon(Icons.search),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                    child: CarouselSlider(
                      items: lsCarousel
                          .map((e) => Center(
                                child: e,
                              ))
                          .toList(),
                      options: CarouselOptions(
                        initialPage: 0,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                      ),
                    ),
                  ),
                  carouselIndicator(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.10,
                          size.width * 0.05,
                          size.width * 0.10,
                          size.width * 0.10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('category',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          // SizedBox(
                          //   height: size.height * 0.2,
                          //   child: ListView.builder(
                          //     scrollDirection: Axis.horizontal,
                          //     itemCount: lsCategoryItem.length,
                          //     itemBuilder: (context, index) {
                          //       CategoryItem item = lsCategoryItem[index];
                          //       return SizedBox(
                          //         width: 100.0,
                          //         child: Column(
                          //           children: [item],
                          //         ),
                          //       );
                          //     },
                          //   ),
                          // ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  carouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < lsCarousel.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == currentPage ? 7 : 5,
            width: i == currentPage ? 7 : 5,
            decoration: BoxDecoration(
                color: i == currentPage ? const Color(0xFFDB0007) : Colors.grey,
                shape: BoxShape.circle),
          )
      ],
    );
  }
}
