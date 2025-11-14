import 'package:flutter/material.dart';
import 'package:page/Model/elektronik_model.dart';
import 'package:page/Screen/halaman_detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    Elektronik elektronik = Elektronik();

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Daftar Elektronik")),
      body: Center(
        child: ListView.builder(
          itemCount: elektronik.nama.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(elektronik.nama[index]),
                subtitle: Text("Rp ${elektronik.harga[index]}"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HalamanDetail(i: index),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
