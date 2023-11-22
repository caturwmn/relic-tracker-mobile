# relic_tracker

# Tugas 9
1. Bisa namun hal tersebut lebih rumit karena kita harus memastikan field data yang kita ambil sudah benar secara manual dan data yang diambil tidak akan diketahui sistem sampai data tersebut sudah benar-benar diambil.
  
2. Fungsi CookieRequest bekerja untuk memastikan operasi yang dijalankan pada flutter yang sudah terintegrasi dengan flutter terjadi pada session yang tepat (bukan session dari orang lain yang juga melaksanakan hal yang sama).

3. -

4. Autentikasi pada flutter tersebut akan menerima input dari user berupa username dan password mereka lalu mengirim data tersebut dalam bentuk POST ke django untuk memangginl fungsi login yang akan memvalidasi data dari username yang diterima dan memastikan password yang masuk adalah password yang benar, lalu django mengirim response berupa sukses ke flutter dan flutter menerima response tersebut dan mengalihkan pengguna ke halaman menu

5. Provider dan FutureBuilder
   
6. Implementasi dengan:
- Pertama pergi ke url website, ternyata websitenya palsu maka saya selesaikan tugas dulu baru berusaha redeploy dan website bekerja dengan baik (sudah bukan palsu, mungkin).
  
- Lalu menginstall django-cors-headers pada proyek django dan menambahkan app baru bernama authenticate lalu membuat fungsi login pada views authenticate yang menerima request post berisi username & password dan melakukan routing pada urls.py app lalu pada urls.py proyek. Pada settings.py proyek melakukan beberapa perubahan pada installed apps dengan menambah authenticate dan corsheaders, lalu menambahkan corsheaders.middleware.CorsMiddleware pada list middleware settings dan menambah variabel mengenai cors seperti (semua dalam format variabel static (SEUATU_SESUATU)) cors allow all origins, cors allow credentials, csrf cookies secure, dan session cookie secure dengan value true serta csrf cookies samesite, session cookies samesite dengan value valse.

- Lalu pada flutter menambahkan flutter pub add provider, pbp_django_path, http. Lalu pada main.dart dibuat widget provider yang menyusun cookies yang childnya merupakan material dari app tadi sebelumnya. Lalu membuat login.dart pada lib/screens yang berisi halaman yang akan melakukan request login ke website django dan mengubah home pada main.dart menjadi LoginPage() yaitu constructor untuk halaman login.

- Lalu melakukan runserver pada lokal dan pergi ke halaman data json, mengcopy, pergi ke laman Quicktype, masukan kode json, atur bahasa ke dart, lalu copy & paste ke file relic.dart pada lib/models.

- Lalu melakukan perubahan ada manifest android agar membolehkan penggunaan internet dan membuat file list_relic.dart yang akan menampilkan listview berisi data nama, jumlah dan deskripsi relic yang terdaftar serta memasukkan tombol ke halaman tersebut pada left_drawer.dart serta pada inkwell di halaman utama.

- Menambahkan detailed view

- Lalu membuat fungsi create_flutter pada django dengan format request yang benar untuk membuat relic baru melalui flutter serta routing url dan menghubungkan shoplist_form.dart ke fungsi terrsebut dengan menambahkan request cookies dan mengubah fungsi onpressed pada form menjadi async dan mengirimkan data json ketika ditekan ke web django.

- Lalu menambahkan fungsi logout pada django dan menghubungkannya dengan flutter seperti biasa.
 

# Tugas 8
1. Navigator.push() memasukan sebuah halaman baru ke bagian atas stack navigasi untuk mengganti halaman yang sedang dikunjungi, sedangkan Navigator.pushReplacement() menggantikan halaman yang berada di bagian atas stack navigasi dengan halaman yang akan dikunjungi. Push biasa akan digunakan apabila pengguna akan dapat pergi ke halaman saat ini setelah pergi ke halaman lain dan menekan tombol back, sedangkan pushReplacement untuk memastikan pengguna kehalaman sebelum halaman yang mereka kunjungi saat ini setelah mereka pergi ke halaman selanjutnya dan menekan back.

2. Layout widget yang ada antara lain:
- Row untuk menyusun beberapa elemen pada suatu baris
- Column untuk menyusun beberapa elemen pada suatu kolom
- Align untuk menaruh sebuah element pada bagian tertentu widget tersebut
- Padding yang menaruh element dengan padding tertentu dari widget tersebut
- GridView yang menaruh tiap element di dalamnya pada suatu grid dangan jumlah baris dan koloom tertentu.
- Container yang dapat memanipulasi posisi, ukuran, dan warna dari suau element
- dll

4. Elemen Input yang digunakan antara lain:
- Button untuk melakukan sesuatu setelah ditekan yang sesuai dengan teks dari button tersebut
- ListTile sama seperti button namun untuk tampilan yang mirip seperti list
- TextFormField untuk manambahkan data ke aplikasi dalam bentuk text dari user

5. Clean architecture adalah sebuah prinsip pemrograman dimana sebuah aplikasi atau program dibagi menjadi berberapa lapis untuk memisahkan keperluan aplikasi ke tiap lapis tersebut untuk memudahkan proses maintenance dan perubahan pada aplikasi. Pada flutter, clean architecture diterapkan dengan mambagi proses pada 3 lapisan yaitu Domain, App, serta Data dimana Domain bekerja sebagai bagian logika utama dari aplikasi, App bekerja sebagai presentasi atau UI dari suatu aplikasi, dan Data berhubungan dengan segala proses transaksi data yang ada pada suatu aplikasi. 

6. Implementasi dengan:
- Membuat sebuah file dart yang akan menyimpan halaman bersifat stateful yang berisi form untuk menambahkan relic baru dimana class dari halaman tersebut akan di extend Statenya pada class yang menyimpan formkey dan atribut-atribut model yang akan digunakan pada form halaman tersebut
- Lalu pada body dari state tersebut terdapat sebuah widget Form yang berisi key dari class halaman dengan child berupa SingleChildScrollable yang berisi sebuah child Column dengan isi berupa array yang berisi padding yang berisi TextFormField yang akan merubah nilai dari tiap atribut form apabila didalamnya dirubah
- Lalu ditambahkan sebuah align pada array tersebut yang meletakan tombol Save di bawah tengah areanya yang apabila ditekan menampilkan sebuah alert dialog dengan text yang berisi tiap data yang dimasukkan ada form
- Lalu menambahkan validator untuk tiap padding yang memastikan tiap field ada datanya dan mereturn null apabila kondisi tidak sesuai lalu menambahkan _formkey.currentState!.validate() di nlok if yang berisi fungsi onpress tombol save pada onpress dan mereset state tadi setelah selesai dengan _formkey.currentState!.reset
- Menambahkan Navigator.push ke halaman sesuai di dalam onpress inkwell untuk tambah relic dengan if(item.name = nama halaman) sebagai validasi
- Membuat sebuah file dart baru yang akan menyimpan data tentang class left drawer yang akan bekerja sebagai drawer untuk semua halaman pada aplikasi yang berisi tombol navigasi dangan nama tiap halaman yang bisa dituju dengan menggunakan Navigation.pushReplacement() untuk pergi ke halaman-halaman tersebut
  

# Tugas 7
1. Stateless widget adalah widget yang tidak dapat merubah nilai dirinya sendiri, sedangkan stateful widget adalah widget dinamis yang dapat melakukan perubahan terhadap dirinya sendiri

2. widget yang digunakan antara lain:
   Teks, Icon, Snackbar, Scaffold, Material, Inkwell, SingleChildScrollView, Container, dan Appbar

4. Implementasi dengan:
- Pertama pergi ke direktori yang diinginkan untuk menyimpan proyek lalu membukanya dengan command prompt dan melakukan flutter create relic_tracker lalu pergi ke direktori tersebut dengan command prompt

- Memisahkan bagian utama program menjadi menu dan main dimana menu akan menjadi lokasi homepage lalu ,mengubah myHomePage mmenjadi stateless widget dan menghapus semua isinya kecuali build widget, lalu mendeklarasi shopitem yang menyimpan data teks dan icon menu, lalu mendeklarasi list items untuk menyimpan shopitem yang akan dibuat.

- Lalu menyusun class untuk widget shopcard dengan constructor yang menerima shopitem dimana widget tersebut akan menampilkan teks dan icon dari shop item tersebut dalam sebuah material beserta inkwell.

- Menyusun tampilan halaman utama di builder widget myHomepage dan menyusun Scaffold dengan appbar dibagian atas, body yang scrollable, dan didalam body tersebut text relic tracker menu ditambah dengan sebuah gridview yang berisi fungsi untuk menyusun shopcard

-  Untuk snackbar, tinggal menambahkan fungsi onTap akan memanggil snackbar melalui scaffold mesenger

-  lalu git init, bat repositori baru, menghubungkan remote, memastikan branch sudah benar, add, commit, push
