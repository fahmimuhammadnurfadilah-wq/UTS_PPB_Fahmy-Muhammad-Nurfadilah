// lib/widgets/glass_header.dart

import 'package:flutter/material.dart';
import 'dart:ui'; // Untuk BackdropFilter

class GlassHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget child;

  const GlassHeader({
    required this.title,
    required this.subtitle,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Layout Kompleks: Stack untuk menumpuk gambar dan Glassmorphism Header
    return Stack(
      children: [
        // 1. Gambar Latar Belakang (Contoh)
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.blueGrey, // Placeholder sebelum ada aset gambar
          child: const Center(
            child: Text('Background Image', style: TextStyle(color: Colors.white)),
          ),
        ),

        // 2. Glassmorphism Overlay (Layout Kompleks)
        Positioned.fill( // Spesifikasi 3: Stack, Positioned
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),

        // 3. Konten Text (Spesifikasi 1: Row/Column)
        Positioned(
          top: 80,
          left: 20,
          child: Column( // Spesifikasi 1: Column
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),

        // 4. Child Widget (misalnya Tombol Navigasi)
        Positioned(
          bottom: 20,
          right: 20,
          child: child,
        ),
      ],
    );
  }
}