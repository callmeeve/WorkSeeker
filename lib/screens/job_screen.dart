import 'package:flutter/material.dart';
import 'package:rent_work/components/custom_appbar.dart';
import 'package:rent_work/components/custom_dropdown_content.dart';
import 'package:rent_work/components/text_utils.dart';
import 'package:rent_work/constant.dart';
import 'package:unicons/unicons.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 50),
          child: CustomAppBar(
            title: const TextUtils(
              text: "Jobs",
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: black,
            ),
            center: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 12.0,
                  top: 2.0,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    UniconsLine.ellipsis_v,
                    color: black,
                  ),
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: secondary,
              tabs: <Widget>[
                Tab(
                  child: TextUtils(
                    text: "Active",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Tab(
                  child: TextUtils(
                    text: "Referrals",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Tab(
                  child: TextUtils(
                    text: "Archived",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18),
          child: TabBarView(
            children: <Widget>[
              buildJobActive(),
              buildJobReferral(),
              buildJobArchived(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildJobActive() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDropdownContent(title: "Offers (0)"),
        CustomDropdownContent(title: "Invitations to interview (0)"),
        CustomDropdownContent(title: "Submitted (0)"),
        CustomDropdownContent(title: "Active (0)"),
      ],
    );
  }

  Widget buildJobReferral() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 28.0,
            bottom: 16.0,
          ),
          child: Image.asset(
            "assets/images/sampel.png",
            fit: BoxFit.cover,
            width: 300,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextUtils(
          text: "You haven't reffered to anyone yet",
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextUtils(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed diam vulputate, interdum nisl non, mattis mauris",
            fontSize: 14,
            align: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {},
          child: const TextUtils(
            text: "Learn more about referring freelancers",
            fontSize: 14,
            color: secondary,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  Widget buildJobArchived() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDropdownContent(title: "Archived proposals (0)"),
        CustomDropdownContent(title: "Archived interviews (0)"),
      ],
    );
  }
}
