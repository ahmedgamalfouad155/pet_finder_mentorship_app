import 'package:cat_api/features/landing/presentation/screen/landing_screen.dart';
import 'package:cat_api/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cat_api/core/constants/images.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    initFadeAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: fadeAnimation,
        child: SvgPicture.asset(AppImages.heat, height: 200, width: 200),
      ),
    );
  }

  void initFadeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => NavBarCubit(),
            child: const LandingScreen(),
          ),
        ),
      );
    });
  }
}
