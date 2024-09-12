# Form Data Flutter App

[![Flutter](https://img.shields.io/badge/Flutter-2.5.0-blue.svg?logo=flutter)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-2.14.0-blue.svg?logo=dart)](https://dart.dev/)
[![Android](https://img.shields.io/badge/Platform-Android-green.svg?logo=android)](https://developer.android.com/)
[![iOS](https://img.shields.io/badge/Platform-iOS-green.svg?logo=apple)](https://developer.apple.com/ios/)

<table>
  <tr>
    <td style="text-align: center;">
      <img src="https://github.com/user-attachments/assets/595d8118-e3e4-48a0-ab91-1e181ead8217" height="120" alt="anime-yes"/>
    </td>
    <td style="vertical-align: middle;">
      <h5>Nama: Muhamad Galih</h5>
      <h5>NIM: H1D022052</h5>
      <h5>Shift: E (Baru)</h5>
    </td>
  </tr>
</table>

## Deskripsi

Aplikasi Flutter ini adalah sebuah form data sederhana yang memungkinkan pengguna untuk memasukkan dan menyimpan informasi seperti nama, NIM, dan tahun lahir. Aplikasi ini menggunakan tema warna yang bersih dan umum, memberikan pengalaman pengguna yang nyaman dan profesional.

## Fitur

- **Input Data**: Memungkinkan pengguna untuk memasukkan nama, NIM, dan tahun lahir.
- **Tema Bersih**: Menggunakan tema warna yang bersih dan profesional untuk desain yang konsisten.
- **Animasi**: Memiliki footer dengan animasi loader dan efek fade untuk meningkatkan pengalaman pengguna.

## Prerequisites

Sebelum memulai, pastikan Anda memiliki hal berikut:

- [Flutter](https://flutter.dev/docs/get-started/install) versi terbaru
- [Dart](https://dart.dev/get-dart) versi terbaru

## Instalasi

1. Clone repositori ini ke mesin lokal Anda:

    ```bash
    git clone https://github.com/muhgalihhh/Tugas2Praktikum2024/
    ```

2. Masuk ke direktori proyek:

    ```bash
    cd yourrepository
    ```

3. Install dependensi dengan perintah:

    ```bash
    flutter pub get
    ```

4. Jalankan aplikasi dengan:

    ```bash
    flutter run
    ```

## Struktur Proyek

- `lib/`
  - `main.dart`: Titik masuk aplikasi.
  - `ui/`
    - `tampil_data.dart`: File untuk menampilkan data yang dimasukkan pengguna.
    - `form_data.dart`: Formulir untuk memasukkan data pengguna.
   
## Demo Singkat Aplikasi

https://github.com/user-attachments/assets/f5bc60f6-718f-443c-bb7f-38453d9176ad


## Penjelasan Alur Data Aplikasi

Alur data dalam aplikasi ini mencakup beberapa tahap utama, yaitu input data, validasi, simulasi loading, pengiriman data ke halaman baru, dan tampilan data yang telah dimasukkan. Berikut adalah penjelasan setiap tahapannya:

1. **Inisialisasi Aplikasi (`main.dart`)**
   - Saat aplikasi dijalankan, file `main.dart` dipanggil dan aplikasi memulai dari halaman utama (`FormData`).
   - Halaman utama ini berfungsi untuk menerima input data dari pengguna.

2. **Input Data Pengguna (`ui/form_data.dart`)**
   - Pengguna mengisi form dengan memasukkan **Nama**, **NIM**, dan **Tahun Lahir**.
   - Setiap input dikendalikan oleh `TextEditingController` untuk menyimpan data yang diinput pengguna.

3. **Validasi Form**
   - Setelah pengguna menekan tombol "Save", aplikasi memeriksa apakah semua field (Nama, NIM, dan Tahun Lahir) telah diisi dengan benar. Jika salah satu field kosong, pesan error ditampilkan.
   - Jika semua data valid, aplikasi melanjutkan ke tahap berikutnya.

4. **Simulasi Loading**
   - Setelah data divalidasi, sebuah loader (`CircularProgressIndicator`) muncul selama 2 detik, mensimulasikan proses penyimpanan atau pengolahan data.

5. **Pengiriman Data ke Halaman Baru**
   - Setelah loader selesai, aplikasi menggunakan `Navigator` untuk berpindah dari halaman `FormData` ke halaman `TampilData`. Pada saat navigasi ini, data pengguna (Nama, NIM, dan Tahun Lahir) dikirim ke halaman `TampilData`.

6. **Tampilan Data di Halaman Baru (`ui/tampil_data.dart`)**
   - Di halaman `TampilData`, aplikasi menampilkan informasi Nama, NIM, dan Umur (dihitung berdasarkan tahun lahir yang dimasukkan).
   - Pengguna juga dapat kembali ke halaman form untuk mengubah data dengan menekan tombol "Back".

## Diagram Alur Data

Berikut adalah diagram alur data yang menjelaskan bagaimana data bergerak dari satu tahap ke tahap lainnya di aplikasi:

```mermaid
graph TD;
    A[Start - main.dart] --> B[Halaman FormData];
    B --> C[Pengguna Mengisi Data];
    C --> D[Validasi Form];
    D --> E{Data Valid?};
    E -- No --> F[Tampilkan Pesan Error];
    E -- Yes --> G[Tampilkan Loader (2 Detik)];
    G --> H[Kirim Data ke Halaman TampilData];
    H --> I[TampilData - Hitung Umur dan Tampilkan Data];
    I --> J[Pengguna Menekan Tombol Back];
    J --> B;
```

## Penjelasan Diagram Alur:
1. **Start (main.dart)**: Aplikasi dimulai dari `main.dart` dan mengarahkan ke halaman `FormData`.
2. **Halaman FormData**: Pengguna melihat form untuk mengisi data Nama, NIM, dan Tahun Lahir.
3. **Pengisian Data**: Pengguna memasukkan data ke dalam field yang disediakan.
4. **Validasi Form**: Setelah pengguna menekan tombol "Save", data akan divalidasi.
5. **Data Valid?**: Jika data tidak valid (salah satu field kosong), pesan error ditampilkan. Jika data valid, aplikasi menampilkan loader.
6. **Loader (Simulasi Proses)**: Loader muncul selama 2 detik untuk mensimulasikan pemrosesan data.
7. **Kirim Data ke Halaman TampilData**: Setelah loader selesai, aplikasi mengirim data pengguna ke halaman `TampilData`.
8. **TampilData**: Di halaman ini, data ditampilkan dan umur dihitung berdasarkan tahun lahir.
9. **Navigasi Kembali**: Pengguna dapat kembali ke halaman `FormData` dengan menekan tombol "Back" untuk mengubah data yang sudah diinput.

Dengan diagram dan alur data ini, proses pergerakan data di dalam aplikasi menjadi lebih jelas, mulai dari input awal hingga tampilannya di halaman kedua.




