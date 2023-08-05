import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
final formatter = DateFormat('yyyy-MM-dd');
const uuid = Uuid();

enum Category { food, travel, leisure, work, shopping }
 const categoryIcons = {
    Category.food: Icons.fastfood,
    Category.travel: Icons.flight,
    Category.leisure: Icons.sunny,
    Category.work: Icons.work,
  };
class Expense {
 
  Expense({
    
     required this.title,
      required this.amount,
       required this.date,
        required this.category,
        }) : id = uuid.v4();//constructor)  
  final String id;
  final String title;
  final double amount;
  final DateTime date;//date is a object of DateTime class  which is a built in class in dart and flutter 
  final Category category; 

  String get formattedDate {
    return formatter.format(date);
  } 
}