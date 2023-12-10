import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../services/constants/colors.dart';

class SectionNameView extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SectionNameView(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "See All",
            style: TextStyle(
              color: AppColors.xFF12CDD9,
              fontFamily: "Montserrat",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
