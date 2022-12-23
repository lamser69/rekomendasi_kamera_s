import 'package:flutter/material.dart';
import 'package:projec_latihan1/page/admin.dart';
import './page/tentang.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Container(
          height: size.height * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 90,
                  child: Image(
                    image: AssetImage("image/Logo.png"),
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                "Temukan Kamera Terbaik Kamu",
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          ),
          height: size.height * .7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeContainer(
                    icon: Image.asset('image/icon/tumbup.png'),
                    nama: 'Rekomendasi',
                    tujuan: () => print('awokaowk'),
                  ), 
                  HomeContainer(
                    icon: Image.asset('image/icon/newspaper.png'),
                    nama: 'Katalog',
                    tujuan: () => print('awokaowk'),
                  )],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [HomeContainer(
                  icon: Image.asset('image/icon/info.png'),
                    nama: 'Tentang',
                    tujuan: () => print('awokaowk'),
                ), HomeContainer(
                  icon: Image.asset('image/icon/user.png'),
                    nama: 'Admin',
                    tujuan: () => print('awokaowk'),
                )],
              )
            ],
          ),
        )
      ],
    ));
  }
}

class HomeContainer extends StatelessWidget {
  final Function tujuan;
  final Widget icon;
  final String nama;

  const HomeContainer({
    required this.nama,
    required this.icon,
    required this.tujuan,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tujuan;
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon,
                        SizedBox(height: 15,),
                      Text(nama, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                    ],)
                    ),
        
        
          
          
    
    );
  }
}
