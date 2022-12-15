import 'package:flutter/material.dart';
import 'package:projec_latihan1/page/admin.dart';
import './page/tentang.dart';

class home extends StatelessWidget {
  const home({
    Key? key,
  }) : super(key: key);

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
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Text(
                "TEMUKAN KAMERA TERBAIK KAMU",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                // alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    Text("Rekomendasi", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                  ],)
                  ),
                  
                  Container(
                  
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(
                      icon: const Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    Text("Katalog", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                    , 
                    Text("Kamera", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                  ],)
                  ),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                      icon: const Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder:(context) {
                              return tentang();
                            },)
                        );
                      },
                    ),
                    Text("Tentang", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                    ],
                  )
                  ),
                  Container(
                  
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                      icon: const Icon(
                        Icons.admin_panel_settings,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder:(context) {
                              return AdminPage();
                            },)
                        );
                      },
                    ),
                    Text("Admin", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white))
                    ],
                  )
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
