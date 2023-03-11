# **(10) Deep Dive Into Dart Object Oriented Programming**

## **Summary**

Pada section 10 ini saya belajar tentang **Deep Dive Into Dart Object Oriented Programming**.

Terdapat beberapa macam materi yang harus kita ketahui tentang dasar dari bahasa Pemrograman Dart ini, antara lain :
>
> 1. Constructor
> 2. Inheritance
> 3. Method Overriding
> 4. Interface
> 5. Abstract Class
> 6. Polymorphism
> 7. Generics

## **Constructor**

- Deskripsi

> Constructor merupakan method yang dijalankan saat pembuatan object, constructor sendiri bersifat dapat menerima parameter, menariknya constructor tidak mempunyai return.

## **Inheritance**

- Deskripsi

> Inheritance merupakan proses pembuatan class baru dengan memanfaatkan class yang sudah ada, hal ini mengharuskan Developer untuk membuat sebuah Parent Class untuk diturunkan menggunakan Inheritance, tujuan menggunakan Inheritance adalah menurunkan kemampuan dari Parent Class kepada Child Class tanpa mengulang kode.

- Melakukan Inheritance

> Menambahkan **extends** saat pembuatan class baru.

## **Method Overriding**

- Deskripsi

> Method Overriding bertujuan agar class dapat mempunyai method yang sama dengan proses yang berbeda, method override sendiri dilakukan dengan cara menulis ulang method yang sama dengan yang telah berada di super-class.

- Melakukan Inheritance

> 1. Dilakukan pada class yang melakukan inheritance.
> 2. Method sudah ada pada Parent Class.
> 3. Method ditulis ulang seperti membuat method baru pada Child Class.
> 4. Ditambahkan anotasi @override di baris sebelum method dibuat.

## **Interface**

- Deskripsi

> Method Overriding bertujuan agar class dapat mempunyai method yang sama dengan proses yang berbeda, method override sendiri dilakukan dengan cara menulis ulang method yang sama dengan yang telah berada di super-class.

- Melakukan Interface

> Pada class yang melakukan **implements**, wajib menerapkan anotasi @override semua method yang ada pada Parent Class.

## **Abstract Class**

- Deskripsi

> Sesuai namanya, abstract class merupakan class abstrak yang dapat menunjukkan method apa saja yang berada pada suatu class. Abstract class menggunakan extends untuk penggunaannya, akan tetapi abstract class tidak dapat membuat object dan tidak semua methodnya harus menggunakan anotasi override.

## **Polymorphism**

- Deskripsi

> Polymorphism mempunyai sebuah kemampuan data berubah menjadi sebuah bentuk lain, tipe data yang dapat digunakan oleh polymorphism merupakan tipe data super class, keunikan dari polymorphism adalah dapat dilakukan pada kelas dengan **extends** dan juga **implements**.

## **Generics**

- Deskripsi

> Generics dapat digunakan terhadap class maupun fungsi, generics sendiri dapat memberi kemampuan agar dapat menerima data dengan tipe yang berbeda.
