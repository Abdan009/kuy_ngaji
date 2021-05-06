import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuy_ngaji/model/models.dart';
import 'package:kuy_ngaji/ui/pages/alquran/juz/detail_juz.dart';
import 'package:kuy_ngaji/ui/widgets/widgets.dart';

class JuzPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.builder(
          itemCount: mockJuz.length,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.to(() => DetailJuz(mockJuz[index]));
                },
                child: Container(
                  child: Column(
                    children: [
                      if (index == 0)
                        SizedBox(
                          height: 20,
                        ),
                      CardListWidget(
                          nomor: mockJuz[index].nomorJuz,
                          title: "Juz " + mockJuz[index].nomorJuz),
                      if (index == mockSurah.length - 1)
                        SizedBox(
                          height: 20,
                        ),
                    ],
                  ),
                ),
              )),
    );
  }
}
