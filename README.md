pbp-flutter-lab readme

## Tugas 7
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

## Tugas 8
1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
=> Navigator push itu kayak push ke stack jd numpuk, kalau push replacement itu push le stack dan ganti isinya jadi yg kita push

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Card->Panel nampilih kartu, kayak container
Drawer->Untuk mindah layar
TextFormField->Untuk input 
Form->Parent dari input-input
Column,Rpw-> Layout Widget
TextButton-> widget munculin tombol

3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
-> OnSaved, OnPressed, OnChange

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
->Navigator akan push layer baru, tergantung pilihan user, dan layer itu yang akn muncul di layar kita. Layer seebelumnya akan stay dibawah atau hilang tergantung dengan replace atau tidak

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
->Buat file untuk layar form, data, model data
->file model dibuat dengan model budget yang bisa ditambah dengan atribut2
->drawer pada masing2 file
->widget form pada form dart lalu save input ke objek model yang dibuat
->ambil objek yang dibuat pada data lalu tampilkan dengan widget card

## Tugas9
 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
 => bisa, kita bisa membuat variabel json sendiri dan kita bisa membuat variabel untuk parse variabel json itu sendiri. Hal ini mungkin akan lebih ribet karena kita tidak bisa langsung mengambil data json dari internet (jika data nya banyak akan memakan waktu yang lama), tetapi, hal ini bisa menghindari cross API yang terkadang muncul di chrome, agar kita tidak perlu setting keamanan website

 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 a. Future Builder: Widget untuk eksekusi sebuah fungsi asinkron, dan tergantung dari fungsi itu, UI akan terupdate
 b. InkWell: Widget untuk membuat sebuah area yang dapat menerima sebuah respon klik dari pengguna
 c. Card->Panel nampilih kartu, kayak container
 d. Drawer->Untuk mindah layar 
 e. Column,Row-> Layout Widget
 f. TextButton-> widget munculin tombol

 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
 => pertama, buat model untuk data json yang diambil, dari quicktype. Jalankan add http agar bisa ambil json dan beri user permision agar flutter dapat akses internet. Kemudian membuat fungsi fetcher untuk ambil data json dari url data json tersebut berasal, lalu masukan data dari hasil fetch tersebut ke sebuah list atau struktur data yang diinginkan lalu return list tersebut sebagai parameter return fungsi fetcher. Panggil fungsi fetcher pada widget yang diinginkan

 4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 a. bikin file untuk halaman list dari watchlist
 b. nambahin listTile di drawer pada setiap halaman/file
 c. bikin file untuk model mywatchlist yang berisi kode dari hasil parse data json
 d. buat fetch untuk data (saya pakai dari yang tutor 8 dan di modifikasi)
 e. tampilih pada halaman list dari watchlist
 f. buat halaman file dart untuk part detail lalu widget inkwell yang saat dipencet akan membuka halaman tersebut beserta mengirim data dari film yang dipilih
 g. data yang dipilih akan ditampilkan detailnya pada halaman detail.