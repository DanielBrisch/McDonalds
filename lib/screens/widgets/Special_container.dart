import 'package:flutter/material.dart';

class SpecialContainer extends StatefulWidget {
  String? asset;
  String? name;
  String? price;
  SpecialContainer(
      {super.key,
      required this.asset,
      required this.name,
      required this.price});

  @override
  State<SpecialContainer> createState() => _SpecialContainerState();
}

class _SpecialContainerState extends State<SpecialContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 100, child: Image.asset(widget.asset!)),
          Text(widget.name!),
          Text(widget.price!)
        ],
      ),
    );
  }
}
