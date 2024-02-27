import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categoriesList.dart';
import './heroSections.dart';
import 'package:skin_care_v1/util/theme/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        HeroSectionComponent(),
        SizedBox(height: 10),
        CategoriesComponent()
      ],
    );
  }
}
