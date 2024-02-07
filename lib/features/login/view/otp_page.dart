import 'package:arham_labs_project/config/app_colors/app_colors.dart';
import 'package:arham_labs_project/features/login/view/home_page.dart';
import 'package:arham_labs_project/utils/const.dart';
import 'package:arham_labs_project/widgets/custom_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OtpPage extends StatefulWidget {
  final String phoneNumber;
  const OtpPage({super.key, required this.phoneNumber});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Otp Page",
        style: textStyle(),
      )),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                widget.phoneNumber,
                style: textStyle(
                    color: primary, fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
          ),
          CustomButton(
            title: "Home Page",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
