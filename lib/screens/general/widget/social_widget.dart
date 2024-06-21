import 'package:buzz/screens/general/general_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SocialCard extends StatelessWidget {
  final SocialData socialData;

  const SocialCard({super.key, required this.socialData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
          .copyWith(bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    socialData.image,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    socialData.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Text(
                socialData.percent,
                style: const TextStyle(
                  color: Colors.green,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    socialData.followers,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
              CircularPercentIndicator(
                percent: socialData.circularValue,
                animationDuration: 1000,
                center: Text(
                  socialData.centerText,
                  style: TextStyle(fontSize: 12),
                ),
                animation: true,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: socialData.color,
                backgroundColor: Colors.grey.shade400,
                radius: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}