import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../util/theme/constants.dart';

class WelcomeComponent extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const WelcomeComponent({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 200;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            height: 250,
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 32,
                        color: primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12, color: primaryColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
