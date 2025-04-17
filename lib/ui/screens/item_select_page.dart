import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemSelectPage extends StatefulWidget {
  const ItemSelectPage({super.key});

  @override
  State<ItemSelectPage> createState() => _ItemSelectPageState();
}

class _ItemSelectPageState extends State<ItemSelectPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: const Color(0xFFDB0007),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFFDB0007),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: size.height * 0.57,
              width: size.width * 1,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 58, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Happy Meal Combo',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 25),
                          ),
                          const Text(
                            '\$ 24.99',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFfcca0f),
                                fontSize: 25),
                          ),
                          const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Add notes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(Optional)",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(height: size.height * 0.015),
                          const TextField(
                            decoration: InputDecoration(
                                hintText: 'without cheese and tomatoes',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Color.fromARGB(88, 206, 206, 206),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Center(
                            child: SizedBox(
                              width: size.width * 0.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            88, 206, 206, 206),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xFFDB0007),
                                    ),
                                  ),
                                  const Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            88, 206, 206, 206),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Color(0xFFDB0007),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            88, 206, 206, 206),
                                      )),
                                  child: const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Color(0xFFfcca0f),
                                  )),
                              SizedBox(
                                width: size.width * 0.020,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          const Color(0xFFDB0007)),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Order now',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          ),
                        ],
                      ))),
            ),
          ),
          Positioned(
              top: 15,
              child: SizedBox(
                  width: size.width * 1,
                  height: size.height * 0.40,
                  child: Image.asset('./lib/assets/combo2.png'))),
        ],
      ),
    );
  }
}
