import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rating/pages/page2.dart';

class page_one extends StatelessWidget {
  const page_one({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _commentController = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 13, 13),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.maxFinite,
                color: const Color.fromARGB(255, 31, 31, 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/Frame 12.png')),
                    Text(
                      "Rating",
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
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "How was your trip?",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "   Your feedback will help \nimprove driving experience",
              style: TextStyle(color: const Color.fromARGB(183, 255, 255, 255)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star_rounded,
                color: Color(0xffFFE416),
                size: 60,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    label: Text(
                  ' Additional comments...',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 141, 141, 141)),
                )),
                controller: _commentController,
              ),
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
                    MaterialPageRoute(builder: (context) => page_two()));
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
