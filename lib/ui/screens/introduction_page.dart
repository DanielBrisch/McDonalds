import 'package:delivery/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1,
          width: size.width * 1,
          decoration: const BoxDecoration(color: Color(0xFFDB0007)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.15,
                        width: size.width * 0.40,
                        child: Image.asset('lib/assets/mc.png'),
                      ),
                      Positioned(
                        top: size.height * 0.111,
                        child: const Text("I'm lovin'it",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.05, bottom: size.height * 0.05),
                      child: Image.asset('lib/assets/clow.png')),
                  const Text(
                    "Welcome to McDonald's",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                        "more economical and practical charms through the application, lots of menus, lots of promotions, no need to leave the house!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  SizedBox(
                    width: size.width * 0.9,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.home);
                        },
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFFfcca0f))),
                        child: const Text('Order now',
                            style: TextStyle(
                                color: Color(0xFFDB0007),
                                fontWeight: FontWeight.bold,
                                fontSize: 20))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
