import 'package:CareCompanion/screens/registration.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    // Start a timer that sets _isLoading to false after three seconds
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const RegisterPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/appBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/el-logo-white-r@2x.png',
                  width: 120.0,
                  height: 120.0,
                ),
                const SizedBox(height: 16.0),
                _isLoading
                    ? const Padding(
                        padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                        child: LinearProgressIndicator(),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
