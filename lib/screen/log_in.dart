import 'package:flutter/material.dart';
import 'package:project_5/core/all_file.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ListTile(
              title: Text(
                'Welcome Back!',
                style: TextStyle(
                    color: MyColors.whiteTextColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Glad to see you again',
              ),
            ),
            MyContainer(
              child: Column(
                children: [
                  const MyTextField(
                    hintText: 'Enter your username',
                    leftText: 'Username',
                  ),
                  const MyTextField(
                    hintText: 'Enter your password',
                    leftText: 'Password',
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: context.getHeightScreen(height: 0.025),
                        left: context.getWidthScreen(width: 0.56)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: MyColors.pinkColor),
                      ),
                    ),
                  ),
                  SizedBox(height: context.getHeightScreen(height: 0.02)),
                  SizedBox(
                    height: context.getHeightScreen(height: 0.05),
                    width: context.getWidthScreen(width: 0.5),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                      },
                      color: MyColors.pinkColor,
                      child: const Text('Login'),
                    ),
                  ),
                  SizedBox(height: context.getHeightScreen(height: 0.01)),
                  TextButton(
                      onPressed: () {},
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                              text: '____  ',
                              style: TextStyle(color: MyColors.whiteTextColor)),
                          TextSpan(
                              text: 'Enter as a guest',
                              style: TextStyle(color: MyColors.pinkColor)),
                          TextSpan(
                              text: '  ____',
                              style: TextStyle(color: MyColors.whiteTextColor)),
                        ],
                      ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
