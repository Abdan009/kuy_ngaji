import 'package:flutter/material.dart';

class JadwalShalat {
  String id, nama, jam;
  JadwalShalat({
    @required this.id,
    @required this.nama,
    @required this.jam,
  });
}

List<JadwalShalat> mockJadwalShalat = [
  JadwalShalat(
    id: '1',
    nama: 'Subuh',
    jam: '05.00',
  ),
  JadwalShalat(
    id: '2',
    nama: 'Dzuhur',
    jam: '12.00',
  ),
  JadwalShalat(
    id: '3',
    nama: 'Asyar',
    jam: '15.00',
  ),
  JadwalShalat(
    id: '4',
    nama: 'Magrib',
    jam: '18.00',
  ),
  JadwalShalat(
    id: '5',
    nama: 'Isya',
    jam: '20.00',
  ),
];
