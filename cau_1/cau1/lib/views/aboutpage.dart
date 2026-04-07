import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({super.key});

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Go to home page'),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          }, child: Text('Go to home page-6451071076'))
        ],
      ),
    );
  }
}