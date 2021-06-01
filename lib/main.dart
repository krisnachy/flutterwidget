import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Hello, World'),
      //   ),
      //   body: Center(
      //     child: Text('Hello, World!'),
      //   ),
      // ),

      //Menggunakan Scaffold (tampilan dasar material design/ halaman aplikasi)
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Menambahkan Appbar
      appBar: AppBar(
        //Menambahkan appbar bagian kiri dengan burger
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text('First Screen'),
        //Menambahkan icon
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      //Menambahkan Body

      //Container adalah widget yang digunakan untuk styling
      // body: Container(
      //   child: Text('Hi', style: TextStyle(fontSize: 40)),
      //   decoration: BoxDecoration(
      //       //Warna background text
      //       color: Colors.red,
      //       //Bentuk background text
      //       shape: BoxShape.circle,
      //       //Border
      //       border: Border.all(color: Colors.green, width: 3),
      //       //Agar ujung border tidak lancip
      //       //borderRadius: BorderRadius.circular(10),
      //       //Shadow pada background text
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black,
      //           offset: Offset(3, 6),
      //           blurRadius: 10,
      //         )
      //       ]),
      // ),

      //Widget Padding
      // body: Padding(
      //   padding: EdgeInsets.all(30),
      //   child: Text('Ini Padding'),
      // ),

      //Widget Row agar tersusun secara horizontal
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     IconButton(icon: Icon(Icons.share)),
      //     IconButton(icon: Icon(Icons.thumb_up)),
      //     IconButton(icon: Icon(Icons.thumb_down)),
      //   ],
      // ),

      //Widget Column agar sejajar secara vertikal
      body: Column(
        children: <Widget>[
          Text(
            'Sebuah Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Lorem ipsum dolor sit amet')
        ],
      ),

      //Widget Center agar ditengah
      // body: Center(
      //   child: Text('Hello World!'),
      // ),
      //Menambahkan floating button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
