import 'package:flutter/material.dart';
import '../services/local_storage_service.dart';
import '../models/travel_plan.dart';
import 'details_screen.dart';
import 'add_plan_screen.dart';
import '../widgets/travel_plan_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _storageService = LocalStorageService();
  List<TravelPlan> _plans = [];

  @override
  void initState() {
    super.initState();
    _loadPlans();
  }

  Future<void> _loadPlans() async {
    final plans = await _storageService.getPlans();
    setState(() {
      _plans = plans;
    });
  }

  Future<void> _addPlan(TravelPlan plan) async {
    setState(() {
      _plans.add(plan);
    });
    await _storageService.savePlans(_plans);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Planner')),
      body: ListView.builder(
        itemCount: _plans.length,
        itemBuilder: (context, index) {
          final plan = _plans[index];
          return TravelPlanCard(
            plan: plan,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(plan: plan)),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newPlan = await Navigator.push<TravelPlan>(
            context,
            MaterialPageRoute(builder: (context) => const AddPlanScreen()),
          );
          if (newPlan != null) {
            _addPlan(newPlan);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
