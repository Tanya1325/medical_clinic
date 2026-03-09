import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_clinic/constants/color_constants.dart';
import 'package:medical_clinic/screens/login_screen/screen/login_screen.dart';
import 'package:medical_clinic/screens/onboarding_screen/widgets/onboarding_item_view.dart';
import 'package:medical_clinic/widgets/common_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  List data = [
    {
      "image": "assets/select_doctor.png",
      "title": "Choose Your Doctor",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
    },
    {
      "image": "assets/schedule_appointment.png",
      "title": "Schedule Your Appointments",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
    },
    {
      "image": "assets/medical_history.png",
      "title": "Check Your Medical History",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            currentIndex == data.length ? SizedBox.shrink() : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Skip",style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.black)),
                Icon(Icons.arrow_forward_ios_sharp,color: bottomGradientColor),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: CarouselSlider(
                items:
                    data
                        .map(
                          (e) => OnboardingItemView(
                            image: e["image"],
                            title: e["title"],
                            description: e["description"],
                          ),
                        )
                        .toList(),
                options: CarouselOptions(
                  enlargeCenterPage: false,
                  viewportFraction: 1.0,
                  height: MediaQuery.of(context).size.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: data.length,
              effect: SlideEffect(
                dotColor: Colors.grey.shade400,
                activeDotColor: topGradientColor,
                paintStyle: PaintingStyle.stroke,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CommonButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                },
                isGradientOne: true,
                text: currentIndex == data.length ? "Get Started" : "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
