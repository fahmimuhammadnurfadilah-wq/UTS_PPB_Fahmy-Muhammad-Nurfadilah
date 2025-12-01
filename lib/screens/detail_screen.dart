// lib/screens/detail_screen.dart

import 'package:flutter/material.dart';
import '../data/suporter_data.dart';
import '../theme/app_colors.dart';

class DetailScreen extends StatelessWidget {
  final Club club;

  const DetailScreen({required this.club, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold menggunakan warna latar belakang gelap
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // 1. Bagian Foto Suporter (Hero Image)
                // Menggunakan Hero untuk transisi animasi dari Home Screen
                Hero(
                  tag: 'club-logo-${club.name}',
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    color: club.primaryColor,
                    // Menggunakan club.imageUrl untuk menampilkan FOTO SUPORTER
                    child: Image.asset( 
                      club.imageUrl, 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                
                // 2. Gradien Overlay
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        AppColors.primaryDark.withOpacity(0.8),
                        AppColors.primaryDark,
                      ],
                      stops: const [0.0, 0.7, 1.0],
                    ),
                  ),
                ),

                // 3. Tombol Kembali
                Positioned(
                  top: 40,
                  left: 10,
                  child: SafeArea(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: AppColors.secondaryLight, size: 30),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),

                // 4. Detail Singkat Klub (Nama, Kota)
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        club.city,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        club.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            // 5. Konten Utama (Motto & Profil)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul Motto
                  const Text(
                    'Motto',
                    style: TextStyle(
                      color: AppColors.secondaryLight,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    club.motto,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // --- PERUBAHAN DI SINI: MENAMPILKAN PROFIL SUPORTER ---
                  const Text(
                    'Profil Suporter', // Judul baru
                    style: TextStyle(
                      color: AppColors.secondaryLight,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Menampilkan teks profil suporter (String tunggal)
                  Text(
                    club.suporterProfile,
                    textAlign: TextAlign.justify, // Agar teks terlihat rapi
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.5, // Spasi baris agar mudah dibaca
                    ),
                  ),
                  // ----------------------------------------------------
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}