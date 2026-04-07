import 'package:cau3/views/Homepage.dart';
import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.pop(context,),
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()))
          },
          child: const Text('Back to Home-6451071076'),
        ),
      ),
    );
  }
}