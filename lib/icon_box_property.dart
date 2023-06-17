import 'package:flutter/material.dart';

class MyIconBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String iconName;
  const MyIconBox (
    {super.key,
    required this.icon,
      required this.iconName
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
            width: 100,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
              //color: Colors.purple,
            ),
        ),
        const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                iconName,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
      ],
    );
  }
}