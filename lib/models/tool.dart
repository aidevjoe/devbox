import 'package:flutter/material.dart';

class ToolItem {
  final String name;
  final IconData icon;
  final String title;
  final String subtitle;
  final String description;
  final Widget page;

  ToolItem({
    required this.name,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.page,
  });
}
