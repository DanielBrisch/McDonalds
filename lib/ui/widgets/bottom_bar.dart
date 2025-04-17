import 'package:delivery/app_routes.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: const Icon(
                Icons.home,
                color: Color(0xFFDB0007),
              ),
              onPressed: () {}),
          IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: const Icon(Icons.location_on), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, Routes.car);
              }),
        ],
      ),
    );
  }
}
