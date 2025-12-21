import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/travel_plan.dart';

class LocalStorageService {
  static const _storageKey = 'travel_plans';

  Future<List<TravelPlan>> getPlans() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_storageKey);
    if (data != null) {
      final List<dynamic> jsonList = jsonDecode(data);
      return jsonList.map((e) => TravelPlan.fromMap(Map<String, String>.from(e))).toList();
    }
    return [];
  }

  Future<void> savePlans(List<TravelPlan> plans) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = plans.map((e) => e.toMap()).toList();
    await prefs.setString(_storageKey, jsonEncode(jsonList));
  }
}
