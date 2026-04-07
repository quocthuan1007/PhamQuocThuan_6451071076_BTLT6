import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Text('Go to about'),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/about');
          }, child: Text('Chuyen trang-6451071076'))
        ],
      ),
    );
  }
}