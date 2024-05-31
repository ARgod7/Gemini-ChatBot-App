import 'package:aichat/screens/chat_box.dart';
import 'package:aichat/utils/constants/image_string.dart';
import 'package:aichat/utils/constants/sizes.dart';
import 'package:aichat/utils/devices/device_utilities.dart';
import 'package:aichat/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: ADeviceUtils.getAppBarHeight() + 20),
            child: Text(
              'Your AI Assistant',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: Color.fromARGB(255, 0, 164, 213)),
            ),
          ),
          Image(
            image:
                AssetImage(dark ? AImages.darkgeminibg : AImages.lightgeminibg),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: ASizes.defaultSpace, top: ASizes.spaceBtwSections),
            child: Image(
              image: AssetImage(AImages.chatbot),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwItems),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
            child: Text(
              textAlign: TextAlign.center,
              'By using this App you can ask questions and get answers by Gemini bot.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwSections * 2),
          SizedBox(
            width: 180,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const ChatBox()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lets Chat',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    width: ASizes.spaceBtwItems,
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
