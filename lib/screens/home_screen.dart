// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';
import '../widgets/glass_header.dart';
import '../theme/app_colors.dart'; // Pastikan AppColors diimpor
import 'detail_screen.dart';
import 'gallery_screen.dart';
import 'responsive_screen.dart';
import '../data/suporter_data.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 600 ? 4 : 2; 

        return Scaffold(
          // Latar belakang sudah hitam
          backgroundColor: AppColors.primaryDark, 
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlassHeader(
                  title: 'GALERI SUPORTER',
                  subtitle: 'Indonesia Punya Cerita',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResponsiveScreen()),
                      );
                    },
                    child: const Text('Uji Responsif'),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    'Pilih Cerita Klub Favorit Anda',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      // 👇👇 PERBAIKAN: Ubah warna teks dari hitam ke putih atau AppColors.secondaryLight
                      color: AppColors.secondaryLight, // Menggunakan warna dari tema Anda
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: suporterData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      final club = suporterData[index];
                      return CustomCard(
                        title: club.name,
                        imagePath: club.logoPath,
                        color: club.primaryColor,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(club: club),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GalleryScreen()),
                      );
                    },
                    icon: const Icon(Icons.photo_library),
                    label: const Text('Galeri Foto Suporter'),
                    style: ElevatedButton.styleFrom(
                      // Menggunakan AppColors untuk konsistensi tema
                      backgroundColor: AppColors.secondaryLight,
                      foregroundColor: AppColors.primaryDark,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}