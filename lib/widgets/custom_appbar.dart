// lib/widgets/custom_card.dart

import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String title;
  // --- PERUBAHAN TIPE DATA: DARI IconData KE String ---
  final String imagePath; 
  // --------------------------------------------------
  final VoidCallback onTap;
  final Color color;

  const CustomCard({
    required this.title,
    // --- PERUBAHAN PARAMETER: Menerima String path gambar ---
    required this.imagePath, 
    // --------------------------------------------------------
    required this.onTap,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- PERUBAHAN WIDGET: DARI Icon KE Image.asset ---
            // Menggunakan Expanded agar gambar menyesuaikan ruang yang tersedia
            Expanded( 
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Hero(
                  // Menambahkan Hero widget untuk transisi dari Home ke Detail
                  tag: 'club-logo-$title', 
                  child: Image.asset(
                    imagePath, // Menggunakan path gambar
                    fit: BoxFit.contain, 
                  ),
                ),
              ),
            ),
            // ---------------------------------------------------
            const SizedBox(height: 5), 
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.secondaryLight,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}