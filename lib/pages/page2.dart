import 'package:flutter/material.dart';
import 'package:rating/pages/page3.dart';

class page_two extends StatelessWidget {
  const page_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 13, 13),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.maxFinite,
                color: Color.fromARGB(255, 31, 31, 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/Frame 12.png')),
                    Text(
                      "Tips",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {}, child: Image.asset('assets/Frame 13.png'))
                  ],
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Image.asset(
              'assets/person.png',
            ),
            radius: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Gregory Smith",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Text(
            "652 - UKW",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Tips",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " Would you like to tip your driver/courier?",
              style: TextStyle(color: const Color.fromARGB(183, 255, 255, 255)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Maybe next time",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Choose custom amount",
                style: TextStyle(
                    color: const Color.fromARGB(255, 240, 6, 6),
                    decoration: TextDecoration.underline),
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(0, 255, 193, 7),
                    radius: 30,
                    child: Text(
                      "\$1",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(0, 255, 193, 7),
                    radius: 30,
                    child: Text("\$2",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(0, 255, 193, 7),
                    radius: 30,
                    child: Text("\$5",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MaterialButton(
              height: 50,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page_three()));
              },
              color: Color(0xff4CE5B1),
              minWidth: 310,
              child: Text(
                "Confirm",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
