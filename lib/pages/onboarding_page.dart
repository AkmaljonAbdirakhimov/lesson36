import 'package:flutter/material.dart';
import 'package:lesson36/pages/login_page.dart';
import 'package:lesson36/widgets/onboarding_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                OnBoardingWidget(
                  index: 0,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidget(
                  index: 1,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidget(
                  index: 2,
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return LoginPage();
                    }));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
