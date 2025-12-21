import 'package:flutter/material.dart';
import '../models/travel_plan.dart';

class DetailsScreen extends StatelessWidget {
  final TravelPlan plan;

  const DetailsScreen({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plan.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description: ${plan.description}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Date: ${plan.date}', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
