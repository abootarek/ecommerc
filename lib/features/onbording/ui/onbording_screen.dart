// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shopapp/core/helper/extintion.dart';
import 'package:shopapp/core/routing/routes.dart';
import 'package:shopapp/core/theme/style.dart';
import 'package:shopapp/features/onbording/data/model/model_onbording.dart';
import 'package:shopapp/features/onbording/ui/widgets/dec_onbording.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});
  List<ModelOnbording> modelOnbording = [
    ModelOnbording(
        title: 'تسوق اون لاين',
        description:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ',
        image: 'assets/images/image1.png'),
    ModelOnbording(
        title: 'عروض و خصومات',
        description:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ',
        image: 'assets/images/image2.png'),
    ModelOnbording(
        title: 'الدفع الآمن',
        description:
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، ',
        image: 'assets/images/image3.png'),
  ];

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: modelOnbording.length,
              itemBuilder: (context, index) {
                return Dec_Page_View(
                  model: modelOnbording[index],
                  pageController: pageController,
                );
              },
            ),
            Positioned(
              top: 0,
              right: 0,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 130, 127, 127),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Text(
                    'تخطي',
                    style: TextStyles.font14grayLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
