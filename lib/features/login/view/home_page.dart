import 'package:arham_labs_project/utils/const.dart';
import 'package:flutter/material.dart';

import '../../../config/app_colors/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: textStyle(),
        ),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _peopleLikeYou(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _profileContainer();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _peopleLikeYou() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "People like you",
          style: textStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          "See all",
          style: textStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: primary),
        ),
      ],
    );
  }

  Widget _profileContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 141,
            width: 146,
            decoration: const BoxDecoration(
                color: colorF5F6FA,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _circularImage(),
                Text(
                  "Wilma Stewart",
                  style: textStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14),
                ),
                Text(
                  "28 M",
                  style: textStyle(
                      fontWeight: FontWeight.w400,
                      color: color747997,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circularImage() {
    return CircleAvatar(
        // radius: 70,
        child: Container(
      width: 56,
      height: 56,
    ));
  }
}
