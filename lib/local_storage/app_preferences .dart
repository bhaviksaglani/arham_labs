import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authProvider =
    ChangeNotifierProvider<AuthProvider>((ref) => AuthProvider());

class AuthProvider extends ChangeNotifier {
  String _phoneNumber = '';

  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  Future<void> login() async {
    if (_phoneNumber.isNotEmpty) {
      // Save phone number locally
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('phoneNumber', _phoneNumber);
    }
  }
}
