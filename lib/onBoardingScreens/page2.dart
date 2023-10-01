import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 45,
              ),
              //image
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/llustration2.png',
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              //card number 1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  elevation: 30,
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 11,
                              ),
                              child: Text(
                                'NyaySahayak',
                                style: TextStyle(color: Color.fromARGB(255, 9, 49, 83), fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 06),
                              child: Text(
                                'an',
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 11, left: 06),
                              child: Text(
                                'AI bot',
                                style: TextStyle(color: Color.fromARGB(255, 9, 49, 83), fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6, left: 10, right: 10),
                          child: Text(
                            'trainned specially for legal matters',
                            style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //card number 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  elevation: 30,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 11),
                              child: Center(
                                child: Text(
                                  'Voice Assistant',
                                  style: TextStyle(color: Color.fromARGB(255, 9, 49, 83), fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6, left: 06),
                              child: Center(
                                child: Text(
                                  'enabled',
                                  style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
