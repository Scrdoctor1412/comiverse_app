import 'package:flutter/material.dart';

class AppPallete {
  const AppPallete._();
  static const Color primaryLight = Color(0xFF0EA5E9); // Sky-500
  static const Color primaryMain = Color(0xFF0284C7); // Sky-600
  static const Color primaryDark = Color(0xFF2563EB); // Blue-600
  static const Color background = Color(0xFFF8FAFC); // Slate-50
  static const Color surface = Colors.white;
  static const Color textMain = Color(0xFF1E293B); // Slate-800
  static const Color textSecondary = Color(0xFF64748B); // Slate-500
  static const Color accentRose = Color(0xFFF43F5E);
  static const Color accentAmber = Color(0xFFF59E0B);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLight, primaryDark],
  );
}
