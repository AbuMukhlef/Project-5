import 'package:flutter/material.dart';

import '../../core/all_file.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: MyContainer(),
      ),
    );
  }
}
