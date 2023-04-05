# **(20) Flutter State Management (Provider)**

## **Summary**

Pada section 20 ini saya belajar tentang **Flutter State Management (Provider)**.

Terdapat beberapa macam materi yang harus kita ketahui tentang Flutter State Management (Provider) ini, antara lain :
>
> 1. Pengertian State Provider
> 2. Global State

## **Pengertian State Provider**

- Deskripsi

> State merupakan data yang dapat dibaca saat pembuatan widget, state juga dapat berubah ketika widget sedang aktif, untuk menggunakan State diharuskan dalam StatefulWidget.

- Memanfaatkan State

> State dibuat sebagai property dari class, state juga digunakan pada widget saat build.

- Mengubah State

> Untuk menggunakan state ini kita harus menggunakan StatefulWidget, dikarenakan untuk mengubah state diwajibkan menggunakan method **setState**.

## **Global State**

- Deskripsi

> Pada dasarnya, Global State merupakan state biasa yang dapat digunakan pada seluruh widget.

- Provider

> 1. State Management
> 2. Perlu di-install agar dapat digunakan

- Instalasi Provider

> 1. Menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
> 2. Jalankan perintah **flutter pub get**

- Mendaftarkan State Provider

> 1. Import dalam file **main.dart**
> 2. Daftarkan **MultiProvider** di dalam **runApp()**.
