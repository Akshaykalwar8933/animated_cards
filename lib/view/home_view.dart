// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:atm_cards/view/back_view.dart';
import 'package:flutter/material.dart';

import 'front_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _rotationValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Animated Cards"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi * _rotationValue),
              origin: Offset(MediaQuery.of(context).size.width / 2, 0),
              child: _rotationValue < 0.5 ? FrontView() : BackView()),
          // SizedBox(
          //   height: 20,
          // ),
          Slider(
            value: _rotationValue,
            onChanged: (newValue) => setState(() {
              _rotationValue = newValue;
            }),
          ),
        ],
      ),
    );
  }
}
