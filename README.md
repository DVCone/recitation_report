# Halaqah Qur'an 
[![wakatime](https://wakatime.com/badge/user/ea3799ac-dc84-430f-9b45-6cd02a01eccd/project/b9fba97a-af6d-4548-94f6-8a156e8f0b59.svg)](https://wakatime.com/badge/user/ea3799ac-dc84-430f-9b45-6cd02a01eccd/project/b9fba97a-af6d-4548-94f6-8a156e8f0b59)

---
## Deskripsi dan detail:
**Aplikasi Halaqah Qur'an** merupakan sebuah Aplikasi notasi laporan untuk mendata perkembangan dari hafalan kitab suci Al-Qur'an oleh para santri.

Aplikasi ini dapat berjalan dengan baik pada platform Android beserta semua variasi ukuran layar (Responsive) bagi platform halaman web. 

Berikut adalah detail data program dari **Aplikasi Halaqah Qur'an** :

- Versi Program:
    - Dart v.2.18.0-271.0.dev
    - Flutter v.3.0.5
- Versi Text Editor:
    - Visual Studio Code v.1.69.2 (user setup)
- Versi Emulator:
    - BlueStacks 5 v.5.8.101.1001 N32

> PERHATIAN! pastikan anda menggunakan versi program yang sama atau terbaru agar dapat dieksekusi dengan baik.

---
## Dokumentasi:
- File kode pada folder [lib](https://github.com/DVCone/recitation_report/tree/main/lib) terdiri dari file [main](https://github.com/DVCone/recitation_report/blob/main/lib/main.dart) dan 4 folder bagian yaitu:
    - Folder [model](https://github.com/DVCone/recitation_report/tree/main/lib/model) yang berisikan file data model.
    - Folder [page](https://github.com/DVCone/recitation_report/tree/main/lib/page) yang berisikan file halaman aplikasi.
    - Folder [style](https://github.com/DVCone/recitation_report/tree/main/lib/style) yang berisikan suluruh kode kostum untuk halaman aplikasi.
    - Folder [widget](https://github.com/DVCone/recitation_report/tree/main/lib/widget) yang berisikan seluruh kode fitur tambahan untuk halaman aplikasi.
- Program Aplikasi ini memiliki 2 jenis `Stateless Widget` dan `Stateful Widget` sesuai dengan kebutuhan masing - masing halaman.
- Program Aplikasi ini memiliki 2 halaman yang berbeda dengan fungsi masing - masing sebagai berikut:
    - Halaman [utama](https://github.com/DVCone/recitation_report/blob/main/lib/page/home_page.dart) sebagai halaman yang akan melampirkan semua daftar santri beserta sebagian informasi data diri seperti foto santri, nama santri, dan kelas santri.
    - Halaman [detail](https://github.com/DVCone/recitation_report/blob/main/lib/page/detail_page.dart) sebagai halaman yang akan melampirkan data lengkap dari santri yang telah dipilih dari daftar santri pada halaman utama mulai dari foto santri, nama santri, kelas santri, beserta catatan deskripsi dari pengampu. 
    
        Pada halaman ini juga akan ditampilkan daftar laporan hafalan kitab suci Al-Qur'an dari masing - masing santri yang telah dipilih dari daftar santri pada halaman utama.
- Program Aplikasi ini telah di uji pada platform Android (emulator) dengan skala perangkat `max.Width = 480` juga pada web Browser Chrome dengan berbagai ukuran skala yang dibutuhkan (Responsive), untuk itu tampilan halaman Aplikasi telah disesuaikan dengan bentuk ukuran skala yang dibutukan agar terhindar dari halaman yang berlebih (overflow) sehingga dapat menyebabkan error.

    anda dapat melihat perbedaan pengaturan ukuran halaman Aplikasi pada beberapa skala berikut :
    - Skala perangkat `max.Width <= 750` dihalaman [utama](https://github.com/DVCone/recitation_report/blob/main/lib/page/home_page.dart).
    - Skala perangkat `max.Width <= 1200` dihalaman [utama](https://github.com/DVCone/recitation_report/blob/main/lib/page/home_page.dart).
    - Skala perangkat `max.Width >= 1200` dihalaman [utama](https://github.com/DVCone/recitation_report/blob/main/lib/page/home_page.dart).
- Agar dapat menampilkan daftar peserta santri yang menghafal kitab suci Al-Qur'an secara lengkap, menarik bersih dan rapi maka data setiap orang santri dibuat merupakan seperti susunan kartu yang dapat di pilih dengan mudah.
- Agar dapat menampilkan daftar laporan hafalan kitab suci Al-Quran yang lengkap, menarik, bersih dan rapi maka data setiap datanya akan ditampilkan dalam bentuk tabel `DataTable`.
- Terdapat **fitur menambahkan data** secara **ekslusif hanya untuk pengampu** dimana fitur ini dapat diaktifkan oleh bagian manajemen sehingga untuk **pengguna tamu hanya akan ditampilkan pesan peringatan** yang akan muncul.
---
## Catatan:
- Aplikasi Halaqah Qur'an merupakan proyek yang dibangun berdasarkan tugas akhir dari kelas **"Belajar Membuat Aplikasi Flutter Untuk Pemula - [DICODING](https://www.dicoding.com/academies/159/corridor)"** yang ditulis oleh Muhammad Hakim Almadani.
- Seluruh Aset Gambar yang terdapat dalam Aplikasi Halaqah Qur'an dibuat oleh generator dan Artificial Intelligence (AI) dengan rincian sebagai berikut:
    - Icon Aplikasi (ic_launcher) di buat oleh [Web Generator](https://romannurik.github.io/AndroidAssetStudio/icons-launcher.html#foreground.type=clipart&foreground.clipart=eco&foreground.space.trim=1&foreground.space.pad=0.3&foreColor=rgb(255%2C%20255%2C%20255)&backColor=rgb(76%2C%20175%2C%2080)&crop=0&backgroundShape=square&effects=shadow&name=ic_launcher).
    - Aset gambar wajah diciptakan oleh [Artificial Intelligence (AI)](https://this-person-does-not-exist.com/en).

    sehingga dapat dipastikan tidak ada unsur dalam menyalahgunakan Hak Cipta karya.
- Seluruh sumber kode dalam Aplikasi ini bersifat PUBLIK dan penulis membuka publikasi kode ini pada gudang kode (repository code) miliknya di [Github](https://github.com/DVCone/recitation_report).
- Apabila terdapat perubahan serta perbaruan dari kode pada Aplikasi ini maka dapat diperiksa pada gudang kode [Github](https://github.com/DVCone/recitation_report) dengan melihat [Log Update](https://github.com/DVCone/recitation_report/commits)nya.
---
## Update Log:

- `stateful widget` digunakan untuk fitur baru yaitu checklist kehadiran pada setiap harinya dalam seminggu.
- Perbaikan tampilan halaman utama `home_page` untuk perangkat dengan layar berukuran 360 lebar akan ditampilkan 1 kolom daftar siswa. 
- Perbaikan tampilan halaman detail `detail_page` untuk perangkat dengan layar berukuran 480 lebar akan ditampilkan kartu siswa dan kartu kehadiran sesuai ukuran lebarnya.

> Aplikasi ini sangat disarankan untuk digunakan pada lebar ukuran perangkat layar minimal 360, 480 atau 500 hingga lebih dan **sangat tidak disarankan** untuk menggunakan tambilan ukuran lebar layar dibawah 360

---
## Penulis:

    - Nama  : Muhammad Hakim Almadani
    - Alias : DVCone
    - Kelas : Belajar Membuat Aplikasi Flutter Untuk Pemula
    - Jalur : Multi-Platform App
    - Tutor : Dicoding.com

Aplikasi Selesai pada Jumat, 22 Juli 2022, 21:00

Signature - Hakim Madani

