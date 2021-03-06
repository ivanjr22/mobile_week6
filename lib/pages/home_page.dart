import 'package:flutter/material.dart';
import 'package:mobile_week6/models/item.dart';
import 'package:mobile_week6/pages/item_page.dart';

class HomePage extends StatelessWidget{
  final List<Item> Items = [ 
   Item(kode : 'A01', name: 'Sugar', price: 5000 , stok: '10' , deskripsi: 'Gula merupakan salah satu pemanis yang umum dikonsumsi masyarakat. Gula biasa digunakan sebagai pemanis di makanan maupun minuman, dalam bidang makanan, selain sebagai pemanis, gula juga digunakan sebagai stabilizer dan pengawet. Gula merupakan suatu karbohidrat sederhana yang umumnya dihasilkan dari tebu.' ),
   Item(kode : 'B01', name: 'Salt', price: 2000, stok: '15' , deskripsi: 'Dalam ilmu kimia, garam adalah senyawa ionik yang terdiri dari ion positif (kation) dan ion negatif (anion), sehingga membentuk senyawa netral (tanpa bermuatan). Garam terbentuk dari hasil reaksi asam dan basa. Natrium klorida (NaCl), bahan utama garam dapur adalah suatu garam.' ),
   Item(kode : 'C01', name: 'Cooking Oil 1 LT', price: 15000, stok: '5' , deskripsi: 'Minyak masakan adalah minyak atau lemak yang berasal dari pemurnian bagian tumbuhan, hewan, atau dibuat secara sintetik yang dimurnikan dan biasanya digunakan untuk menggoreng makanan. Minyak masakan umumnya berbentuk cair dalam suhu kamar.' )
 ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toko Sembako"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: Items.length,
              itemBuilder: (context, index) {
                final item = Items[index];
                return Card(
                    child: Container(
                  margin: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemPage(tempItem: item)));
                    },
                    child: Row(
                      children: [
                        Expanded(child: Text(item.kode)),
                        Expanded(child: Text(item.name)),
                        Expanded(child: Text(item.stok)),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )),
                      ],
                    ),
                  ),
                ));
            }),
        ),
      ),
    );
  }
}