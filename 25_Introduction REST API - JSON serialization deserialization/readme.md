# **(25) Introduction REST API - JSON serialization deserialization**

## **Summary**

Pada section 25 ini saya belajar tentang **Introduction REST API - JSON serialization deserialization**.

Terdapat beberapa macam materi yang harus kita ketahui tentang Introduction REST API - JSON serialization deserialization ini, antara lain :
>
> 1. Rest API
> 2. HTTP
> 3. Dio
> 4. Serialisasi JSON

## **REST API**

- Deskripsi

> REST API merupakan singkatan dari Representational State Transfer Application Programming Interface. REST API adalah arsitektural yang memisahkan tampilan dengan proses bisnis, bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request.

## **HTTP**

- Deskripsi

> HTTP merupakan sebuah protokol yang dapat digunakan untuk berkirim data pada internet, biasanya data ini berbentuk media website.

- Pola Komunikasi

> 1. Client mengirim request.
> 2. Server mengolah dan membahas dengan mengirim response.

- Struktur Request

> 1. URL
> 2. Method(GET, POST, PUT, DELETE)
> 3. Header
> 4. Body

- Struktur Response

> 1. Status Code
> 2. Header
> 3. Body

## **Dio**

- Deskripsi

> Dio dapat digunakan sebagai HTTP Client, Dio sendiri dapat dimanfaatkan untuk melakukan REST API.

- Instalasi

> 1. Tambahkan dependency pada pubspec.yaml
> 2. Jalankan perintah **flutter pub get** pada terminal

## **Serialisasi JSON**

- Deskripsi

> Serialisasi JSON merupakan sebuah cara untuk mengubah struktur data ke bentuk JSON. Hal ini menggunakan fungsi jsonEncode dari package dart:convert. Kita juga dapat melakukan Deserialisasi JSON untuk mengubah bentuk JSON ke struktur data menggunakan fungsi jsonDecode dari package dart:convert.

- JSON

> JSON atau Javascript Object Notation merupakan sebuah cara untuk penulisan data, biasanya JSON ini sangat umum untuk digunakan pada REST API.
