import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class APIRepository {

  /// User SelectedShippingAddress SharedPreferences Part Start
  Future<void> saveSelectedShippingAddress(String? value) async {
    await deleteSelectedShippingAddress();
    debugPrint(' SelectedShippingAddress value==== $value');
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value != null) {
      await prefs.setString('selectedShippingAddress', value);
      await getSelectedShippingAddress();
    }
  }

  Future<String> getSelectedShippingAddress() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? getSelectedShippingAddress = prefs.getString('selectedShippingAddress');
    debugPrint('get SelectedShippingAddress==== $getSelectedShippingAddress');
    return getSelectedShippingAddress ?? "QWERTYUI";
  }

  Future<void> deleteSelectedShippingAddress() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('selectedShippingAddress');
    debugPrint('saved SelectedShippingAddress====');
  }
/// User SelectedShippingAddress SharedPreferences Part End
///
}