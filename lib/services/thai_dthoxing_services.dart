import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:miniproject/model/step.model.dart';

class StepServices with ChangeNotifier {
  String ENDPOINT = "http://192.168.1.102:8000";
  late String api; // Remove the initialization from here

  Future<List<StepModel>?> getAllStepServices() async {
    api = "$ENDPOINT/steps/get/all";
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      List<dynamic> jsonResponse = jsonDecode(response.body);

      List<StepModel> steps =
          jsonResponse.map((stepJson) => StepModel.fromJson(stepJson)).toList();

      return steps;
    } else {
      return null;
    }
  }

  Future<StepModel?> getStepServiceById(int id) async {
    api = "$ENDPOINT/steps/get/id/$id";
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = StepModel.fromJson(jsonDecode(response.body));
      return res;
    } else {
      return null;
    }
  }

  Future<StepModel?> getStepServiceByStepId(String id) async {
    api = "$ENDPOINT/steps/get/step_id/$id";
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = StepModel.fromJson(jsonDecode(response.body));
      return res;
    } else {
      return null;
    }
  }
}
