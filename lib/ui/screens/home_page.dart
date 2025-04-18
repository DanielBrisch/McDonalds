import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery/app_routes.dart';
import 'package:delivery/ui/widgets/special_container.dart';
import 'package:delivery/ui/widgets/bottom_bar.dart';
import 'package:delivery/ui/widgets/carousel_container.dart';
import 'package:delivery/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarouselContainer> lsCarousel = [
    const CarouselContainer(),
    const CarouselContainer(),
    const CarouselContainer()
  ];

  List<CategoryItem> lsCategoryItem = [
    const CategoryItem(
      asset: './lib/assets/meal.png',
      name: 'Happy Meal',
    ),
    const CategoryItem(
      asset: './lib/assets/potato.png',
      name: 'Potatos',
    ),
    const CategoryItem(
      asset: './lib/assets/sundae.png',
      name: 'Sundae',
    ),
    const CategoryItem(
      asset: './lib/assets/hamburguer.png',
      name: 'Hamburguers',
    ),
  ];

  List<SpecialContainer> lsSpecial = [
    const SpecialContainer(
      asset: './lib/assets/combo2.png',
      name: 'Happy Meal combo',
      price: '24.99',
      left: 15,
    ),
    const SpecialContainer(
      asset: './lib/assets/combo3.png',
      name: 'hamburguer combo',
      price: '13.50',
      left: 15,
    ),
    const SpecialContainer(
      asset: './lib/assets/combo4.png',
      name: 'dinner time',
      price: '15.00',
      left: 15,
    ),
    const SpecialContainer(
      asset: './lib/assets/combo1.png',
      name: 'grandiose',
      price: '17.40',
      left: 15,
    ),
    const SpecialContainer(
      asset: './lib/assets/meal.png',
      name: 'Happy Meal',
      price: '12.99',
      left: 15,
    ),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)))),
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
                          size.width * 0.02,
                          size.width * 0.10,
                          size.width * 0.04),
                      child: const Text('Category',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 25)),
                    ),
                    SizedBox(
                      height: size.height * 0.13,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: lsCategoryItem.length,
                        itemBuilder: (context, index) {
                          CategoryItem item = lsCategoryItem[index];
                          return SizedBox(
                            height: size.height * 0.2,
                            width: size.width * 0.3,
                            child: Column(
                              children: [item],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(size.width * 0.10,
                          size.width * 0.02, size.width * 0.10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Special Offer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25)),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.special);
                                },
                                child: const Text(
                                  'See it all',
                                  style: TextStyle(
                                    color: Color(0xFFDB0007),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.02),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFDB0007),
                                size: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.28,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: lsSpecial.length,
                        itemBuilder: (context, index) {
                          SpecialContainer item = lsSpecial[index];
                          return Stack(children: [
                            Column(
                              children: [item],
                            ),
                            Positioned(
                              top: size.height * 0.22,
                              left: size.height * 0.033,
                              child: SizedBox(
                                width: size.width * 0.302,
                                height: size.height * 0.035,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          const Color(0xFFDB0007)),
                                    ),
                                    onPressed: () {},
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.add_circle_rounded,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Text('Add',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14))
                                      ],
                                    )),
                              ),
                            )
                          ]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        bottomNavigationBar: const BottomBar());
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
