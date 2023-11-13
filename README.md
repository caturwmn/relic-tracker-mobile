# relic_tracker

# Tugas 8
1. Navigator.push() memasukan sebuah halaman baru ke bagian atas stack navigasi untuk mengganti halaman yang sedang dikunjungi, sedangkan Navigator.pushReplacement() menggantikan halaman yang berada di bagian atas stack navigasi dengan halaman yang akan dikunjungi. Contohnya

2. Layout widget yang ada antara lain:

3. Elemen Input yang digunakan antara lain:

4. Clean architecture

5. Implementasi dengan:
- Membuat sebuah file dart baru yang akan menyimoan data tentang class left drawer yang akan bekerja sebagai 

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
