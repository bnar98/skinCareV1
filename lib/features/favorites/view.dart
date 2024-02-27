import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_care_v1/util/theme/constants.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: backgroundColor,
        child: Padding(
            padding: EdgeInsets.all(50),
            child: Center(
              child: SingleChildScrollView(
                child: Text('Home 2'),
              ),
            )),
      ),
    );
  }
}
