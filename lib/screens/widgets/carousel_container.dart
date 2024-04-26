import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: const RadialGradient(
          center: Alignment.bottomRight,
          radius: 0.76,
          colors: [
            Color(0xFFDB0007),
            Color(0xFFfcca0f),
          ],
          stops: [1, 1],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text(
                        'Breakfast',
                        style: TextStyle(
                            color: Color(0xFFDB0007),
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        textAlign: TextAlign.start,
                        'Start Your Day Right Discover the perfect\nfirst meal, nutritious, energizing\nJoin Us for a Delightful\nMorning!',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27, right: 140),
                      child: SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.04,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFDB0007))),
                            onPressed: () {},
                            child: const Text(
                              'Order now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 137, top: 30),
                  child: SizedBox(
                      height: size.height * 0.215,
                      child: Image.asset('./lib/assets/break.png'))),
            ],
          ),
        ],
      ),
    );
  }
}
