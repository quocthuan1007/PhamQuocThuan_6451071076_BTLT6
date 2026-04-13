import 'package:flutter/material.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ColorOption> colors = [
      ColorOption(name: 'Red', color: Colors.red),
      ColorOption(name: 'Blue', color: Colors.blue),
      ColorOption(name: 'Green', color: Colors.green),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Color'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final colorOption = colors[index];
          return Card(
            margin: const EdgeInsets.all(12.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: colorOption.color,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              title: Text(colorOption.name),
              trailing: const Icon(Icons.check),
              onTap: () {
                Navigator.pop(context, colorOption.color);
              },
            ),
          );
        },
      ),
    );
  }
}

class ColorOption {
  final String name;
  final Color color;

  ColorOption({required this.name, required this.color});
}
