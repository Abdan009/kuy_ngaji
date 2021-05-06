import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuy_ngaji/model/models.dart';
import 'package:kuy_ngaji/ui/pages/alquran/surah/detail_surah_page.dart';
import 'package:kuy_ngaji/ui/widgets/widgets.dart';

class SurahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.builder(
          itemCount: mockSurah.length,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.to(
                    () => DetailSurahPage(mockSurah[index]),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      if (index == 0)
                        SizedBox(
                          height: 20,
                        ),
                      CardListWidget(
                          nomor: mockSurah[index].nomor,
                          title: mockSurah[index].nama,
                          subTitle: mockSurah[index].arti),
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
