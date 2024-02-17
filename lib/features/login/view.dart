import 'package:flutter/material.dart';
import '../../util/theme/constants.dart';
import '../../util/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 100;

    return Scaffold(
        body: ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/loginVector.png'),
                  ),
                  Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(// Change border color
                              ),

                          labelText: 'Email Address',
                          labelStyle: TextStyle(
                              color: primaryColor), // Change label (text) color
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: primaryColor)),
                      ),
                    ],
                  ),
                  CustomButton(
                    // Use the custom button widget
                    text: 'Press Me',
                    onPressed: () {
                      // Callback function when the button is pressed
                      print('Button Pressed');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
