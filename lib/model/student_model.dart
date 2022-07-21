class StudentModel {
  StudentModel({
    required this.name,
    required this.kelas,
    required this.avatar,
    required this.setoran,
  });

  String name;
  String kelas;
  String avatar;
  List<Map<String, dynamic>> setoran;
}

var studentData = [
  StudentModel(
    name: 'Ahmad',
    kelas: '4D',
    avatar: 'assets/images/avatar1.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Al-baqarah", "ayat_terakhir": 23},
      {"tanggal": "23 juni 2021", "surat": "Al-baqarah", "ayat_terakhir": 34},
      {"tanggal": "26 juni 2021", "surat": "Al-baqarah", "ayat_terakhir": 45},
      {"tanggal": "29 juni 2021", "surat": "Al-baqarah", "ayat_terakhir": 55}
    ],
  ),
  StudentModel(
    name: 'Jihan',
    kelas: '5D',
    avatar: 'assets/images/avatar2.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Ali imran", "ayat_terakhir": 15},
      {"tanggal": "23 juni 2021", "surat": "Ali imran", "ayat_terakhir": 22},
      {"tanggal": "26 juni 2021", "surat": "Ali imran", "ayat_terakhir": 34},
      {"tanggal": "29 juni 2021", "surat": "Ali imran", "ayat_terakhir": 47}
    ],
  ),
  StudentModel(
    name: 'Farhan',
    kelas: '5A',
    avatar: 'assets/images/avatar3.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Ali imran", "ayat_terakhir": 22},
      {"tanggal": "23 juni 2021", "surat": "Ali imran", "ayat_terakhir": 29},
      {"tanggal": "26 juni 2021", "surat": "Ali imran", "ayat_terakhir": 38},
      {"tanggal": "29 juni 2021", "surat": "Ali imran", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Dika',
    kelas: '6A',
    avatar: 'assets/images/avatar4.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "An-Nisa", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "An-Nisa", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "An-Nisa", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "An-Nisa", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Sandysta',
    kelas: '5C',
    avatar: 'assets/images/avatar5.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "An-Naml", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "An-Naml", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "An-Naml", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "An-Naml", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Yahya',
    kelas: '6A',
    avatar: 'assets/images/avatar6.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Al-Maidah", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "Al-Maidah", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "Al-Maidah", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "Al-Maidah", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Dimas',
    kelas: '4A',
    avatar: 'assets/images/avatar7.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Al-Kahf", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "Al-Kahf", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "Al-Kahf", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "Al-Kahf", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Hamzah',
    kelas: '4B',
    avatar: 'assets/images/avatar8.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Al-Baqarah", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "Al-Baqarah", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "Al-Baqarah", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "Al-Baqarah", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Zaidan',
    kelas: '5C',
    avatar: 'assets/images/avatar9.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Al-Anfal", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "Al-Anfal", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "Al-Anfal", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "Al-Anfal", "ayat_terakhir": 50}
    ],
  ),
  StudentModel(
    name: 'Farid',
    kelas: '6A',
    avatar: 'assets/images/avatar10.jpg',
    setoran: [
      {"tanggal": "20 juni 2021", "surat": "Maryam", "ayat_terakhir": 20},
      {"tanggal": "23 juni 2021", "surat": "Maryam", "ayat_terakhir": 30},
      {"tanggal": "26 juni 2021", "surat": "Maryam", "ayat_terakhir": 40},
      {"tanggal": "29 juni 2021", "surat": "Maryam", "ayat_terakhir": 50}
    ],
  ),
];
