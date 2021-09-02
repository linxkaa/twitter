import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VarConst {
  const VarConst._();

  static String userCollection = 'users';
  static String tweetCollection = 'tweets';

  static List<BottomNavigationBarItem> navigationBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.bell),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '',
    ),
  ];

  static bool isEditOption(TweetOption val) {
    switch (val) {
      case TweetOption.Edit:
        return true;

      case TweetOption.Delete:
        return false;
    }
  }
}

enum TweetOption {
  Edit,
  Delete,
}
