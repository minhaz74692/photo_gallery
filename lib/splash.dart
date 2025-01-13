// ignore_for_file: use_build_context_synchronously, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/constants.dart';
import 'package:photo_gallery/features/gallery/presentation/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      navigate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            Constants.appIcon,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }

  void navigate() async {
    
    Future.delayed(const Duration(milliseconds: 1200)).then((value) async {
     Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
    });
  }
}
