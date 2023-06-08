import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Commons {
  final prefs = SharedPreferences.getInstance();

  void setToken(String token) async {
    final storage = await prefs;
    await storage.setString('token', token);
  }

  Future<String?> getToken() async {
    final storage = await prefs;
    return storage.getString('token');
  }

  Future<bool> removeToken() async {
    final storage = await prefs;
    return storage.remove("token");
  }

  void showSnackBarErrorr(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.error(message: msg));
  }

  void showSnackBarSuccess(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.success(message: msg));
  }
}
