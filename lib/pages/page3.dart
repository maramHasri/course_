import 'package:flutter/material.dart';

class page_three extends StatelessWidget {
  const page_three({super.key});

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
                      "My Wallet",
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
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 45,
                          child: Stack(
                            children: [
                              Image.asset('assets/Oval.png'),
                              Center(
                                child: Image.asset('assets/flowerena.png'),
                              ),
                              Center(
                                  child: Text(
                                "R",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ))
                            ],
                          )),
                    ),
                    Text(
                      "\$RIIDE\n   15",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 45,
                        child: Image.asset('assets/Group 272.png'),
                      ),
                    ),
                    Text(
                      "  Cash\n \$25.00",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.check_circle,
                color: const Color.fromARGB(255, 65, 33, 243),
              ),
              title: Text(
                "Payment Methods",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              subtitle: Text(
                "Select your payment type.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Image.asset("assets/Clip path group.png"),
              title: Text(
                "coupon",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              subtitle: Text(
                "Invite friends and earn \$RIIDE.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Image.asset('assets/Shape (1).png'),
              title: Text(
                "Crypto",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              subtitle: Text(
                "Pay with other cryptocurrency.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
