-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2023 pada 13.29
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_blog`
--

CREATE TABLE `tb_blog` (
  `id_blog` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slug_blog` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `user` int(11) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `tgl_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_blog`
--

INSERT INTO `tb_blog` (`id_blog`, `judul`, `slug_blog`, `isi`, `user`, `thumbnail`, `tgl_post`) VALUES
(5, 'Suku Dayak Bumi Segandu Losarang', 'suku-dayak-bumi-segandu-losarang', '<p><strong>Masyarakat Dayak Losarang Indramayu ini muncul pada 1970. Cikal bakalnya merupakan perguruan silat serbaguna yang dipimpin Takmad. Keputusan Takmad untuk meninggalkan hiruk pikuk kehidupan duniawi dan menyebarkan kebaikan serta kesabaran diperoleh setelah dia bertapa. &quot;Bapak yang mendirikan. Dulu pakaiannya masih hitam-hitam,&quot; kata Wardi sambil menunjuk foto Takmad di rumah Punden Gunung Krakatau. Sekitar tahun 1990-an, nama perguruan silat yang dipimpin Takmad berubah hingga akhirnya menjadi Suku Dayak Hindu Budha Bumi Segandhu Indramayu. Ajarannya melatih kesabaran dan lebih dekat dengan alam. Bagi anggota ada ritual bernama kumkum untuk melatih kesabaran. Biasanya mereka merendam diri pada setiap musim hujan. Ritual Kumkum dilakukan selama empat bulan dalam setahun.&nbsp;</strong></p>\r\n\r\n<p><strong>Pada dasarnya ketika mereka melakukan Ritual Kumkum, aktivitas tetap dilakukan seperti biasa. Wardi mengimbuhkan, mayoritas anggota Dayak Hindu Budha Segandu Indramayu adalah petani. Saban hari mereka tidak mengenakan baju dan hanya menggunakan celana berwarna hitam putih.Sejatinya mereka merupakan suku tanpa identitas. Bagi mereka indentitas dengan tampilan dan baju yang digunakan merupakan identitas sebenarnya. Kemana pun mereka berpergian, hanya celana hitam putih yang mereka kenakan.</strong></p>\r\n', 1, '7e4623bac687f30b62ec95ea83d4aaf9.jpg', '2023-02-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_budaya`
--

CREATE TABLE `tb_budaya` (
  `id_budaya` int(11) NOT NULL,
  `nama_budaya` varchar(50) NOT NULL,
  `slug_budaya` varchar(50) NOT NULL,
  `foto_budaya` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_budaya`
--

INSERT INTO `tb_budaya` (`id_budaya`, `nama_budaya`, `slug_budaya`, `foto_budaya`, `deskripsi`) VALUES
(6, 'Batik', 'batik', 'd2ac96f72be7fac5a82de53d999c4a9c.jpg', '<p><strong>Batik Tulis Paoman (Batik Indramayu) merupakan kesenian tulis yang berasal dari Kabupaten Indramayu. Batik ini memiliki ciri khas pesisir dengan corak yang berbeda dengan batik dari daerah lain. Perpaduan antara kepercayaan, adat istiadat, seni dan lingkungan kehidupan pesisir, ditambah lagi adanya pengaruh dari luar ikut mempengaruhi terbentuknya motif dan karakter batik tulis pesisir.</strong></p>\r\n'),
(7, 'Jaringan', 'jaringan', '119a7a26290c86a64f589a291437a96e.jpg', '<p><strong>Jaringan merupakan sebuah upacara yang dilakukan oleh kaum remaja yang bertujuan untuk mencari pasangan hidup yang dilaksanakn pada malam bulan purnama. kegiatan ini bertempat di desa parean Kecamatan kandang haur. Dalam menjalankan tradisi adat jaringan, para pria mengenakan kain sarung dan wanita memakai kain rajutan sebagai daya tarik. Salah satu versi asal mula jaringan sendiri dikaitkan dengan kebiasaan para nelayan yang tidak melaut pada bulan terang datang, ini diyakini karena&nbsp;waktu terang bulan ikan-ikan di laut berdiam di dasar laut sehingga sulit ditangkap. Oleh karena itu, para nelayan berkumpul di pasar jodoh ini untuk menemukan pasangan hidup mereka.</strong></p>\r\n'),
(8, 'Mapag Tamba', 'mapag-tamba', '4b782c2b0234ee27c9fb79962f62ac0f.jpg', '<p><strong>Dengan membawa air suci yang telah didoakan ke dalam bungbung bambu, para petani menyiramkan air ke perbatasan sawah-sawah ke seluruh desa. Dalam menggelar adat&nbsp;Mapag Tamba&nbsp;yang merupakan sebuah upacara dilaksanakan pada masa tanam padi dengan tujuan untuk mengusir segala penyakit (hama) yang dapat merusak tanaman padi. Mapag Tamba ini disediakan oleh masyarakat sekitar yang memiliki persawahan dan para pertugas desalah yang berjalan mengelilingi persawahan yang hampir sekitar 2 kilo.</strong></p>\r\n'),
(9, 'Nadran', 'nadran', '32923023919edfe78f25f2c6eb0a99ad.jpg', '<p><strong>Nadran&nbsp;merupakan sebuah cerminan dari sebuah hubungan manusia dengan sang pencipta dengan berupa ungkapan rasa sukur akan hasil tangkapan ikan dan mengharapkan akan meningkatnya hasil di masa mendatang serta dijauhkan dari bencana dan mara bahaya dalam mencari nafkah di laut. Umumnya nadran diselenggarakan antara bulan Oktober sampai Desember di daerah Pantai Eretan, Dadap, Karangsong, Limbangan, Glayem, Bugel dan Ujung Gebang.</strong></p>\r\n'),
(10, 'Mapag Sri', 'mapag-sri', '355147591c992c06adfabcd26b0d7a7c.jpg', '<p><strong>Mapag Sri&nbsp;merupakan upacara yang dilaksanakn dengan tujuan untuk mengungkapkan rasa syukur kepada sang pencipta atas tibanaya masa panen, dengan cara melaksanakan pergelaran kesenian wayang kulit sehari semalam dengan lakon khusus dan biasanya dilaksanakan di balai desa</strong></p>\r\n'),
(11, 'Ngarot', 'ngarot', '9e2d8f14eb9cd19858cc3fafeeee3a8a.jpg', '<p><strong>Ngarot&nbsp;sudah ada sejak abad 16 dan sampai sekarang masih di selenggarakan, terutama oleh masyarakat desa di Kecamatan Lelea setiap menjelang penggarapan sawah. Upacara dilaksanakan agar mendapatkan hasil pertanian yang melimpah dan upacara adat ini dilaksanakan setiap hari rabu, minggu keempat bulan November dimana pesertanya adalah para muda- mudi dengan kostum y ang khas dan aksesoris yang gemerlap. Tradisi Ngarot bermaksud mengumpulkan para pemuda-pemudi yang akan diberi tugas bertani. Intinya adalah para pemuda-pemudi akan saling bekerja sama dan gotong royong mengolah sawah. Tradisi Ngarot bertujuan untuk membina pergaulan yang sehat, agar saling mengenal, saling menyesuaikan sikap, kehendak, tingkah laku, yang sesuai dengan adat budaya.</strong></p>\r\n'),
(12, 'Ngunjung', 'ngunjung', '72082d406ae61d6813bb9e213c822eca.jpg', '<p><strong>Ngunjung Yaitu upacara syukuran yang dilaksanakan di kuburan &ndash; kuburan yang dianggap keramat biasanya dilaksanakan pada bulan syuro dan mulud. Ngunjung/ Munjung berasal dari kata kunjung yang artinya mengunjungi makam leluhur sebagai salah satu wujud syukur masyarakat yang disertai untuk berdoa. Ngunjung juga menghadirkan sejumlah kesenian seperti Wayang cepak dan tarian</strong></p>\r\n'),
(13, 'Sedekah Bumi', 'sedekah-bumi', '87a941993ef855dd74ac4d49803fb186.jpg', '<p><strong>Sedekah Bumi&nbsp;Adalah upacara yang dilaksanakan oileh petani pada saat akan turun menggarap sawahnya. biasanya dilakukan pada awal musim hujanyaitusekitar bulan oktober sampai desember. Prosesi upacara ini biasanya dimulai dari berkumpulnya masyarakat disuatu tempat dilkukan doa bersama dan setalah itu dilaksanakan upacara adat.</strong></p>\r\n'),
(14, 'Genjring Akrobat', 'genjring-akrobat', 'aafcea51cfd18b5a972e6d11679306ae.jpg', '<p><strong>Pertunjukan dengan menggunakan tangga sebagai medianya, sepeda roda satu dengan diiringi alat music genjring/rebana dengan dilengkapi tari rudat.</strong></p>\r\n'),
(15, 'Kuda Lumping', 'kuda-lumping', '5de18e40c021dd7911d99b0ff3a89458.jpg', '<p><strong>Kesenian dengan ciri khas penarinya menaiki kuda-kudaan yang terbuat dari kulit/lumping sambil melakukan atraksi yang berbau magis.</strong></p>\r\n'),
(16, 'Sintren atau Lais', 'sintren-atau-lais', 'dac53d759ca9483288acad542d4d9119.jpg', '<p><strong>Daya tarik kesenian sintren ini adalah musik yang sangat khas berupa buyung, kendi, dan bumbung/batang bamboo.</strong></p>\r\n'),
(17, 'Tarling', 'tarling', 'bd2b9e8f8c8c8cd5390813bb93ab10df.jpg', '<p><strong>Perpaduan seni music dan lagu yang pada awalnya ditampilkan dalam bentuk nyanyian yang hanya diringi gitar dan suling seiring perkembangan jaman dikemas dengan alat musik modern.</strong></p>\r\n'),
(18, 'Tari Topeng Dermayon', 'tari-topeng-dermayon', 'ba38af227b92885ba3460978c3a8b5d3.jpg', '<p><strong>Memliki komposisi gerak tari yang khas dengan kostum topeng yang spesifik yang membedakan dengan tari topeng daerah lain. Tari topeng dermayon ini telah mendapat apresiasi yang tinggi dengan dimilikinya maestro topeng di Indramayu yaitu Mimi Rasinah.</strong></p>\r\n'),
(19, 'Wayang Golek Cepak', 'wayang-golek-cepak', '14f7c2c618068c59e0770c84ec63b6d3.jpg', '<p><strong>Indramayu memiliki wayang golek cepak yang merupakan bagian dari purwa. Yang memedakan wayang ini dengan lainnya adalah lakon dan alur cerita, bentuk dan rupa tokohnya tidak diambil dari pakem pawayangan.</strong></p>\r\n'),
(20, 'Sandiwara', 'sandiwara', '9b5c81e9a70d24cd8ed6ccbc049b33f3.jpg', '<p><strong>Seni pertunjukan yang berasal dari jawa, kesenian sandiwara ini di Indramayu biasanya mengisahkan tentang legenda dan sejarah yaitu sebuah pertunjukan pentasan sebuah cerita disebut pula lakon dalam bahasa jawa.</strong></p>\r\n'),
(21, 'Wayang Kulit', 'wayang-kulit', 'e562981ebd4ac7e7bf7bcb66931ebb3f.jpg', '<p><strong>Kesenian wayng kulit ini masih melekat pada masyarakat Indramayu, dan wayang kulit Indramayu sama seperti wayang kulit jawa yang berbeda hanya bahasa saat mementaskannya.</strong></p>\r\n'),
(22, 'Berokan', 'berokan', '348d82c79e7ae2a1a148b2ca336ac028.jpg', '<p><strong>Berokan merupakan kesenian yang berasal dari Indramayu, dimana kesenian ini hampir sama dengan kesenian barongsai yang berasal dari Cina.</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kuliner`
--

CREATE TABLE `tb_kuliner` (
  `id_kuliner` int(11) NOT NULL,
  `nama_kuliner` varchar(50) NOT NULL,
  `slug_kuliner` varchar(50) NOT NULL,
  `deskripsi_kuliner` text NOT NULL,
  `foto_kuliner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kuliner`
--

INSERT INTO `tb_kuliner` (`id_kuliner`, `nama_kuliner`, `slug_kuliner`, `deskripsi_kuliner`, `foto_kuliner`) VALUES
(5, 'Pindang Gombyang', 'pindang-gombyang', '<p><strong>Masakan yang berbahan dasarkepala Ikan Jambal yang diberi bumbu seperti gulai dan untuk menambakhan rasa segar dengan menggunakan belimbing wuluh.</strong></p>\r\n', '00c904b68f9ad84ca3fca37f654c20bd.jpg'),
(6, 'Burbacek', 'burbacek', '<p><strong>Bubur, yang ditambah dengan rumbah dan cecek. Cecek ini adalah kikil sapi, kikil ini terlebih dahulu dimasak menggunakan parutan kelapa yang ditambah dengan bumbu cabai merah.</strong></p>\r\n', '679b6550ab5738204688bd0c07c948fd.jpg'),
(7, 'Pedesan Entog', 'pedesan-entog', '<p><strong>Pedesan entog merupakan kuliner sejenis bebek yang dimasak menggunakan bumbu pedas</strong></p>\r\n', '5d95fa476ed24ba31bdd1fb7202abbe9.jpg'),
(8, 'Rumbah ', 'rumbah', '<p><strong>Rumbah adalah makanan yang berisi sayur-sayuran yang disiram dengan sambal kacang. Umumnya sayur-sayuran yang terdapat dalam rumbah yaitu kangkung, taoge, dan kol.</strong></p>\r\n', 'b7eb48c3d20c5853bb6a2ea62675e15d.jpg'),
(9, 'Ragit', 'ragit', '<p><strong>Mie ragit ini, menggunakan kuah santan sayur santan udang, dan sebagai pelengkap, juga ditambahkan telur yang sudah diiris tipis.</strong></p>\r\n', 'fd11063528c14cdc1d8ea2dc073f111e.jpg'),
(10, 'Kue Cikak', 'kue-cikak', '<p><strong>Kue cikak merupakan salah satu jenis kue basah yang identic manis sebagai jajanan pasar tradisional. Bahan utama pembuatan kue ini adalah tepung ketan dan ubi sehingga tekstur kue sedikit kenyal dan lembut.</strong></p>\r\n', '9e04217790bdf17f2a49ffee215c105d.jpg'),
(11, 'Blengep Cotot', 'blengep-cotot', '<p><strong>Makanan yang terbuat dari singkong dan gula merah, ketika sesorang mengkonsumsi kuliner ini, maka gula merah akan keluar dari kulier tersebut, dan meleleh dimulut.</strong></p>\r\n', 'c4a083eff3f74d37ff9a9b7ff339949a.jpg'),
(12, 'Bubur Glintir', 'bubur-glintir', '<p><strong>Bubur glintir ini terbuat dari tepung beras bukan ubi. Tepung beras kemudian dibentuk bulat-bulat, lalu direbus, menggunakan gula merah dan santan. Sehingga cita rasa yang dihasilkan oleh kuliner ini manis dan juga gurih</strong></p>\r\n', '1bd162b8590eb2601cbbcdb716e081d5.jpg'),
(13, 'Nagasari', 'nagasari', '<p><strong>Kue ini terbuat dari tepung beras, gula pasir, daun pandan, santan kelapa, serta pisang yang dijadikan sebagai isiannya. Rasanya semakin nikmat, karena Nagasari dibungkus menggunakan daun pisang yang mampu mengeluarkan bau harum wangi semerbak.</strong></p>\r\n', '48171c55b0b07a9f5828618976d65890.jpg'),
(14, 'Orog-orog', 'orog-orog', '<p><strong>Makanan ini terbuat dari tepung beras, lalu ditambahkan dengan gula&nbsp; merah dan parutan kelapa dibagian atasnya.</strong></p>\r\n', '887e5c2913d5c220fdc85d6b26c32743.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wisata`
--

CREATE TABLE `tb_wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(50) NOT NULL,
  `alamat_wisata` text NOT NULL,
  `slug_wisata` varchar(50) NOT NULL,
  `foto_wisata` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `lang_wisata` varchar(10) NOT NULL,
  `lat_wisata` varchar(10) NOT NULL,
  `peta_wisata` text NOT NULL,
  `jenis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_wisata`
--

INSERT INTO `tb_wisata` (`id_wisata`, `nama_wisata`, `alamat_wisata`, `slug_wisata`, `foto_wisata`, `deskripsi`, `lang_wisata`, `lat_wisata`, `peta_wisata`, `jenis`) VALUES
(7, 'Pulau Biawak', ' Pulau Biawak, Kec. Indramayu, Kab. Indramayu', 'pulau-biawak', '7fc483bc1b5b8df709c3e5897a146eeb.jpg', '<p><strong>Satu tempat wisata di Indramayu yang menyuguhkan pemandangan alam yang mempesona. Wisata yang cocok bagi pecinta alam ini bernama Pulau Biawak Indramayu. Dipulau yang menawan ini tersimpan pantai biru nan cantik serta menyimpan nilai sejarah tinggi. Selain itu pengunjung yang datang juga disuguhkan sebuah menara yang biasa dijadikan tempat berfoto dengan spot pantai serta alam disekitar yang tampak hijau alami. Bagi pecinta diving tempat ini rekomended dimana alam bawah lautnya yang masih terjaga dan mempesona.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15873.864963757065!2d108.3805556!3d-5.9302777!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6c182d36bd1993%3A0xe7a7c477fdb3c3d9!2sPulau%20Rakit!5e0!3m2!1sid!2sid!4v1675843906014!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(8, 'Pantai Dadap', 'Desa Dadap, Kec. Juntinyuat, Kab. Indramayu', 'pantai-dadap', 'd347ddcfbb00003309c7c1638cb71b85.jpg', '<p><strong>Pantai yang berada didesa Dadap, Kec. Juntinyuat, Kab. Indramayu, Jawa Barat yang satu ini sungguh Mempesona. Sangat terasa hembusan angin kencang serta gulungan ombak yang menawan cocok dijadikan tempat untuk menghilangkan segala kepenatan yang ada setelah lelah dengan berbagai aktivitas seharian, dan cocok sebagai tempat berlibur dengan keluarga.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15858.312707722525!2d108.4687374!3d-6.4481658!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eebb507bf85d3%3A0xab9ee3204d4e90ae!2sPANTAI%20DADAP!5e0!3m2!1sid!2sid!4v1675844939180!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(9, 'Pantai Karangsong', ' Karangsong, Kec. Indramayu, Kabupaten Indramayu', 'pantai-karangsong', '29f2d04ce16f518729bdc3ebb3d40efe.jpg', '<p><strong>Salah satu pantai yang tidak kalah eksotis yaitu Pantai Karangsong yang cocok menjadi bagian destinasi wajib dikunjungi. Dimana pantai ini terapat rekreasi air bermain, berenang ditepi pantai, juga terdapat penjual makanan dan minuman. Destinasi ini sangat cocok mengajak keluarga ataupun pasangan untuk berlibur dan bersantai. Lokasi Pnatai Karangsong ini berdekatan dengan Hutan Mangrove Karangsong. Luasnya perairan di Kabupaten Indramayu membuat pemerintah beserta berbagai instansi yang terkait membuat hutan resapan atau penangkal erosi yaitu Hutan Mangrove. Hutan ini sepanjang jalan dapat ditemui berbagai hewan seperti bangau, kadal, berbagai jenis hewan lainnya, Hutan dengan luas sekitar 25 hektar untuk mencapai hutan ini perlu menyewa perahu karena hutan Mangrove ini terletak pada sebrang Pantai Karangsong disepanjang jalan menaiki perahu akan melewati spot alam yang mempesona.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.67984183361!2d108.36640481397113!3d-6.3057277634646605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebc4872ce9051%3A0x488988f64087588f!2sPantai%20Karangsong!5e0!3m2!1sid!2sid!4v1675844997268!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(10, 'Pantai Glayem', 'Juntinyuat, Blok Glayem, Kec. Juntinyuat, Kab. Indramayu', 'pantai-glayem', 'b0ded42e7d8bfa0d875b46e031d66892.jpg', '<p><strong>Deretan pantai yang ada di Kabupaten Indramayu memang cukup banyak, pantai ini terkenal karena menjadi salah satu pantai nelayan dan memiliki pusat pelelangan ikan. Terlihat banyak sekali perahu nelayan lokal yang bersandar di bibir pantai. Selain itu Pantai Glayem ini terdapat rumah makan yang mengelola seafood. Jika berkunjung ke pantai ini bisa menikmati hidangan khas sambil menikmati suasana pantai syahdu.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15859.151125608301!2d108.43102811420704!3d-6.421307702473751!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eeabcaafad1fb%3A0x2108a13674376eaf!2sPantai%20Glayem!5e0!3m2!1sid!2sid!4v1675845126057!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(11, 'Pantai Bali (Balongan Indah)', ' Jl. Raya Balongan, Balongan, Kabupaten Indramayu', 'pantai-bali-balongan-indah', '63ed20113014e1750713d8978d0c5a6b.jpg', '<p><strong>Pantai ini biasa disebut dengan pantai Balongan Indah yangg sesuai dengan lokasinya di Balongan. Pantai ini tampak mempunyai pasir yang berwarna hitam yang membalut pantai dikombinasikan dengan laut yang biru dan menawan membuat perpaduan pemandangan yang cantik nan elok. Selain itu, gulungan ombak yang silih berganti seolah sedang bernyanyi untuk alam. Tempat wisata salah satu rekomendsai yang ada di Indramayu.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.285326838343!2d108.38538581397164!3d-6.3571012639585325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebf1960710559%3A0x3ae5626b6d3d68bb!2sKedai%20seblak%20Bali!5e0!3m2!1sid!2sid!4v1675845188410!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(12, 'Pantai Tanah Merah Samboja', 'Lemah Abang Eretan, Indramayu', 'pantai-tanah-merah-samboja', '193be8ec9dd9a05e6788350d3fbad848.jpg', '<p><strong>Kondisi pantai ini cukup unik karena dipenuhi dengan tanah yang warnanya kemerahan, selain itu untuk memecah ombak agar tidak terjadi erosi atau pengikisan bibir pantai dibangun dinding bebatuan. Selain itu bisa juga menikmati indahnya deburan ombak dipantai ini dari dinding batu yang ada.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.616471295601!2d108.0529575!3d-6.3140079!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb3341132cd33%3A0x903b1bab0570d32c!2sLA%20(%20pantai%20laut%20merah%20)%20ERETAN!5e0!3m2!1sid!2sid!4v1675845232182!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(13, 'Pantai Eretan', 'Lokasi : Eretan Wetan,Kec. Kandanghaur, Kab. Indramayu', 'pantai-eretan', '3765564c047004d85ab17dce4971c0d0.jpg', '<p><strong>Pantai eretan merupakan pantai yang penuh sejarah, konon katanya pasukan Jepang pertama kali menginjakan kakinya dipantai ini. Pasukan Jepang yang tiba memulai perlawanan kepada Belanda dari pantai in. Pnatai ini berada di jalan Pantura sehingga untuk mengunjungi pantai ini tidak terlalu sulit. Selain itu pantai eretan ini memiliki pesona alam yang menawan dengan pemandangan hijau yang alami, dan beberapa penduduk juga membangun empang tempat pembudidayaan ikan disekitar pantai ini</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63449.21028536626!2d108.02068636721505!3d-6.319336914589385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb3739e1de71f%3A0x798ed20b15b8aa79!2sMuara%20Pantai%20Eretan%20Kulon!5e0!3m2!1sid!2sid!4v1675845506761!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(14, 'Pantai Tebing Patrol', 'Patrol, Kab. Indramayu', 'pantai-tebing-patrol', '4ee8e349a6c545d8501ab453bf3a89cc.jpg', '<p><strong>Pantai tebing patrol bisa menjadi salah satu tempat pilihan berlibur bersama dengan orang tersayang. Pantai tebing patrol ini memiliki pemandangan yang sangat indah. Melihat ombak laut yang saling bersahutan dari tepi tebing dan memnag inilah letak keistimewaan pantai tebing patrol.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.8136508909392!2d108.0040554!3d-6.288208299999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e694d3ad2f8af07%3A0x5a06490541b21d1b!2sPantai%20Kepuh!5e0!3m2!1sid!2sid!4v1675846320255!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(15, 'Pantai Solikin', 'Desa Eretan Wetan dan Ilir, Kandanghaur, Kab. Indramayu', 'pantai-solikin', '9e716b5d7f639f93e894729c5f138e2c.jpg', '<p><strong>Dari deretan pantai yang ada di Indramayu terdapat pantai yang memiliki pemandangan menakjubkan yaitu pantai solikin. Pantai ini terdapat banyak beberapa pepohonan yang tanpa daun, pemandangan yang berbeda dengan pantai lainnya, akan sangat cocok untuk melihat matahari terbenam dengan pemandangan yang eksotis dipantai solikin ini</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15862.008575085692!2d108.1068453!3d-6.3289189!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb384eeb58155%3A0xa80c48b72cbf0ec9!2sPantai%20PANJIWA%20Sumber%20Mas!5e0!3m2!1sid!2sid!4v1675846473963!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(16, 'Pantai Rembat', 'Jl. Raya Juntikedokan, Juntinyuat, Kab. Indramayu', 'pantai-rembat', '1364acfed4b9d437c2bdb436968e00c3.jpg', '<p><strong>Pantai rembat merupakan sebuah lokasi yang cocok untuk berlibur bersama keluarga. Indahnya suara ombak yang selalu bersahutan serta terlihat burung-burung yang datang untuk mencari mangsa membuat pemandangan laut semakin cantik. Selain itu terdapat berbagai spot foto unik dan menarik dipantai ini tidak kalah indah dan menawan.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.7746293826967!2d108.4364040134619!3d-6.422996251887319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eeb2673c63e23%3A0x7b129b90dd682640!2sPantai%20Rembat!5e0!3m2!1sid!2sid!4v1675846496477!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(17, 'Pantai Tirtamaya', 'Juntikedokan, Juntinyuat, Kab. Indramayu', 'pantai-tirtamaya', '140484f325ee47edcea7dbac8af96b2b.jpg', '<p><strong>Meskipun bukan kawasan pantai berpasir putih, Pantai Tirtamaya menyuguhkan air laut yang jernih dan ombaknya tidak terlalu tinggi. Sehingga, pantai ini cukup aman bagi wisatawan yang ingin bermain di pantai ini. Bahkan,&nbsp; bisa juga berenang di sini. Tak ingin berenang dan hanya ingin memandangi pesona pantai yang indah bisa bersantai di bawah pohon yang teduh di sekitar pantai. Pantai ini juga menyediakan saung yang bisa digunakan wisatawan. Mereka dapat sekadar bersantai dan menikmati pemandangan.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.8939292950586!2d108.42369411397235!3d-6.4076634644488255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ec00041c66af7%3A0x5b3b415b55a94ac1!2sPantai%20Tirtamaya!5e0!3m2!1sid!2sid!4v1675846558395!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(18, 'Pantai Tiris (Paris)', ' Pabean Ilir, Pasekan, Indramayu', 'pantai-tiris-paris', '15b77b074941790c77269cf75ddf2fa2.jpg', '<p><strong>Pantai ini merupakan salah satu destinasi wisata yang wajib dikunjungi saat kamu sedang berlibur di Indramayu. Mempunyai kawasan hutan mangrove untuk mencegah abrasi tidak hanya kawasan mangrove ada juga spot untuk berfoto, tiduran wahana hammock, dan juga gazebo. Pantai ini selain menyuguhkan berbagai spot tak kalah menariknya dengan pemandangan yang mempesona.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.06951627603!2d108.31418781397066!3d-6.254572062977191!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebb4dad9c8901%3A0x44c74af2c47f54f1!2sPARIS%20(Pantai%20Tiris)!5e0!3m2!1sid!2sid!4v1675846706983!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(19, 'Pantai Plentong', 'Desa Ujunggebang, Kec. Sukkra, Kab. Indramayu', 'pantai-plentong', 'c88482ae7b8859aa048700a6fb70f4f3.jpg', '<p><strong>Salah satu pantai yang selalu ramai pengunjung adalah Pantai Plentong. Pantai Plentong mulai menunjukkan pesona-nya, pantai yang dulu sama sekali tidak di lirik, kini menjadi andalan pendapatan bagi warga Ujunggebang. Wajah Pantai Plentong menjadi kawasan yang lebih indah dipandang. Pihak pantai memfasilitasi seperti area parker, kamar bilas, musholla dan toilet. Pantai plentong tersedia berbagai macam wahana wisata yang dapat dimanfaatkan oleh wisatawan yaitu pemandangan alam yang membentang luas yang elok, banana boat, ATV, sepeda air, berenang, naik perahu,camping area, permainan anak. Salah satu pantai yang cocok untuk berlibur bersama orang tersayang.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.064679718416!2d107.93111251345258!3d-6.2552095505983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6951e119346269%3A0xb7a6b64b7d70d512!2sPantai%20Plentong%20Ujunggebang!5e0!3m2!1sid!2sid!4v1675846754766!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(20, 'Pantai Tirta Ayu', 'Jl. Tirta Ayu, Balongan, Indramayu', 'pantai-tirta-ayu', '214b7042a94ac77d6953b889999ea873.jpg', '<p><strong>Objek Wisata pantai Indramayu dengan penampilan yang semakin cantik. Kini pantai Tirta Ayu memiliki konsep seperti suasana di Bali, hal tersebuat tercetus sang penggiat pantai ini setelah berlibur di Pulau Dewata. Salah satu objek wisata rekomendasi untuk dkunjungi, pantai ini menyuguhkan ornament-ornamen gapura seperti di Bali tidak hanya itu pemandangan, dan spot foto yang instagramable yang membuat daya tarik pengunjung.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.324419870255!2d108.3796803139717!3d-6.352029063909577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebe58cb33592b%3A0x55ff37352aadf481!2sPantai%20Tirta%20Ayu!5e0!3m2!1sid!2sid!4v1675846786282!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1),
(21, 'Taman Tjimanoek', 'Jalan Cimanuk, Margadadi, Kec. Indramayu, Kab. Indramayu', 'taman-tjimanoek', '2b92e34b7bfe9dd3e82dfeb2244bf97c.jpg', '<p><strong>Wisata ini tempatnya sangat strategis dengan berbagai tumbuhan hijau yang tumbuh ditaman ini dengan area terbuka hijau yang memberikan kesejukan bagi siapa saja yang berkunjung. Tempat ini juga memiliki berbagai spot keren bagi yang berfoto jangan sampai terlewat untuk berkunjung ke Taman Tjimanoek. DIsekitar taman ini terlihat pedagang jajanan yang melengkapi waktu bersantai bagi pengunjung.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.516162858964!2d108.3189627139714!3d-6.327092363669531!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebbfd289fe0a9%3A0xe9cd846c4e983a9e!2sTaman%20Cimanuk!5e0!3m2!1sid!2sid!4v1675846816156!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2),
(22, 'Waduk Cipancuh', 'Situraja, Kec. Gantar, Kab. Indramayu', 'waduk-cipancuh', 'b60904283177a7b92cc65ecfc7791622.jpg', '<p><strong>Waduk yang berfungsi untuk menampung air ini menawarkan pemandangan yang menarik dan cocok sekali dijadikan tempat bersantai dan berlibur. Waduk Cipancuh sendiri memiliki luas sekitar 70 hektar. Selain itu keindahan waduk ini semakin terasa dengan adanya pemandangan alam nan hijau disekitarnya, meski waduk ini dibangun sejak 1927 waduk Cipancuh masih tetap terjaga keindahannya.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31713.617429951937!2d107.9308236171937!3d-6.496068008897025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6936a8bbfb08fd%3A0x86708c64074fb64c!2sWaduk%20Cipancuh!5e0!3m2!1sid!2sid!4v1675846924683!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2),
(23, 'Taman Tugu Perjuangan', ' Pekandangan, Kec. Indramayu, Kab. Indramayu', 'taman-tugu-perjuangan', '328aa06cdc96027178b409ecb8d600cb.jpg', '<p><strong>Taman tugu ini terdapat ruang terbuka hijau yang cocok untuk bersantai bareng keluarga. Dengan lokasi yang strategis berdekatan dengan Bundaran Mangga yang semakin ramai juga banyak sekali jajanan yang dapat melengkapi waktu bersantai. Didekat Taman Tugu Perjuangan terdapat pula Masjid Islamic Center salah satu masjid yang selalu ramai pengunjung untuk beribadah dikarenakan memiliki desain yang modern nan megah sehingga mempunyai daya tarik tersendiri.</strong></p>\r\n', '', '', 'Taman Tugu Perjuangan', 2),
(24, 'Situ Bolang', 'Desa Jatisura, Kec. Cikedung, Kab. Indramayu', 'situ-bolang', '46bcf5d5add66bc7b689cde5addee68f.jpg', '<p><strong>Situ bolang atau danau yang memiliki luas sekitar 74 hektar ini menjadi salah satu lokasi yang banyak dikunjungi wisatawan terutama pada musim liburan. Danau ini memiliki air berwarna biru kehijauan yang menawan. Selain menikmati indahnya danau berair biru kehijauan bisa menikmati wisata yang terdapat berbagai macam pepohonan mangga, dan peternakan kambing, selain itu banyak spot untuk berfoto. Wisata ini selain menyuguhkan pemandangan juga edukasi bagi yang mengunjunginya.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3963.88707755229!2d108.19120332695313!3d-6.535942699999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ecfe5bd2f2e8f%3A0x94f32d582253f8f6!2sSitu%20Bolang!5e0!3m2!1sid!2sid!4v1675846983372!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2),
(25, 'Taman Rusa Bumi Patra', 'Jl. Bumi Patra Raya, Pekandangan – Indramayu', 'taman-rusa-bumi-patra', '47742508dbbc4e506a44c1da12a7d8a8.jpg', '<p><strong>Taman rusa bumi patra ini bisa menjadi salah satu opsi pilihan saat berlibur di Indramayu. Sebuah taman pelestarian atau pengembangan rusa Jawa ini memberikan banyak nilai edukasi sehingga sangat cocok untuk mengunjungi bersama orang tersayang terutama bersama buah hati untuk mengenal hewan.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.3328523148803!2d108.33321811345792!3d-6.350934451328033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebeca347ce7af%3A0xa0ed8d9d43e1c309!2sTaman%20Rusa%20Bumi%20Patra%20Indramayu!5e0!3m2!1sid!2sid!4v1675847018958!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2),
(26, 'Curug Citayam', ' Desa Cikawung, Kec. Terisi, Indramayu', 'curug-citayam', 'b27a0b72122922d029ec3ac12e8067e8.jpg', '<p><strong>Curug Citayam ini merupakan salah satu rekomendasi tempat untuk berlibur bagi yang mempunyai hobi traveling. Meski keberadaanya belum begitu banyak dikenal, namun pesonanya tidak kalah dari air terjun atau curug yang ada ditempat lain. Untuk mengunjungi curug citayam ini memang mambutuhkan waktu dan tenaga ekstra karena lokasinya cukup tersembunyi dari pusat keramaian.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31721.572266435887!2d108.05247021710822!3d-6.368607004003719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb4dd34413d03%3A0x83e66cd1d9d065ef!2sCurug%2C%20Kec.%20Kandanghaur%2C%20Kabupaten%20Indramayu%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1675847050618!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2),
(27, 'Center Mutiara Bangsa', ' Komplek Waduk Bojongsari, Sindang, Bojongsari, Kec. Indramayu, Kab. Indramayu', 'center-mutiara-bangsa', 'e2a499e6752a253a10f3b585fe966c65.jpg', '<p><strong>Scince Center Mutiara Bangsa bisa menjadi salah satu lokasi liburan saat mengunjungi Kota Indramayu, Jawa Barat. Tempat Wisata ini dibuka sejak 2017 lalu dan berlokasi di waduk Bojongsari, Sindang, Bojongsari, Kec. Indramayu, Kab. Indramayu Jawa Barat. Wisata Scince Center Mutiara Bangsa ini mengutamakan edukasi bagi anak dan remaja. Terdapat sekitar 48 wahana yang menjadi pusat edukasi terbesar di Indonesia karena dilengkapi dengan IPTEK.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.3669758795277!2d108.31583911397163!3d-6.346502963856307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb946543095a9%3A0xac33293430d85ecd!2sMUTIARA%20BANGSA%20SCIENCE%20CENTER!5e0!3m2!1sid!2sid!4v1675849307150!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3),
(28, 'Alun-alun Indramayu', 'Jl. Mayjen Sutoyo, Margadadi, Kec. Indramayu, Kab. Indramayu', 'alun-alun-indramayu', '859826115c1efa50dbc88818af44bfd1.jpg', '<p><strong>Salah satu lokasi di Kota Indramayu yang wajib dikunjungi adalah Alun-alun Indramayu. Wisata yang murah yang ada ditengah kota ini yang selalu ramai dikunjungi. Ruang terbuka hijau yang ditata serapi mungkin ini memang selalu menarik banyak orang untuk berkunjung. Terutama saat pagi hari, banyak orang yang duduk sambil beristirahat setelah lelah lari pagi. Alun-alun Indramayu ini lokasi yang strategis juga dekat dengan wisata Taman Tjimanoek dan Masjid Agung Indramayu.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.5206244886185!2d108.31861621345654!3d-6.326510951140417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebc01eaaaaaab%3A0x6ef909d627eb01d7!2sAlun-Alun%20Indramayu!5e0!3m2!1sid!2sid!4v1675849486199!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3),
(29, 'Makam Raden Bagus Arya Wiralodra', 'Jl. Murahnara, Sindang, Kab. Indramayu', 'makam-raden-bagus-arya-wiralodra', 'a9d809d01bc13a3ab95bbeb63864b012.jpg', '<p><strong>Mengenal Indramayu melalui situs makam RAden Bagus Arya Wiralodra. Menurut sejarah Indramayu merupakan sosok pendiri Indramayu, dalam sejarahnya yang memperjuangkan dan berdirinya sebuah kota yang disebut Indramayu dengan gigih juga penuh semangat juang melawan penjajah yang ingin menguasai daerah Indramayu. Tidak heran beliau harum namanya disemua kalangan terutama masyarakat Indramayu khususnya dengan memberi kehormatan sebagai pahlawan. Makam Raden BAgus Arya Wiralodra ini sebagai perantara edukasi sejarah mengenalkan Indramayu.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.469533302732!2d108.31977031397143!3d-6.333165663727918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb9574612ab49%3A0xcc59867ea13ba2a6!2sMakam%20Raden%20Bagus%20Aria%20Wiralodra!5e0!3m2!1sid!2sid!4v1675849525678!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3),
(30, 'Agrowisata Mangga', 'Desa Jatisura, Kec. Cikedung, Kab. Indramayu', 'agrowisata-mangga', '851831a4b91ecc04dfa9fcc89de1e6a5.jpg', '<p><strong>Siapa yang tidak tahu jika Indrmayu dikenal sebagai kota penghasil buah mangga terbesai di Indonesia. Selain terdapat pohon mangga yang ditanam diperumahan serta perkebunan milik warga terdapat juga argowisata mangga yang cukup besar. Tempat wisata ini bisa dijadikan pilihan untuk mengunjunginya, selain menambah wawasan tentang mangga juga dapat membawa pulang buah mangga sebagai oleh-oleh untuk orang yang tersayang dirumah.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.06691331369!2d114.28231881399624!3d-8.492875288292455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7dae538f94c2d%3A0x4ff3154b3e58c7d!2sAgrowisata%20Syifaul%20Jannah!5e0!3m2!1sid!2sid!4v1675849560426!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3),
(31, 'Museum Bandar Cimanuk', 'Jl. Lemahabang, Kec. Indramayu. Kab. Indramayu', 'museum-bandar-cimanuk', 'e6574cce5072469bc241a0217afd2520.jpg', '<p><strong>Museum Bandar Cimanuk merupakan upaya untuk memberikan informasi terkait ragam kekayaan tradisi Indramayu pada masa lampau.Menurut pengelola museum ini Di masa lampau Indramayu merupakan salah satu daerah yang memiliki potensi tradisi yang luar biasa, dari situ diperlukan adanya instrumen sebagai informasi kepada masyarakat untuk menciptakan ruang pemajuan kebudayaan Indramayu di masa lampau. Di sini para pengunjung dapat menemukan naskah kuno Raden Arya Wiralodra. Selain itu ada juga koleksi benda-benda yang diciptakan sebagai teknologi tradisional oleh masyarakat Indramayu di masa lalu seperti pedati untuk angkutan barang di tahun 1800-an, dan banyak sekali peninggalan-peninggalan masa lampau dengan berupaya untuk menyelamatkan sejarah Indramayu</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.5041367857307!2d108.32034161397146!3d-6.328659263684589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebbfd678bf9a7%3A0x9bc31e9ea697cf24!2sMuseum%20Bandar%20Cimanuk%20(MBC)!5e0!3m2!1sid!2sid!4v1675849597243!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3),
(32, 'Tiga Bintang Firdaus', 'Desa Jatimulya, Terisi, Indramayu', 'tiga-bintang-firdaus', '8f529847c8dbe192aa142ce6b565ae73.jpg', '<p><strong>Kolam renang dibuat dengan mengutamakan pemandangan alami dan menawan, Selain itu dilengkapi pula dengan taman satwa, Gazebo untuk pengunjung bersantai sambil menikmati indahnya desain dan pemandangan dikolam renang ini dan bisa menajadi spot foto yang bagus. Kolam renang sendiri dilengkapi dengan berbagai wahana permainan mulai dari ember tumpah, seluncuran, serta terapi ikan. </strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.5041367857307!2d108.32034161397146!3d-6.328659263684589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6ebbfd678bf9a7%3A0x9bc31e9ea697cf24!2sMuseum%20Bandar%20Cimanuk%20(MBC)!5e0!3m2!1sid!2sid!4v1675849646703!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 4),
(33, 'Agung Fantasi Waterpark', 'Jl. Bangkaloa Ilir-Widasari No.58, Bangkaloa Ilir, Kec. Widasari, Kab. Indramayu', 'agung-fantasi-waterpark', '87565908cfac9cec05747801b24fbc16.jpg', '<p><strong>Jika memiliki rencana mengunjungi Kota Indramayu untuk berlibur bisa mampir ke kawasan ini terdapat lokasi wisata Agung Fantasi Waterpark. Sebuah arena bermain air yang cocok dikunjungi bersama teman, pasangan, anak, dan keluarga. Berbagai wahana air yang dibuat khusus untuk anak-anak seperti kolam anak, perosotan, ember tumpah, dan masih banyak lagi. Selain itu banyak pula wahana yang dibuat khusus untuk orang dewasa yang memacu adrenalin.</strong></p>\r\n', '', '', '', 4),
(34, 'Waterboom Bojongsari', 'Desa Bojongsari, Indramayu, Indramayu', 'waterboom-bojongsari', '5b3300b4255a8197eb1bf737d814996c.jpg', '<p><strong>Wisata fantasi ini menawarkan arena rekreasi seru yang cocok dijadikan pilihan tempat untuk menghabiskan waktu liburan dengan orang tersayang. Beberapa wahana yang tersedia seperti kolam arus, ember tumpah, bungee trampoline, serta ATV. Berbagai wahana dibuat demi memberi kepuasan dan rasa nyaman bagi siapa saja yang berkunjung ke Waterboom Bojongsari yang memiliki konsep water base theme park ini.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.3827148933415!2d108.3165988139716!3d-6.344457963836587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6eb9467acbd653%3A0x89dddcd92b97ad47!2sWater%20Boom%20BOJONG%20SARI%20INDAH%20(BSI)!5e0!3m2!1sid!2sid!4v1675849706027!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 4),
(35, 'Waterboom Tirta Djaya', 'Jl. Jendral Sudirman, No. 09, Cipancuh, Haurgeulis, Indramayu', 'waterboom-tirta-djaya', 'ff6273e0b2f336fcc27c6bdd18055c0b.jpg', '<p><strong>Waterboom Tirta Djaya ini merupakan salah satu tempat wisata fantasi yang memiliki berbagai wahana air yang pasti sangat disukai oleh anak-anak. Kolam renang ini berbagai ukuran juga cocok sekali buat semua kalangan. Waterboom ini terkonsep ramah untuk semua kalangan dan usia.</strong></p>\r\n', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.592996188103!2d107.94100481397273!3d-6.4462705648259755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e693672ee7ecbf9%3A0xc4fdac40c77b8639!2sWaterboom%20Tirta%20Djaya!5e0!3m2!1sid!2sid!4v1675849792061!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indeks untuk tabel `tb_budaya`
--
ALTER TABLE `tb_budaya`
  ADD PRIMARY KEY (`id_budaya`);

--
-- Indeks untuk tabel `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  ADD PRIMARY KEY (`id_kuliner`);

--
-- Indeks untuk tabel `tb_wisata`
--
ALTER TABLE `tb_wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_blog`
--
ALTER TABLE `tb_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_budaya`
--
ALTER TABLE `tb_budaya`
  MODIFY `id_budaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_kuliner`
--
ALTER TABLE `tb_kuliner`
  MODIFY `id_kuliner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_wisata`
--
ALTER TABLE `tb_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
