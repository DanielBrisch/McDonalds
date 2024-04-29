import 'package:delivery/screens/widgets/car_Container_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFfcca0f),
          iconTheme: const IconThemeData(color: Color(0xFFDB0007)),
          title: const Text(
            'Your order',
            style: TextStyle(
                color: Color(0xFFDB0007),
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Positioned.fill(
                child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.12,
                width: size.width * 1,
                decoration: const BoxDecoration(
                    color: Color(0xFFfcca0f),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
              ),
            )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CarItemContainer(
                      assets: './lib/assets/combo1.png',
                      name: 'Big Mac Beef Rasher',
                    ),
                    CarItemContainer(
                        assets: './lib/assets/combo2.png',
                        name: 'Happy Meal combo'),
                    CarItemContainer(
                      assets: './lib/assets/combo3.png',
                      name: 'lunch with coke and fries',
                    ),
                    CarItemContainer(
                      assets: './lib/assets/combo4.png',
                      name: 'Dinner combo',
                    ),
                    CarItemContainer(
                      assets: './lib/assets/meal.png',
                      name: 'Happy Meal',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total itens',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                '\$ 200.00',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'freight',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                'FREE',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text('\$ 150.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          SizedBox(
                            width: size.width * 1,
                            height: size.height * 0.06,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFFDB0007)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Order now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ]),
        ));
  }
}
