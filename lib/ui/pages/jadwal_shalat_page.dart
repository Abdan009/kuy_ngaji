import 'package:flutter/material.dart';
import 'package:kuy_ngaji/model/jadwal_shalat.dart';

class JadwalShalatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Shalat'),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Indramayu',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Isya 20.00',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  '8 menit lagi',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: 270,
            width: double.infinity,
            margin: EdgeInsets.only(top: 120, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 4), blurRadius: 4),
                ]),
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 15, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range,
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hari ini / Jum'at",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("9 September 2016 / 8 Dzulhizah 1437 ")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 170,
                    child: ListView.builder(
                      itemCount: mockJadwalShalat.length,
                      itemBuilder: (_, index) => Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(mockJadwalShalat[index].nama,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Text(mockJadwalShalat[index].jam + ' WIB',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
