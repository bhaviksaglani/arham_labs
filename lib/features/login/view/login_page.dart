import 'package:arham_labs_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../config/app_colors/app_colors.dart';
import '../../../local_storage/app_preferences .dart';
import '../../../utils/const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white, // Set app bar background color to white
      //   leading:
      // ),
      body: Container(
        color: Colors.white, // Set background color to white
        padding: const EdgeInsets.all(20.0), // Add padding for better spacing
        child: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final authState = ref.watch(authProvider.notifier);
              final auth = ref.read(authProvider);

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black,
                  ),
                  _phoneNumberHeading(),
                  const SizedBox(height: 20),
                  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      auth.updatePhoneNumber(phone.toString());
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onPressed: () {
                        auth.login();
                      },
                      title: 'Get OTP',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _phoneNumberHeading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your phone number?",
          style: textStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10), // Add some space between headings
        Text(
          "Enter your primary phone number below",
          style: textStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color747997,
          ),
        )
      ],
    );
  }
}
