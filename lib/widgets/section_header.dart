import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/numbers.dart';

class SectionHeader extends StatelessWidget {
  final String sectionName;
  const SectionHeader({required this.sectionName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
   EdgeInsets.symmetric(horizontal: Numbers.appHorizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionName,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          Text(
            'See All',
            style: TextStyle(
                fontSize: 15,
                color: Color(ColorsConst.mainColor),
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}