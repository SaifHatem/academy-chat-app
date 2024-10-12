import 'package:academy_chat_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/home_view.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomeView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetImages.pngLogo,
          ),
          const SizedBox(
            height: 20,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
}
