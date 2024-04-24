import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  String? asset;
  String? name;
  CategoryItem({super.key, required this.asset, required this.name});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        // boxShadow: [
        //   BoxShadow(
        //     // color: Colors.black.withOpacity(0.15),
        //     spreadRadius: 5,
        //     blurRadius: 6,
        //     offset: const Offset(0, 3),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 50, child: Image.asset(widget.asset!)),
          Text(widget.name!)
        ],
      ),
    );
  }
}
