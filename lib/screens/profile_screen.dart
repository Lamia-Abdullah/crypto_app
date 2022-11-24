
import 'package:flutter/material.dart';

import '../style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ggg",
                  style: textStyle(24, Colors.white, FontWeight.bold),
                ),
    ]
    ),
        ),
        ),
        );
  }
}