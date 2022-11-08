pbp-flutter-lab readme

Tugas 7
Pertanyaan :
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
=>  Stateless widget adalah widget yang tidak berubah (immutable). Stateless widget tidak dapat diubah state nya saat aplikasi sedang dijalankan. Stateful Widget adalah kebalikan dari stateless, yaitu widget yang dapat berubah propertinya saat aplikasi sedang berjalan (mutable). Stateful widget dapat berubah dengan menerima respon dari event triggered oleh user.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
=>  Widget yang digunakan :
    a. Text = Untuk display text dan styling text
    b. Icon = Untuk menghias (material design)
    c. FloatingActionButton = Circular button yang melayang pada konten, dan bisa menerima action atau bekerja sebagai eventlistener
    d. Row = Layout untuk list of child pada direksi horizontal
    e. TextStyle = Untuk style dari Text
    f. Theme = Untuk menambahkan theme pada widget
    g. Scaffold = Implementasi material basic untuk struktur layout design visual
    h. AppBar = Material design app bar
    i. Center = Widget yang mengsentralkan child didalamnya
    j. Column = Layout untuk list of child dalam direksi vertikal
    
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
=> Fungsi dari setState adalah untuk mengubah suatu widget yang stateful (immutable). Ini bisa berguna untuk tugas 7 karena kita harus update layar dengan angka sesuai dengan penambahan atau pengurangan. SetState akan merubah layar secara otomatis. Variable yang terdampak adalah variabel yang dimasukan kedalam fungsi dengan fungsi setState. Pada tugas ini, setState digunakan untuk menambah atau mengurangi angka counter pada layar, mengubah tulisan genap ke ganjil atau sebaliknya, dan untuk menyembunyikan atau memunculkan tombol mengurangi.

4. Jelaskan perbedaan antara const dengan final.
=> "final" artinya variabel tersebut hanya di assign satu kali, setelah di assign variabel tidak dadpat diubah. "const? berarti constructing sebuah data atau objek dimana hal ini sama dengan buat variabel (misal int, string, boolean) pada java.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
=> Tahapan pengerjaan:
    a. Flutter create counter_7 pada cmd root folder
    b. Buka file main.dart pada folder lib di folder counter_7
    c. Mengubah title pada home menjadi 'Program Counter'
    d. Menambahkan variabel output (string) dan show (boolean)
    e. Menambahkan fungsi decrementCounter yang akan mengurangi counter jika dipanggil
    f. Menambahkan kondisi jika counter = 0, show akan jadi false, dan counter tidak akan kurang, jika lebih dari 0, show jadi true dan counter tetap kurang
    g. Menambahkan kondisi untuk cek apakah counter = genap atau counter = ganjil, output akan diubah menjadi genap atau ganjil
    h. Menambahkan widget text pada body yang akan menunjukan apabila counter genap atau ganjil dan style warna sesuai dengan ceklis tugas
    i. Menambahkan widget row, yang akan menampung 2 floatingActionButton (Tambah dan Kurang)
    j. Menambah Visibility(jika variabel show true, maka tombol kurang muncul, dan kebalikannya)