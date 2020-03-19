import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ceo;

  DetailScreen(this.ceo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ceo.name),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            ceo.imgQuote,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  ceo.name,
                  style: TextStyle(fontSize: 26.0),
                ),
                SizedBox(height: 4),
                Text(
                  'CEO ${ceo.ceo}',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 15),
                Text(
                  'Umur: ${ceo.age} tahun',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 4),
                Text(
                  'Kekayaan bersih:  ${ceo.wealt} Miliar USD',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 4),
                ceo.id == 8
                    ? Text(
                        'Memiliki lebih dari ${ceo.employee} karyawan di SpaceX dan 37.000 di Tesla',
                        style: TextStyle(fontSize: 18.0),
                      )
                    : Text(
                        'Memiliki lebih dari ${ceo.employee} karyawan',
                        style: TextStyle(fontSize: 18.0),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
