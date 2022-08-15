import 'package:flutter/material.dart';

class RecommendedModel{
  Icon? icon;
  String? name;
  String? type;
  String? salary;

  RecommendedModel({this.name, this.icon, this.salary, this.type});

  static List<RecommendedModel> recommended = [
    RecommendedModel(
      icon: const Icon(Icons.wb_incandescent,
        color: Colors.blue,
        size: 35,
      ),
      name: 'Graphic Designer',
      type: 'Part Time',
      salary: '\$8'
    ),
    RecommendedModel(
        icon: const Icon(Icons.mobile_friendly,
          color: Colors.blue,
          size: 35,
        ),
        name: 'App Designer',
        type: 'Full Time',
        salary: '\$180'
    ),
    RecommendedModel(
        icon: const Icon(Icons.desktop_mac,
          color: Colors.blue,
          size: 35,
        ),
        name: 'Desktop Developer',
        type: 'Full Time',
        salary: '\$80'
    ),

    RecommendedModel(
        icon: const Icon(Icons.web,
          color: Colors.blue,
          size: 35,
        ),
        name: 'Web Developer',
        type: 'Part Time',
        salary: '\$30'
    ),
    RecommendedModel(
        icon: const Icon(Icons.book,
          color: Colors.blue,
          size: 35,
        ),
        name: 'Teacher',
        type: 'Full Time',
        salary: '\$50'
    ),



  ];
}