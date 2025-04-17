import 'package:flutter/material.dart';

class CarContainerItem extends StatefulWidget {
  final String? assets;
  final String? name;
  const CarContainerItem({super.key, required this.assets, required this.name});

  @override
  State<CarContainerItem> createState() => CarContainerItemState();
}

class CarContainerItemState extends State<CarContainerItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                  width: 130, height: 80, child: Image.asset(widget.assets!)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(widget.name!,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w900)),
                  ),
                  SizedBox(
                    height: size.height * 0.023,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(88, 206, 206, 206),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFFDB0007),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.025,
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: size.width * 0.025,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(88, 206, 206, 206),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(
                                Icons.remove,
                                color: Color(0xFFDB0007),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Text('\$ 24.99',
                          style:
                              TextStyle(color: Color(0xFFfcca0f), fontSize: 18))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
