import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:rent_work/core.dart';

class CustomDropdownContent extends StatefulWidget {
  final String title;
  const CustomDropdownContent({Key? key, required this.title})
      : super(key: key);

  @override
  State<CustomDropdownContent> createState() => _CustomDropdownContentState();
}

class _CustomDropdownContentState extends State<CustomDropdownContent> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextUtils(
                    text: widget.title,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  Icon(
                    _showContent
                        ? UniconsLine.angle_up
                        : UniconsLine.angle_down,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _showContent
                ? const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      children: [
                        TextUtils(
                          text: "Lorem ipsum blabla",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
