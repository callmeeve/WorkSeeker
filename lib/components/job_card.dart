import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rent_work/core.dart';

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    String formatPrice(int price) {
      final formatter = NumberFormat.currency(locale: 'en_US', symbol: '\$');
      return formatter.format(price.toDouble() / 100);
    }

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: const Color(0xfff8f9fa),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(job.imageUrl),
                    ),
                    const SizedBox(width: 12.0),
                    TextUtils(
                      text: job.title,
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const Icon(
                  Icons.verified_rounded,
                  color: secondary,
                )
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextUtils(
              text: job.subtitle,
              fontSize: 14,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                const TextUtils(
                  text: "4,5",
                  color: black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: TextUtils(
                    text: '${job.review} reviews',
                    color: grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils(
                      text: formatPrice(job.price),
                      color: secondary,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    const TextUtils(
                      text: "Per hour fixed price",
                      color: grey,
                      fontSize: 14,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextUtils(
                      text: "To hire",
                      color: white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
