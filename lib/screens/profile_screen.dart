import 'package:flutter/material.dart';
import 'package: '

class ProfileScreen extends StatefulWidget {
  // PERBAIKAN: Mengubah 'new' menjadi nama class 'ProfileScreen'
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = ' ';
  String userName = '';
  int favoriteCandiCount = 0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          // Tambahkan SafeArea dan Padding agar tata letak rapi
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 50), // Memberi jarak dari atas layar
                // TODO: 2. Buat ProfileHeader (foto profil)
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // PERBAIKAN: Menambahkan koma setelah 'width: 2'
                          border: Border.all(color: Colors.deepPurple, width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          // Menggunakan aset gambar default atau placeholder
                          backgroundImage: AssetImage('assets/images/placeholder.png'),
                        ),
                      ),
                      // Contoh tombol edit foto di pojok kanan bawah avatar
                      if (isSignedIn)
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt, 
                              color: Colors.deepPurple),
                        ),
                    ],
                  ),

                ),
                const SizedBox(height: 20),
                // TODO: 3. Buat ProfileInfo (info pengguna)
                Row(children: [
                  SizedBox(
                    width: mediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Icon(Icons.lock, color: Colors.amber),
                      SizedBox(width: 8),
                      Text('Pengguna', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                    ],),
                  )
                  Expanded(
                    child: Text(': $userName',
                        style: const TextStyle(fon),
                        ))

                ],)
                // TODO: 4. Buat ProfileActions (tombol sign in/out)
              ],
            ),
          ),
        ],
      ), // PERBAIKAN: Menambahkan titik koma (;) di sini
    );
  }
}
