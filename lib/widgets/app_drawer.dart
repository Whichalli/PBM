import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/widgets/widgets.dart';

class AppDrawer extends StatelessWidget {
  final String profileRoutes;
  const AppDrawer({Key? key, required this.profileRoutes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      // width: 250,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstant.pinkA100,
            ),
            child: GestureDetector(
              onTap: () {
                Get.offAndToNamed(profileRoutes);
              },
              child: Row(
                children: [
                  CustomImageView(
                    radius: BorderRadius.circular(1000),
                    width: 60,
                    height: 60,
                    url: Authentication.getCurrentUser()!.photoURL,
                    imagePath: ImageConstant.imageNotFound,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (Authentication.getCurrentUser()!.displayName ?? '')
                            .capitalize!,
                        style: AppStyle.txtAlegreyaSansBold24,
                        overflow: TextOverflow.clip,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            (Authentication.getCurrentUser()!.email ?? '')
                                .capitalize!,
                            style: AppStyle.txtAlegreyaSansBold14
                                .copyWith(color: Colors.white),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              size: 30,
            ),
            title: Text('Home',
                style: AppStyle.txtAlegreyaSansBold14
                    .copyWith(fontSize: 18, color: Colors.black54)),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.home_repair_service_outlined,
              size: 30,
            ),
            title: Text('Our Services',
                style: AppStyle.txtAlegreyaSansBold14
                    .copyWith(fontSize: 18, color: Colors.black54)),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.smart_toy_outlined,
              size: 30,
            ),
            title: Text('Routine',
                style: AppStyle.txtAlegreyaSansBold14
                    .copyWith(fontSize: 18, color: Colors.black54)),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.child_care_rounded,
              size: 30,
            ),
            title: Text('White Noise',
                style: AppStyle.txtAlegreyaSansBold14
                    .copyWith(fontSize: 18, color: Colors.black54)),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.book_outlined,
              size: 30,
            ),
            title: Text('PBM Booking',
                style: AppStyle.txtAlegreyaSansBold14
                    .copyWith(fontSize: 18, color: Colors.black54)),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.note_alt_outlined,
          //     size: 30,
          //   ),
          //   title: Text('Note',
          //       style: AppStyle.txtAlegreyaSansBold14
          //           .copyWith(fontSize: 18, color: Colors.black54)),
          //   onTap: () {
          //     Get.back();
          //     // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
          //   },
          // ),
          ListTile(
            leading: const Icon(
              Icons.verified_outlined,
              size: 30,
            ),
            title: Text(
              'PBM Plans',
              style: AppStyle.txtAlegreyaSansBold14
                  .copyWith(fontSize: 18, color: Colors.black54),
            ),
            onTap: () {
              Get.back();
              // Get.offAndToNamed(AppRoutes.homeOnboardingContainerScreen);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              size: 30,
              // color: Color.fromARGB(255, 236, 81, 19),
            ),
            title: Text(
              'Logout',
              style: AppStyle.txtAlegreyaSansBold14
                  .copyWith(fontSize: 18, color: Colors.black54),
            ),
            onTap: () {
              Authentication.logout();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomImageView(
              imagePath: ImageConstant.logo,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
