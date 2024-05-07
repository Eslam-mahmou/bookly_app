import 'package:bookly_app_test/Core/Utils/AppRouter.dart';
import 'package:bookly_app_test/Core/Utils/assets.dart';
import 'package:bookly_app_test/Features/SplashView/Presentation/View/Widget/SlideTransition.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

late AnimationController animationController;
late Animation<Offset> slidnAnimation;

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    sildnAnimation();
    navigation();
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
        Image.asset(AssetApp().logo),
        SlideText(slidnAnimation: slidnAnimation)
      ],
    );
  }

  void navigation() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomePage);
      });
    }
  

  void sildnAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidnAnimation = Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
    }
