import 'package:flutter/material.dart';

class FundamentalRights extends StatelessWidget {
  final String image;
  final String fundamentalRight;
  final String fundamentalRightDescription;
  const FundamentalRights({super.key, required this.image, required this.fundamentalRight, required this.fundamentalRightDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      image,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  fundamentalRight,
                  style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: Text(
                    fundamentalRightDescription,
                    style: const TextStyle(
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
    );
  }
}
