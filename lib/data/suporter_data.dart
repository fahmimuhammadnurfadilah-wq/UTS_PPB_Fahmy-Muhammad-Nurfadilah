// lib/data/suporter_data.dart

import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class Club {
  final String name;
  final String city;
  final String motto;
  final Color primaryColor;
  final String logoPath; // Path gambar logo klub (untuk CustomCard di Home Screen)
  final String imageUrl; // Path gambar suporter (untuk DetailScreen)
  
  // --- PERUBAHAN: DARI List<String> famousChants KE String suporterProfile ---
  final String suporterProfile; 

  Club({
    required this.name,
    required this.city,
    required this.motto,
    required this.primaryColor,
    required this.logoPath,
    required this.imageUrl, 
    required this.suporterProfile, // Menggunakan suporterProfile
  });
}

final List<Club> suporterData = [
  Club(
    name: 'Arema FC',
    city: 'Malang',
    motto: 'Salam Satu Jiwa',
    primaryColor: AppColors.blueArema,
    logoPath: 'assets/arema.png', 
    imageUrl: 'assets/supportermalang.png', 
    suporterProfile: 
        'Aremania adalah identitas suporter Arema FC yang tumbuh kuat sejak akhir 1980-an, bersamaan dengan lahirnya klub Arema di Malang. Mereka terbentuk tanpa struktur resmi, tetapi justru terkenal karena solidaritas organik yang mengalir begitu alami di antara warga Malang Raya. Seiring perjalanan waktu, Aremania menjelma menjadi salah satu kelompok suporter terbesar di Indonesia, dikenal dengan gaya dukungan yang lantang, penuh energi, serta warna biru yang melekat sebagai simbol kebanggaan Arek Malang. Atmosfer Stadion Kanjuruhan dan Gajayana sering menjadi panggung bagi nyanyian keras yang seolah menggulung dari tribun ke langit, didorong oleh rasa persaudaraan yang kental. Meski menempuh berbagai fase pahit dan manis, Aremania tetap berdiri sebagai wajah Arema FC—komunitas yang tidak hanya menjaga harga diri klub, tetapi juga memelihara jati diri Malang sebagai kota yang hangat, berani, dan penuh semangat. 💙🔥',
  ),
  Club(
    name: 'Persib Bandung',
    city: 'Bandung',
    motto: 'Pangeran Biru',
    primaryColor: AppColors.bluePersib,
    logoPath: 'assets/persib.png', 
    imageUrl: 'assets/supporterpersib.png', 
    suporterProfile: 
        'Berakar dari kecintaan warga Bandung terhadap Persib sejak era 1960–1980-an, suporter Persib—yang dikenal sebagai Bobotoh—tumbuh dari kelompok-kelompok kecil di Stadion Siliwangi menjadi komunitas besar yang membentuk identitas budaya kota. Istilah Bobotoh sendiri bermakna “pendorong” atau “penyemangat”, mencerminkan peran mereka yang bukan sekadar penonton, tetapi kekuatan emosional bagi tim. Memasuki 1990–2000-an, dukungan ini semakin terstruktur dengan lahirnya komunitas besar seperti Viking Persib Club (1993) dan Bomber (1997), yang membawa warna baru lewat koreografi, lagu tribun, visual khas biru, hingga tur tandang masif. Seiring perkembangan stadion, media sosial, dan kreativitas anak muda Bandung, Bobotoh menjelma menjadi salah satu basis suporter terbesar di Indonesia, bahkan di Asia Tenggara, dengan kultur yang kuat, solid, dan penuh ekspresi. Kini, Bobotoh bukan hanya pendukung Persib, tetapi simbol kebanggaan kota Bandung—komunitas yang menyatukan generasi, menjaga tradisi, dan menjadi bagian tak terpisahkan dari identitas Maung Bandung. 💙🔥',
  ),
  Club(
    name: 'Persija Jakarta',
    city: 'Jakarta',
    motto: 'Satu Jiwa',
    primaryColor: AppColors.orangePersija,
    logoPath: 'assets/persija.png', 
    imageUrl: 'assets/supporterpersija.png', 
    suporterProfile: 
        'The Jakmania adalah identitas suporter Persija Jakarta yang tumbuh sejak akhir 1990-an sebagai wadah resmi bagi para pecinta Macan Kemayoran di seluruh penjuru ibu kota. Berawal dari komunitas pecinta Persija yang tersebar di berbagai sudut Jakarta, The Jakmania berkembang menjadi kelompok suporter besar dengan karakter yang energik, penuh warna oranye, dan memiliki ikatan emosional kuat terhadap klub kebanggaan kota metropolitan. Mereka dikenal dengan antusiasme tanpa henti, nyanyian yang menggema dari tribun ke jalanan, serta solidaritas antaranggotanya yang membuat Persija memiliki dukungan masif di setiap laga kandang maupun tandang. Dengan identitas urban yang kuat, kreativitas anak-anak Jakarta, dan rasa bangga yang menancap dalam, The Jakmania kini menjadi ikon budaya sepak bola ibu kota—komunitas yang bukan hanya menjaga marwah Persija, tetapi juga mencerminkan denyut hidup Jakarta yang dinamis, keras, namun hangat dalam kebersamaan. 🧡🔥',
  ),
  Club(
    name: 'Persebaya Surabaya',
    city: 'Surabaya',
    motto: 'Wani!',
    primaryColor: AppColors.greenPersebaya,
    logoPath: 'assets/persebaya.png', 
    imageUrl: 'assets/supporterpersebaya.png', 
    suporterProfile: 
        'Bonek—suporter setia Persebaya Surabaya—tumbuh sebagai salah satu identitas paling kuat dalam dunia sepak bola Indonesia sejak akhir 1980-an, ketika dukungan spontan warga Surabaya menjelma menjadi gelombang hijau yang tak terbendung. Berakar dari kultur Arek Surabaya yang berani, lugas, dan penuh solidaritas, Bonek berkembang tanpa struktur resmi namun tetap solid sebagai komunitas besar yang selalu hadir mengawal Persebaya ke mana pun melangkah. Tribun mereka dikenal penuh energi, dengan nyanyian yang bergulung seperti arus Brantas dan lautan hijau yang seolah memeluk tim di setiap laga. Seiring perjalanan waktu, Bonek semakin dewasa dan terorganisasi, membawa semangat “Satu Nyali, Wani!” sebagai simbol keberanian dan loyalitas yang tak pernah padam. Kini mereka bukan hanya suporter, tetapi wajah Surabaya sendiri—komunitas yang menjaga martabat Persebaya, merayakan identitas kota yang keras kepala namun setia, dan menjadi bukti bahwa cinta pada klub bisa menyatu erat dengan jiwa sebuah daerah. 💚🔥',
  ),
  Club(
    name: 'PSS Sleman',
    city: 'Sleman',
    motto: 'Super Elja',
    primaryColor: AppColors.greenPSS,
    logoPath: 'assets/pss.png', 
    imageUrl: 'assets/supportersleman.png', 
    suporterProfile: 
        'Suporter PSS Sleman—yang dikenal sebagai Brigata Curva Sud (BCS) dan Slemania—lahir dari semangat warga Sleman yang sejak akhir 1990-an hingga awal 2000-an ingin menghadirkan identitas tribun yang khas, solid, dan penuh karakter. Slemania tumbuh duluan sebagai komunitas pendukung terbesar, lalu BCS hadir sebagai gelombang baru yang menekankan kerapihan koreografi, nyanyian nonstop, serta disiplin tribun ala suporter modern. Kedua kelompok ini membentuk atmosfer Stadion Maguwoharjo yang terkenal intens, estetik, dan penuh gema, membuat “Maguwarriors” menjadi salah satu tribun paling hidup di Indonesia. Dengan elemen budaya Sleman yang kental, kreativitas tanpa batas, dan solidaritas yang mengakar, suporter PSS telah menjelma menjadi simbol kebanggaan daerah—komunitas yang bukan hanya menjaga martabat klub, tetapi juga menjadi wajah Sleman di mata sepak bola nasional. 🦅🌿',
  ),
];