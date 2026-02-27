import 'package:examp_app/components/components.dart';
import 'package:examp_app/pages/pages.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            SlideTransitionWidget(
              beginOffset: const Offset(0, 1),
              child: Image.asset(
                'assets/images/new_icon_blue.png',
                width: 111,
                height: 111,
              ),
            ),
            const Spacer(),
            const Text(
              'Power by PT Nesta Indo Media',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
