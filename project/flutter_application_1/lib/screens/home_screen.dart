import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Planner')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomCard(
            title: 'Beach Trip',
            description: 'Enjoy the sun and sea!',
            onTap: () => Navigator.pushNamed(context, '/details'),
          ),
          CustomCard(
            title: 'Mountain Hike',
            description: 'Explore the scenic mountains!',
            onTap: () => Navigator.pushNamed(context, '/details'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/form'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
