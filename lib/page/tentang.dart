import 'package:flutter/material.dart';

class tentang extends StatelessWidget {
  const tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF455A64),
        title: Center(
          child: Row(children: [
            Icon(Icons.linked_camera_rounded, size: 30),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rekomendasi",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kamera",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 30,),

            Text("Tentang Aplikasi",),

            SizedBox(height: 30,),

            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  
                ),
                Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  
                ),
                Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Informasi", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Aplikasi Sistem Rekomendasi Kamera ini dibuat menggunakan metode Weighted Aggregated Sum Product Assessment (WASPAS) untuk mendapatkan rekomendasi kamera terbaik sesuai dengan kebutuhan pengguna. Dengan memasukkan bobot terhadap spesifikasi kamera yang dibutuhkan, sistem dapat merekomendasikan kamera yang paling sesuai dengan kebutuhan pengguna. Pengguna memasukkan data kebutuhan pada diagram likert yang memiliki nilai antara satu (1) sampai lima (5)."),
            
          ],
        ),
      )
    );
  }
}