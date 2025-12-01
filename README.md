Nama: Fahmy Muhammad Nurfadilah
NIM: 230102043
Email: fahmimuhammadnurfadilah@gmail.com

DESKRIPSI APLIKASI

Galeri Suporter Klub Sepak Bola Indonesia adalah aplikasi mobile berbasis Flutter yang menampilkan katalog 5 klub suporter utama Indonesia serta 1 suporter bonus, lengkap dengan informasi kota asal, moto, dan chants terkenal mereka.

Aplikasi ini dikembangkan untuk memenuhi Tugas UTS Pemrograman Perangkat Bergerak dengan memenuhi beberapa spesifikasi utama:

Implementasi 5 jenis layout Flutter
(Dasar, Multi-Child, Kompleks, Scrollable, Grid/ListView)

Memiliki 3 halaman utama: Home, Detail, dan Galeri (Grid)

Menggunakan ThemeData untuk tema gelap yang konsisten

Menggunakan Image.asset untuk seluruh gambar dari folder assets

Struktur folder bersih, rapi, dan modular

Menampilkan kombinasi Stack + GridView untuk tampilan modern

TEKNOLOGI YANG DIGUNAKAN
Teknologi	Versi	Kegunaan
Flutter SDK	Latest	Framework utama
Dart	Latest	Bahasa pemrograman
Material Design 3	Latest	UI Components & theming
Hero Widget	–	Animasi transisi antar halaman (DetailScreen)
STRUKTUR FOLDER PROJECT

Struktur project dibuat modular untuk memisahkan data, tampilan (screens), dan tema.

flutter_application_1/
├── assets/
│   └── *.png                        # Semua gambar suporter & logo klub
├── lib/
│   ├── main.dart                    # Entry point aplikasi
│   ├── data/
│   │   └── suporter_data.dart       # Data model (Class Club) & data statis
│   ├── screens/
│   │   ├── home_screen.dart         # Halaman utama (HOME PAGE)
│   │   ├── detail_screen.dart       # Halaman detail klub (DETAIL PAGE)
│   │   └── gallery_screen.dart      # Halaman galeri foto (GRID PAGE)
│   └── theme/
│       └── app_colors.dart          # Definisi warna kustom tema
└── pubspec.yaml                     # Dependencies & asset registry

IMPLEMENTASI 5 JENIS LAYOUT FLUTTER
1. Layout Dasar (Single Child)

Widget: Container, Padding, Center
Lokasi Implementasi:

HomeScreen → Card klub

GalleryScreen → wrapper tiap item
Digunakan untuk margin, radius, dan alignment.

2. Layout Multi-Child (Row & Column)

Widget: Row, Column, Expanded
Lokasi Implementasi:

HomeScreen → penyusunan daftar kartu klub

DetailScreen → ikon & teks chants dalam Row

3. Layout Kompleks (Stack)

Widget: Stack, Positioned
Lokasi Implementasi:

DetailScreen → gambar header + gradient + tombol Back

GalleryScreen → overlay nama klub di atas gambar

4. Layout Scrollable

Widget: SingleChildScrollView
Lokasi Implementasi:

DetailScreen → konten detail dapat digulir

5. Layout Grid

Widget: GridView.builder
Lokasi Implementasi:

GalleryScreen → 5 klub + 1 suporter bonus (6 item, 2 kolom)

SPESIFIKASI HALAMAN & FITUR UTAMA
1. Home Page (home_screen.dart)
Requirement	Implementasi
Header aplikasi	AppBar dengan teks dan ikon
Row + Column layout	Kartu klub tersusun rapi
Navigasi halaman	Card → DetailScreen (Navigator.push)
2. Detail Page (detail_screen.dart)
Requirement	Implementasi
Stack header	Gambar + gradient + tombol back
Scrollable content	Dibungkus SingleChildScrollView
Info lengkap	Moto, kota, chants
Row untuk chants	Ikon 🎵 + teks chant
3. Grid Page (gallery_screen.dart)
Requirement	Implementasi
GridView minimal 6 item	GridView.builder
Gambar + nama klub	Menggunakan Stack overlay
Bonus item	The Jak Mania (Thejak.png)
