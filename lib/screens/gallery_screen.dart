// lib/screens/gallery_screen.dart

import 'package:flutter/material.dart';
import '../data/suporter_data.dart';
import '../theme/app_colors.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
        title: const Text('Galeri Foto & Logo Klub'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.secondaryLight,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: suporterData.length + 1, // +1 untuk item bonus
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final String name;
            final Color color;
            final String imagePath; 

            if (index < suporterData.length) {
              final club = suporterData[index];
              name = club.name;
              color = club.primaryColor;
              imagePath = club.imageUrl; // Menggunakan path foto suporter dari data
            } else {
              // Item ke-6 (Item Bonus: Foto Suporter Tambahan)
              name = 'The Jak Mania';
              color = AppColors.orangePersija; 
              imagePath = 'assets/supporterpersija.png'; // Menggunakan path aset
            }

            return Card(
              color: color.withOpacity(0.8),
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Stack( 
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset( 
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(15)),
                      ),
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}