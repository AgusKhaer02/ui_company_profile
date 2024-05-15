import 'package:company_profile/home_screen.dart';
import 'package:company_profile/navigation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  gotoMain()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationScreen()));
  }
  @override
  void initState() {
    gotoMain();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://yt3.googleusercontent.com/ytc/AIdro_lRZ4k7ErrFOFRzHbll-fv5VQRtGy0dKmnjRwIHB7fwh0Y=s900-c-k-c0x00ffffff-no-rj"),
              radius: 80,
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
