import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skin_care_v1/features/welcome/welcomeComponent.dart';
import '../../util/theme/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    double screenHeight = MediaQuery.of(context).size.height - 216;
    final GoRouter router = GoRouter.of(context);

    return Scaffold(
        body: ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      router.go("/login");
                      // Perform the action you want when the text is clicked
                      print('Text Clicked!');
                    },
                    child: const Text(
                      'skip',
                      style: TextStyle(
                        color:
                            primaryColor, // You can change the color as per your requirement
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: screenHeight,
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
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    type: WormType.thinUnderground,
                    activeDotColor: primaryColor),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
