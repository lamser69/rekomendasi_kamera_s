import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
      body: Center(
        child: Text("COMING SOON MTFK"),
      ),
      );
  }
}