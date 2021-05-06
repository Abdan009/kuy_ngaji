part of 'models.dart';

class JadwalShalat {
  String id, nama, jam;
  DateTime tanggal;
  JadwalShalat({
    @required this.id,
    @required this.nama,
    @required this.jam,
    @required this.tanggal,
  });
}

List<JadwalShalat> mockJadwalShalat = [
  JadwalShalat(
    id: '1',
    nama: 'Subuh',
    jam: '05.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  JadwalShalat(
    id: '2',
    nama: 'Dzuhur',
    jam: '12.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  JadwalShalat(
    id: '3',
    nama: 'Asyar',
    jam: '15.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  JadwalShalat(
    id: '4',
    nama: 'Magrib',
    jam: '18.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
  JadwalShalat(
    id: '5',
    nama: 'Isya',
    jam: '20.00',
    tanggal: DateTime.utc(2021, 5, 3),
  ),
];
