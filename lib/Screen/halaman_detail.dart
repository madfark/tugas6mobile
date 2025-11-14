import 'package:flutter/material.dart';
import 'package:page/Model/elektronik_model.dart';

class HalamanDetail extends StatelessWidget {
  final int i;
  HalamanDetail({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    Elektronik data = Elektronik();

    return Scaffold(
      appBar: AppBar(
        title: Text(data.nama[i]),
        backgroundColor: Colors.lightBlue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // Gambar Produk
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    data.gambar[i],
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),

                // Isi detail
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Nama Produk
                      Text(
                        data.nama[i],
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Harga
                      Text(
                        "Rp ${data.harga[i]}",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlue,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Deskripsi
                      Text(
                        data.deskripsi[i],
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),

                      const SizedBox(height: 25),

                      // Tombol beli
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Beli Sekarang",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
