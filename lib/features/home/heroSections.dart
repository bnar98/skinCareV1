import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../util/theme/constants.dart';

class HeroSectionComponent extends StatelessWidget {
  const HeroSectionComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Image(
        image: AssetImage("assets/heroSection/heroSection1.png"),
      ),
    );
  }
}
