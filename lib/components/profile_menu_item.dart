import 'package:flutter/material.dart';
import 'package:rent_work/components/text_utils.dart';
import 'package:unicons/unicons.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String name;
  final String subname;
  final Function() onTap;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.name,
    required this.subname,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 28,
              ),
              const SizedBox(width: 12),
              TextUtils(
                text: name,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              const Spacer(),
              Icon(
                Icons.circle,
                color: Colors.grey.shade400,
                size: 10,
              ),
              Icon(
                UniconsLine.angle_right,
                size: 24,
                color: Colors.grey.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
