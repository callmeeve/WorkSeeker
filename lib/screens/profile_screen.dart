import 'package:flutter/material.dart';
import 'package:rent_work/components/custom_appbar.dart';
import 'package:rent_work/components/profile_menu_item.dart';
import 'package:rent_work/components/text_utils.dart';
import 'package:rent_work/constant.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        title: const TextUtils(
          text: "Profile",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        center: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsLine.ellipsis_v,
              color: black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(124 / 2),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    radius: 42.0,
                    backgroundImage: AssetImage(
                      "assets/images/user2.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const TextUtils(
                text: 'Michelle',
                fontSize: 16,
                color: black,
                fontWeight: FontWeight.w700,
              ),
              const TextUtils(
                text: '@michellejohn',
                fontSize: 14,
                color: grey,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 12.0,
                  top: 12.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextUtils(
                        text: "Personal Information",
                        color: black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      ProfileMenuItem(
                        icon: UniconsLine.edit,
                        name: "Profile Summary",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                      ProfileMenuItem(
                        icon: UniconsLine.file_alt,
                        name: "Job Applications",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                      ProfileMenuItem(
                        icon: UniconsLine.file_bookmark_alt,
                        name: "Saved Jobs",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 12.0,
                  top: 12.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextUtils(
                        text: "Settings",
                        color: black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      ProfileMenuItem(
                        icon: Icons.notifications_none_rounded,
                        name: "Notifications",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                      ProfileMenuItem(
                        icon: UniconsLine.question_circle,
                        name: "Help & Support",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                      ProfileMenuItem(
                        icon: UniconsLine.sign_out_alt,
                        name: "Log Out",
                        subname: "●",
                        onTap: () {},
                        iconColor: primary,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
