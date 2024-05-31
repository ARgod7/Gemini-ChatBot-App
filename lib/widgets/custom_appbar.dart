import 'package:aichat/utils/constants/image_string.dart';
import 'package:aichat/utils/devices/device_utilities.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 14),
            child: Image(
              image: AssetImage(AImages.logo),
              fit: BoxFit.fitHeight,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}
