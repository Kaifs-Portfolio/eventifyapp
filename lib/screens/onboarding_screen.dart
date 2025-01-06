import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/page_indicator.dart';
import '../components/title_format.dart';
import '../components/slogan_format_big.dart';
import '../components/swipe_format.dart';
import '../components/rich_text.dart';
import '../components/slogan_format_medium.dart';
import '../components/my_textfield.dart';
import '../components/my_button.dart';
import '../components/square_tile.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7532B),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.93),
            child: PageIndicator(
              currentPage: _currentPage,
              pageCount: 3, // Total number of pages
            ),
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment(0, -0.55),
          child: TitleWidget(titleText: 'eventify.'),
        ),
        const Align(
          alignment: Alignment(0, -0.35),
          child: SloganWidgetBig(sloganText: 'Your event,\nperfected with AI'),
        ),
        Align(
          alignment: const Alignment(0, 0.40),
          child: Image.asset(
            'lib/assets/images/celebration.png',
            width: 344,
            height: 359,
            fit: BoxFit.contain,
          ),
        ),
        const Align(
          alignment: Alignment(0, 0.85),
          child: SwipeWidget(swipeText: 'Swipe to learn more →'),
        )
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(1, -0.9),
          child: Image.asset(
            'lib/assets/images/onphone.png',
            width: 170,
            height: 170,
            fit: BoxFit.contain,
          ),
        ),
        const Align(
          alignment: Alignment(0, -0.70),
          child: TitleWidget(titleText: 'eventify.'),
        ),
        const EventifyTextWidget(),
        const Align(
          alignment: Alignment(0, -0.14),
          child: SloganWidgetMedium(
              sloganText:
                  'Discover nearby cake shops \n and event services tailored to \n your needs.'),
        ),
        const Align(
          alignment: Alignment(0, 0.14),
          child: SloganWidgetMedium(
              sloganText:
                  'Get AI-driven suggestions for every event, personalised to your culture and style.'),
        ),
        const Align(
          alignment: Alignment(0, 0.42),
          child: SloganWidgetMedium(
              sloganText:
                  'Find everything you need for planning in one place, from venues to catering options.'),
        ),
        const Align(
          alignment: Alignment(0, 0.70),
          child: SloganWidgetMedium(
              sloganText:
                  'Simplify your event planning journey with a user-friendly design and helpful tools.'),
        ),
        const Align(
          alignment: Alignment(0, 0.85),
          child: SwipeWidget(swipeText: 'One more swipe! →'),
        )
      ],
    );
  }
}

class PageThree extends StatelessWidget {
  PageThree({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7532B),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              const TitleWidget(titleText: 'eventify.'),
              const SizedBox(height: 1),
              const SloganWidgetMedium(
                  sloganText: 'All you need in an event,\nin One Place.'),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/assets/images/googlelogo.png'),
                  const SizedBox(width: 20),
                  SquareTile(imagePath: 'lib/assets/images/applelogo.png'),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
