import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  
  @override
  Widget build(BuildContext context) {
    final String userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Column(
        children: [
          Text('Xin chao $userName'),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          }, child: Text('Ve home page-6451071076')),
        ],
      ),
    );
  }
}