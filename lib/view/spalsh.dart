import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: const [
      //     SizedBox(
      //       height: 300,
      //     ),
      //
      //     FadeInImage(
      //
      //       placeholder : AssetImage("assets/img/logo.png"),
      //       image: AssetImage("assets/img/logo.png") ,
      //       height: 230 ,
      //       width: 230,
      //     ),
      //     Spacer(),
      //     SizedBox(height: 20,),
      //   ],
      // )
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 200.0,
          ),
          Center(
            child: Container(
              child: LottieBuilder.asset('lottie/mobilenews.json'),
            ),
          ),
          Text(
            "Bringing you the latest news",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}