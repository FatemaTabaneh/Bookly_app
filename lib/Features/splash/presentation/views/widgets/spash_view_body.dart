import 'package:bookly_app/Features/home/presntation/views/homeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash_view_body extends StatefulWidget {
  const splash_view_body({super.key});

  @override
  State<splash_view_body> createState() => _splash_view_bodyState();
}

class _splash_view_bodyState extends State<splash_view_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animatMethod();
    navigation();
  }

  void navigation() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        () => homeView(),
        transition: Transition.fade,
        duration: Duration(seconds: 2),
      );
    });
  }

  void animatMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Image.asset('assets/images/logo1.png'),
        ),
        SizedBox(height: 20),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text('Read Free Books', textAlign: TextAlign.center),
            );
          },
        ),
      ],
    );
  }
}
