import 'package:ecommirce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/data_source/static/static.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: ((value) {
          controller.onPageChanged(value);
        }),
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 30,
              ),
            
              Image.asset(
                onBoardingList[index].image ?? " ",
                // width: 200,
                 height: 350,
                 //fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 80,
              ),
               Text(
                onBoardingList[index].title ?? " ",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[index].body ?? " ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ],
          );
        });
  }
}
