import 'package:delivery/app_routes.dart';
import 'package:flutter/material.dart';

class SpecialContainer extends StatefulWidget {
  final String? asset;
  final String? name;
  final String? price;
  final double? left;
  const SpecialContainer({
    super.key,
    required this.asset,
    required this.name,
    required this.price,
    this.left,
  });

  @override
  State<SpecialContainer> createState() => _SpecialContainerState();
}

class _SpecialContainerState extends State<SpecialContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.selected);
      },
      child: Padding(
        padding: EdgeInsets.only(left: widget.left ?? 15, top: 15),
        child: Container(
          height: size.height * 0.22,
          width: size.width * 0.365,
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
            children: [
              SizedBox(
                  height: size.height * 0.14,
                  width: size.width * 0.3,
                  child: Image.asset(widget.asset!)),
              Text(
                widget.name!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              SizedBox(height: size.height * 0.005),
              Text(
                'R\$ ${widget.price!}',
                style: const TextStyle(
                    color: Color(0xFFfcca0f),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
