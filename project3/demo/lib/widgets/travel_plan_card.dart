import 'package:flutter/material.dart';
import '../models/travel_plan.dart';

class TravelPlanCard extends StatelessWidget {
  final TravelPlan plan;
  final VoidCallback onTap;

  const TravelPlanCard({super.key, required this.plan, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(plan.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(plan.description),
              const SizedBox(height: 5),
              Text('Date: ${plan.date}', style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
