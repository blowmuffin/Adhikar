import 'package:adhikar2/home/fundamentalRights.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Material(
                  elevation: 30,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 345,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Citizen of India.",
                            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              "Every citizen of India has some basic fundamental rights. Here are the seven basic rights every citizen of India possesses:",
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 9, 49, 83),
                      ),
                      child: const Center(
                        child: Text(
                          'Know your six fundamental rights...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Material(
                      child: SizedBox(
                        height: 370,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //right to equality
                            const FundamentalRights(image: 'assets/images/llustration1.png', fundamentalRight: 'RIGHT TO EQUALITY', fundamentalRightDescription: 'All people are equal before and entitled to the same opportunities in life.'),
                            //right to freedom
                            const FundamentalRights(image: 'assets/images/llustration2.png', fundamentalRight: 'RIGHT TO FREEDOM', fundamentalRightDescription: 'This right include freedom of speech and expression, the right to assemble peacefully and to live anywhere in the country.'),
                    
                            //right to exploitation
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  width: 230,
                                  height: 350,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 200,
                                            height: 150,
                                            child: Image.asset(
                                              'assets/images/llustration3.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'RIGHT TO',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              ' EXPLOITATION',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 12, left: 20, right: 20),
                                          child: Text(
                                            'This prohibits trafficking in human beings, forced labour and employment of childrens in hazardous ccupation.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //right to freedom of religion
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  width: 230,
                                  height: 350,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Container(
                                            height: 150,
                                            child: Image.asset(
                                              'assets/images/llustration1.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'RIGHT TO FREEDOM',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'OF RELIGION',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 12, left: 20, right: 20),
                                          child: Text(
                                            'Everyone is equally entitled to freedom of conscience and the right to freely profess practice and propogateany religion.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //cultural and educational rights
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  width: 230,
                                  height: 350,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Container(
                                            height: 150,
                                            child: Image.asset(
                                              'assets/images/llustration2.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'CULTURAL AND',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'EDUCATIONAL RIGHTS',
                                              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 4, left: 20, right: 20),
                                          child: Text(
                                            'This right ensures equal education for all, free from discrimination, and protects the rights of religious, cultural, and linguistic minorities.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //right to property
                            const FundamentalRights(image: 'assets/images/llustration3.png', fundamentalRight: 'RIGHT TO PROPERTY', fundamentalRightDescription: 'This right refers to legal rights that enable individual to own control, and transfer property.'),
                    
                            //right to constitutional remidies
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  ),
                                  width: 230,
                                  height: 350,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Container(
                                            height: 150,
                                            width: 200,
                                            child: Image.asset(
                                              'assets/images/llustration3.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'RIGHT TO CONSTITUTIONAL',
                                              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              ' REMIDIES',
                                              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                                          child: Text(
                                            'This right gives the citizen the right to approach the Supreme court and the High court to get any fundamental right restored if they are voilated.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
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
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 9, 49, 83),
                      ),
                      child: const Center(
                        child: Text(
                          'Know your special rights...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
