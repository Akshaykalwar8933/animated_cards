// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FrontView extends StatefulWidget {
  const FrontView({super.key});

  @override
  State<FrontView> createState() => _FrontViewState();
}

class _FrontViewState extends State<FrontView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsets.all(20),
      elevation: 12,
      // shadowColor: Colors.black26,
      surfaceTintColor: Colors.red,
      // semanticContainer: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
                child: Image.asset("Assets/visa.png",height: 50,)),
            SizedBox(
              height: 20,
            ),
            Text(
              "1432 3421 4543 9589",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Card Holder",style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),),
                    Text("Akshay Kalwar",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text("Expiry",style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),),
                    Text("12/2027",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),)
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
