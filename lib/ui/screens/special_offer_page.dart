import 'package:delivery/ui/widgets/special_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SpecialOfferPage extends StatefulWidget {
  const SpecialOfferPage({super.key});

  @override
  State<SpecialOfferPage> createState() => _SpecialOfferPageState();
}

class _SpecialOfferPageState extends State<SpecialOfferPage> {
  List<SpecialContainer> lsSpecial = [
    const SpecialContainer(
      asset: './lib/assets/combo2.png',
      name: 'Happy Meal combo',
      price: '24.99',
    ),
    const SpecialContainer(
      asset: './lib/assets/combo3.png',
      name: 'hamburguer combo',
      price: '13.50',
    ),
    const SpecialContainer(
      asset: './lib/assets/combo4.png',
      name: 'dinner time',
      price: '15.00',
    ),
    const SpecialContainer(
      asset: './lib/assets/combo1.png',
      name: 'grandiose',
      price: '17.40',
    ),
    const SpecialContainer(
      asset: './lib/assets/meal.png',
      name: 'Happy Meal',
      price: '12.99',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFFDB0007),
        ),
        title: const Text(
          'Special Offer',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    hintText: 'look for your special menu',
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Color.fromARGB(88, 206, 206, 206),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      item(
                        size,
                        const SpecialContainer(
                          asset: './lib/assets/combo2.png',
                          name: 'Happy Meal combo',
                          price: '24.99',
                          left: 0,
                        ),
                      ),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo3.png',
                            name: 'hamburguer combo',
                            price: '13.50',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo4.png',
                            name: 'dinner time',
                            price: '15.00',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo1.png',
                            name: 'grandiose',
                            price: '17.40',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/meal.png',
                            name: 'Happy Meal',
                            price: '12.99',
                            left: 0,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo3.png',
                            name: 'hamburguer combo',
                            price: '13.50',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo4.png',
                            name: 'dinner time',
                            price: '15.00',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo1.png',
                            name: 'grandiose',
                            price: '17.40',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/meal.png',
                            name: 'Happy Meal',
                            price: '12.99',
                            left: 0,
                          )),
                      item(
                          size,
                          const SpecialContainer(
                            asset: './lib/assets/combo2.png',
                            name: 'Happy Meal combo',
                            price: '24.99',
                            left: 0,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox item(Size size, SpecialContainer item) {
    return SizedBox(
      height: size.height * 0.26,
      child: Stack(
        children: [
          item,
          Positioned(
            top: size.height * 0.22,
            left: size.height * 0.017,
            child: SizedBox(
              width: size.width * 0.302,
              height: size.height * 0.035,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xFFDB0007)),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_circle_rounded,
                        color: Colors.white,
                        size: 17,
                      ),
                      Text('Add',
                          style: TextStyle(color: Colors.white, fontSize: 14))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
