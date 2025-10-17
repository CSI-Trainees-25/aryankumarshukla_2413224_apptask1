import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/screens/home/widget/tasks.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgcolor;
  Color? iconColor;
  Color? btncolor;
  num? left;
  num? done;  
  bool? isLast;
  Task({
    this.iconData,
    this.title,
    this.bgcolor,
    this.iconColor,
    this.btncolor,
    this.left,
    this.done,
    this.isLast = false
    });
  static List<Task> generateTasks() {
  return [
    Task(
    iconData: Icons.person_rounded,
    title: 'Personal',
    bgcolor: kYellowLight,
    iconColor: kYellowDark,
    btncolor: kYellow,
    left:3,
    done:5,
    ),
    Task(
    iconData: Icons.cases_rounded,
    title: 'Work',
    bgcolor: kRedLight,
    iconColor: kRedDark,
    btncolor: kRed,
    left:0,
    done:0,
    ),
    Task(
    iconData: Icons.favorite_rounded,
    title: 'Health',
    bgcolor: kBlueLight,
    iconColor: kBlueDark,
    btncolor: kBlue,
    left:0,
    done:0,
    ),
    Task(isLast: true)
  ];
}
}