import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../resources/files.dart';
import '../models/fitness_response.dart';
import 'exercise_item.dart';
import 'goal_item.dart';

class HomeController extends GetxController{
  RxList<GoalItem> goalItems = RxList();
  RxList<ExerciseItem> exerciseItems = RxList();

  void readJsonFile() async {
    String jsonString = await rootBundle.loadString(Files.jsonFitnessFilePath);
    var map = jsonDecode(jsonString);
    var response = FitnessResponse.fromJson(map);

    goalItems.value = response.goals
      .map((e) => GoalItem(
        cover: e.cover,
        title: e.title,
        subTitle: e.subTitle,
        caloriesCount: e.caloriesCount,
        durationSeconds: e.durationSeconds))
    .toList();

    exerciseItems.value = response.dailyExercises
      .map((e) => ExerciseItem(
        title: e.title,
        cover: e.cover,
        caloriesCount: e.caloriesCount,
        durationSeconds: e.durationSeconds)).toList();

  }
}