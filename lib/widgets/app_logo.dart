import 'package:comiverse_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppLogo {
  static Widget createAppLogo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: AppPallete.primaryGradient,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppPallete.primaryMain.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Icon(Icons.bolt, color: Colors.white, size: 32),
    );
  }
}
