import 'package:apptest/base/base_bloc.dart';
import 'package:apptest/presentation/settings/ui/settings.dart';
import 'package:apptest/utils/theme.dart';
import 'package:flutter/material.dart';

class IndexProvider extends BaseBloc {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> pages = <Widget>[
    Center(
      child: Icon(
        Icons.call,
        size: 150,
      ),
    ),
    Center(
      child: Icon(
        Icons.camera,
        size: 150,
      ),
    ),
    Center(
      child: Icon(
        Icons.chat,
        size: 150,
      ),
    ),
    SettingsPage()
  ];
  
  Color getColor(value) {
    return value ? AppColors.lightBlue : AppColors.gray;
  }
  
}