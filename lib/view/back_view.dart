// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class BackView extends StatefulWidget {
  const BackView({super.key});

  @override
  State<BackView> createState() => _BackViewState();
}

class _BackViewState extends State<BackView> {

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: Card(
        margin:  EdgeInsets.all(10),
        elevation: 12,
        surfaceTintColor: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.9),
                        height: 30,
                        width: MediaQuery.of(context).size.width/2,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("537",style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic
                      ),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey.withOpacity(0.4),
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey.withOpacity(0.4),
                        height: 20,
                        width: MediaQuery.of(context).size.width/2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey.withOpacity(0.4),
                        height: 20,
                        width: MediaQuery.of(context).size.width/2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
