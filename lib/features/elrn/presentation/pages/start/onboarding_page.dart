import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/widgets/continue_button.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: IntroductionScreen(
                    key: introKey,
                    globalBackgroundColor: Colors.transparent,
                    rawPages: [
                      boardingItem('boarding1.png'),
                      boardingItem('boarding2.png'),
                      boardingItem('boarding3.png'),
                      boardingItem('boarding4.png'),
                    ],
                    onDone: () {},
                    onSkip: () {},
                    showSkipButton: false,
                    showDoneButton: false,
                    showNextButton: false,
                    showBackButton: false,
                    onChange: (int index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    dotsFlex: 4,
                    dotsDecorator: DotsDecorator(
                      activeColor: Colors.blue,
                      size: const Size(15.0, 10.0),
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                      activeSize: const Size(33.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    // Using ScaleTransition for scaling effect
                    return ScaleTransition(
                      scale: Tween<double>(
                        begin: 0.0, // Start from a size of 0
                        end: 1.0,   // Scale to the normal size
                      ).animate(animation),
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    "boarding$_currentIndex".tr(),
                    key: ValueKey<int>(_currentIndex), // Unique key based on _currentIndex
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
            continueButton(
              onPressed: () {
                if (_currentIndex < 3) {
                  introKey.currentState?.animateScroll(_currentIndex + 1);
                }
                if (_currentIndex == 3) {
                  Navigator.of(context).pushReplacementNamed('/loginOauth2');
                }
              },
              title: "next".tr(),
            ),
          ],
        ),
      ),
    );
  }

  Widget boardingItem(String image) {
    return Container(
      padding: const EdgeInsets.only(bottom: 42.0),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/boarding_bg.png'),
          ),
        ),
        child: Image.asset('assets/images/$image'),
      ),
    );
  }
}
