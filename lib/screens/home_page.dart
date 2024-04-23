import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.10),
          child: Stack(children: [
            boxGradient(size),
            Column(children: [
              Column(
                children: [
                  Row(children: [
                    SizedBox(
                        width: size.width * 0.1,
                        child: Image.asset('./lib/assets/mc.png')),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            'Pato Branco, Paraná',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ]),
                  const TextField()
                ],
              )
            ])
          ]),
        ),
      ),
    );
  }

  Container boxGradient(Size size) {
    return Container(
      height: size.height * 0.25,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          gradient:
              LinearGradient(colors: [Color(0xFFDB0007), Color(0xFFfcca0f)])),
    );
  }
}
