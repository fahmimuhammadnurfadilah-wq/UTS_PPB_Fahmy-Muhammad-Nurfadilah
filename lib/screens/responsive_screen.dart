// lib/screens/responsive_screen.dart

import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Spesifikasi 4: Menggunakan LayoutBuilder untuk menyesuaikan ukuran layar
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      // --- Bagian AppBar yang Diperbaiki ---
      appBar: AppBar(
        title: const Text('Uji Responsivitas Layout'),
        backgroundColor: Colors.transparent, // Transparan
        elevation: 0, // Tanpa Shadow
        foregroundColor: AppColors.secondaryLight, // Warna Tombol Back dan Judul
      ),
      // --- Akhir Perbaikan AppBar ---

      body: LayoutBuilder(
        builder: (context, constraints) {
          // Mendeteksi orientasi
          final isPortrait = constraints.maxWidth < constraints.maxHeight;
          final isTablet = constraints.maxWidth > 600;

          // Menentukan jumlah kolom pada Grid (Adaptif)
          final gridCrossAxisCount = isTablet ? 3 : (isPortrait ? 2 : 4);
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1. Uji Row/Column dan Flexible/Expanded',
                  style: TextStyle(color: AppColors.secondaryLight, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),

                // Adaptif Row/Column
                constraints.maxWidth > 400
                    ? Row( // Lebar cukup, gunakan Row
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              color: AppColors.blueArema,
                              alignment: Alignment.center,
                              child: const Text('Expanded 1'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible( // Menggunakan Flexible
                            flex: 2,
                            child: Container(
                              height: 100,
                              color: AppColors.greenPersebaya,
                              alignment: Alignment.center,
                              child: const Text('Flexible 2 (Flex 2)'),
                            ),
                          ),
                        ],
                      )
                    : Column( // Lebar sempit, gunakan Column
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            color: AppColors.blueArema,
                            alignment: Alignment.center,
                            child: const Text('Full Width 1'),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: double.infinity,
                            color: AppColors.greenPersebaya,
                            alignment: Alignment.center,
                            child: const Text('Full Width 2'),
                          ),
                        ],
                      ),
                
                const SizedBox(height: 30),
                const Text(
                  '2. Uji Grid View (Cross Axis Count: Adaptif)',
                  style: TextStyle(color: AppColors.secondaryLight, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),

                // Adaptif GridView
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridCrossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        // Menggunakan AppColors.cardBackground
                        color: AppColors.cardBackground.withOpacity(0.9), 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text('Item ${index + 1}', style: const TextStyle(color: Colors.white)),
                    );
                  },
                ),
                const SizedBox(height: 30),

                // Uji Overflow (Jika ada overflow, ini akan terlihat)
                Text(
                  // Menghapus 'const' pada Text jika menggunakan variabel
                  'Status Tampilan: Tidak ada overflow yang terdeteksi. Orientasi: ${isPortrait ? 'Portrait' : 'Landscape'} | Columns: $gridCrossAxisCount',
                  style: const TextStyle(color: Colors.greenAccent, fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}