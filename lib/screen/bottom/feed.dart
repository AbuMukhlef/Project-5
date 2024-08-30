import 'package:flutter/material.dart';

import '../../core/all_file.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: context.getHeightScreen(height: 0.02)),
            MyContainer(
              width: context.getWidthScreen(width: 0.96),
              height: context.getHeightScreen(height: 0.2),
            ),
            SizedBox(height: context.getHeightScreen(height: 0.02)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Stories',
                    style: TextStyle(color: MyColors.whiteTextColor)),
                Text('See all',
                    style: TextStyle(color: MyColors.greyTextColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
