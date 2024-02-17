import 'package:flutter/material.dart';
import 'package:skin_care_v1/features/welcome/welcomeComponent.dart';
import '../../util/theme/constants.dart';
import '../../util/widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
        body: ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: PageView(
          controller: controller,
          children: const [
            WelcomeComponent(
              title: 'Scan and Discover',
              description:
                  'Unleash the power of personalized skincare with our cutting-edge scanning technology. Simply snap a photo of your face, and our app delves deep into the realms of your skin, identifying unique concerns and uncovering its individual needs. Say goodbye to guesswork and hello to a tailored skincare experience.',
              image: 'assets/welcome/welcome1.png',
            ),
            WelcomeComponent(
              title: 'Recommendations Tailored Just for You',
              description:
                  'Unleash the power of personalized skincare with our cutting-edge scanning technology. Simply snap a photo of your face, and our app delves deep into the realms of your skin, identifying unique concerns and uncovering its individual needs. Say goodbye to guesswork and hello to a tailored skincare experience.',
              image: 'assets/welcome/welcome2.png',
            ),
            WelcomeComponent(
              title: 'Effortless Integration into Your Routine',
              description:
                  'Seamlessly integrate your personalized skincare routine into your daily life with our apps intuitive features. Receive timely reminders to apply your chosen products, track your progress, and witness the transformative effects. Experience the convenience of a skincare routine that adapts to you, empowering you to achieve radiant, healthy skin effortlessly.',
              image: 'assets/welcome/welcome3.png',
            ),
          ],
        ),
      ),
    ));
  }
}
