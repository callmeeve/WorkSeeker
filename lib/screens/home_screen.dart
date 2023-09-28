import 'package:flutter/material.dart';
import 'package:rent_work/core.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildUserAvatar(),
                  buildNotificationButton(),
                ],
              ),
            ),
            buildHeaderText("234+ New jobs"),
            buildSearchBar(),
            buildHeaderTextRow("Recent"),
            buildJobList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 18),
      child: TextUtils(
        text: text,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget buildSearchBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: const Color(0xfff8f9fa),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari...',
                  prefixIcon: const Icon(
                    UniconsLine.search,
                    color: black,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                cursorColor: black,
                onChanged: (value) {},
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        buildFilterButton(),
      ],
    );
  }

  Widget buildFilterButton() {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: const Color(0xfff8f9fa),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const Center(
        child: Icon(
          Icons.filter_list_rounded,
          color: black,
          size: 32,
        ),
      ),
    );
  }

  Widget buildHeaderTextRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextUtils(
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          const TextUtils(
            text: 'Show more',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: grey,
          ),
        ],
      ),
    );
  }

  Widget buildJobList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (BuildContext context, int index) {
        final job = jobs[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: JobCard(job: job),
        );
      },
    );
  }

  Widget buildUserAvatar() {
    return const Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(
            "assets/images/user2.jpg",
          ),
        ),
        SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Michelle',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '@michellejohn',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildNotificationButton() {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 32,
          ),
          onPressed: () {},
        ),
        const Positioned(
          top: 8,
          right: 8,
          child: CircleAvatar(
            radius: 4,
            backgroundColor: secondary,
          ),
        ),
      ],
    );
  }
}
