
//Model Structure
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

  get elementUser => int.parse(setoran[1]['id'].toString());
}

//Model Data Variable
var studentData = [
  StudentModel(
    name: 'Ahmad',
    kelas: '4D',
    avatar: 'assets/images/avatar1.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Al-baqarah",
        "ayat_terakhir": 55,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Al-baqarah",
        "ayat_terakhir": 45,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Al-baqarah",
        "ayat_terakhir": 34,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Al-baqarah",
        "ayat_terakhir": 23,
      },
    ],
  ),
  StudentModel(
    name: 'Jihan',
    kelas: '5D',
    avatar: 'assets/images/avatar2.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 47,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 34,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 22,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 15,
      },
    ],
  ),
  StudentModel(
    name: 'Farhan',
    kelas: '5A',
    avatar: 'assets/images/avatar3.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 38,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 29,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Ali imran",
        "ayat_terakhir": 22,
      },
    ],
  ),
  StudentModel(
    name: 'Dika',
    kelas: '6A',
    avatar: 'assets/images/avatar4.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "An-Nisa",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "An-Nisa",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "An-Nisa",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "An-Nisa",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Sandysta',
    kelas: '5C',
    avatar: 'assets/images/avatar5.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "An-Naml",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "An-Naml",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "An-Naml",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "An-Naml",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Yahya',
    kelas: '6A',
    avatar: 'assets/images/avatar6.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Al-Maidah",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Al-Maidah",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Al-Maidah",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Al-Maidah",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Dimas',
    kelas: '4A',
    avatar: 'assets/images/avatar7.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Al-Kahf",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Al-Kahf",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Al-Kahf",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Al-Kahf",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Hamzah',
    kelas: '4B',
    avatar: 'assets/images/avatar8.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Al-Baqarah",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Al-Baqarah",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Al-Baqarah",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Al-Baqarah",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Zaidan',
    kelas: '5C',
    avatar: 'assets/images/avatar9.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Al-Anfal",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Al-Anfal",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Al-Anfal",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Al-Anfal",
        "ayat_terakhir": 20,
      },
    ],
  ),
  StudentModel(
    name: 'Farid',
    kelas: '6A',
    avatar: 'assets/images/avatar10.jpg',
    setoran: [
      {
        "id": 4,
        "tanggal": "29 juni 2021",
        "surat": "Maryam",
        "ayat_terakhir": 50,
      },
      {
        "id": 3,
        "tanggal": "26 juni 2021",
        "surat": "Maryam",
        "ayat_terakhir": 40,
      },
      {
        "id": 2,
        "tanggal": "23 juni 2021",
        "surat": "Maryam",
        "ayat_terakhir": 30,
      },
      {
        "id": 1,
        "tanggal": "20 juni 2021",
        "surat": "Maryam",
        "ayat_terakhir": 20,
      },
    ],
  ),
];