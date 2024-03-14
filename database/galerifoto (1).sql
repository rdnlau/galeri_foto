-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 02:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar_foto`
--

CREATE TABLE `komentar_foto` (
  `komentarID` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'R. Karisha Laura Sabila', 'rdnlau', 'rdnlau', '085150599416', 'karishalaurasabila@gmail.com', 'Sdyney, Swiss'),
(3, 'lora', 'lora', 'lora', '089524710802', 'lora@gmail.com', 'Jepang'),
(5, 'Lalaurey', 'laurey', 'laurey', '0123456789', 'lalaurey@gmail.com', 'Jepang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Your Name'),
(2, 'Weathering With You'),
(3, 'Suzume'),
(4, 'The Garden Of Words'),
(5, 'Her Blue Sky'),
(6, 'Flavors Of Youth'),
(7, 'Howl\'s Moving Castle'),
(8, 'Demon Slayer'),
(9, 'A Whisker Away'),
(10, 'Fireworks'),
(11, 'A Silent Voice'),
(12, 'When Marnie Was There'),
(13, 'My Neighbor Totoro'),
(14, 'A Spirited Away'),
(15, 'Ponyo'),
(16, 'Castle In The Sky'),
(17, 'Jujutsu Kaisen'),
(18, 'Sailor Moon Eternal'),
(19, 'One Piece'),
(20, 'Blue Exorcist'),
(21, 'Death Note'),
(22, 'Tokyo Revengers'),
(23, 'A Silent Voice'),
(24, 'Spy X Family'),
(25, 'Chainsaw Man'),
(26, 'Beast Tamer'),
(27, 'Byousoku 5 Centimeter'),
(28, 'I Want To Eat Your Pancreas'),
(29, 'Romantic Killer'),
(30, 'Your Lie In April');

-- --------------------------------------------------------

--
-- Table structure for table `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(1, 1, 'animation, drama, fantasy, romance', 2, 'Makoto Shinkai', 'Your Name | Kimi no Na wa', '<p>Dua remaja berbagi hubungan magis yang mendalam setelah mengetahui bahwa mereka bertukar tubuh. Segalanya menjadi lebih rumit ketika laki-laki dan perempuan itu memutuskan untuk bertemu langsung.</p>\r\n', 'kimi no na wa.webp', 1, '2024-03-13 04:23:22'),
(2, 2, 'award winning, drama, fantasy, romance', 2, 'Makoto Shinkai', 'Weathering With You | Tenki no Ko', '<p>Bersetting pada periode cuaca yang sangat hujan, anak sekolah menengah Hodaka Morishima melarikan diri dari rumahnya di pedesaan yang bermasalah ke Tokyo dan berteman dengan seorang gadis yatim piatu yang dapat memanipulasi cuaca.</p>\r\n', 'weathering with you.jpeg', 1, '2024-03-12 16:09:46'),
(3, 3, 'adventure, fantasy, action, yythology', 2, 'Makoto Shinkai', 'Suzume no Tojimari', '<p>Ketika langit berubah menjadi merah dan bumi bergetar, Jepang berada di ambang bencana. Namun, seorang remaja yang bertekad bernama Suzume menetapkan misi untuk menyelamatkan negaranya. Mampu melihat kekuatan supernatural yang tidak bisa dilihat orang lain, dia harus menutup pintu misterius yang menyebarkan kekacauan di seluruh negeri. Sebuah perjalanan berbahaya menanti saat nasib Jepang berada di pundaknya.</p>\r\n', 'suzume.jpg', 1, '2024-03-12 16:10:31'),
(4, 4, 'drama, romance, manga', 2, 'Makoto Shinkai', 'The Garden of Words | Kotonoha no Niwa', '<p>Ketika seorang remaja yang kesepian memutuskan untuk melewatkan pelajaran paginya demi duduk di taman yang indah, dia bertemu dengan seorang wanita tua misterius yang memiliki perasaan keterasingan yang sama.</p>\r\n', 'the garden of words.webp', 1, '2024-03-12 16:10:43'),
(5, 5, 'drama, music, romance, slice of life, supernatural.', 2, 'Mari Okada', 'Her Blue Sky | Sora no Aosa wo Shiru Hito yo', '<p>Aoi Aioi, seorang siswa kelas dua SMA, memiliki cita-cita untuk menjadi seorang musisi. Ia mempunyai seorang kakak perempuan bernama Akane. Mantan pacar Akane yang bernama Shinnosuke Kanomura merupakan gitaris pemula yang ingin sukses. Orangtua Aoi dan Akane telah meninggal dunia 13 tahun lalu. Saat itu, Akane mengurungkan niatnya untuk pergi ke Tokyo dengan Shinnosuke dan memutuskan untuk merawat Aoi.</p>\r\n', 'her blue sky.webp', 1, '2024-03-12 16:11:04'),
(6, 6, 'romance, drama, slice of life', 2, 'Yoshitaka Takeuchi', 'Flavors Of Youth | Shikioriori', '<p>Tiga kisah remaja dari berbagai kota di Tiongkok: kenangan terkunci dalam semangkuk mie kukus, kecantikan yang memudar menemukan jalannya, dan cinta pertama yang pahit.</p>\r\n', 'flavors of youth.jpg', 1, '2024-03-12 16:11:18'),
(7, 7, 'animation, adventure, family, fantasy ', 2, 'Diana Wynne Jones', 'Howl\'s Moving Castle | Howl\'s no Ugoku Shiro', 'Sophie (Emily Mortimer) memiliki kehidupan yang lancar di toko topi mendiang ayahnya, tetapi semua itu berubah ketika dia berteman dengan penyihir Howl (Christian Bale), yang tinggal di kastil terbang ajaib. Namun, Penyihir Sampah yang jahat (Lauren Bacall) mempermasalahkan hubungan mereka yang mulai berkembang dan memberikan mantra pada Sophie muda, yang membuatnya menua sebelum waktunya. Kini Howl harus menggunakan semua bakat magisnya untuk melawan wanita pencemburu itu dan mengembalikan Sophie ke masa muda dan kecantikannya yang dulu.', 'howls moving castle.png', 7, '2024-03-10 10:31:20'),
(8, 8, 'shonen manga, dark fantasy, action manga, fantasy', 2, 'Koyoharu Gotouge', 'Demon Slayer | Kimetsu no Yaiba', '<p>Tanjiro Kamado, seorang anak laki-laki yang menjadi pembasmi iblis setelah keluarganya dibantai oleh iblis dan adik perempuannya yang bernama Nezuko diubah menjadi iblis.</p>\r\n', 'demon slayer.jpg', 1, '2024-03-12 16:14:52'),
(9, 9, 'fantasy, adventure, anime', 2, 'Mari Okada', 'A Whisker Away | Nakitai Watashi wa Neko o Kaburu', '<p>Batasan antara manusia dan hewan mulai kabur ketika seorang gadis aneh mengubah dirinya menjadi seekor kucing untuk menarik perhatian kekasihnya.</p>\r\n', 'a whisker away.webp', 0, '2024-03-12 16:15:03'),
(10, 10, 'romance, sci-fi', 2, 'Shunji Iwai', 'Fireworks | Uchiage Hanabi, Shita kara Miru ka? Yoko kara Miru ka?', '<p>Suatu musim panas, Norimichi Shimada dan teman-temannya ingin mengetahui apakah kembang api terlihat bulat atau datar jika dilihat dari samping. Mereka menyusun rencana untuk menemukan jawabannya di pertunjukan kembang api Festival Moshimo. Namun, Norimichi mengalami konflik ketika teman sekelasnya, Nazuna Oikawa, berencana melarikan diri dari rumah dan ingin Norimichi bergabung dengannya. Ketika keadaan menjadi kacau dalam upaya mereka untuk melarikan diri, sebuah bola aneh milik Nazuna memberi mereka kesempatan lagi untuk tetap bersama.</p>\r\n', 'fireworks.webp', 0, '2024-03-12 16:15:15'),
(11, 11, 'romance, action, comedy, drama', 2, 'Reiko Yoshida', 'A Silent Voice | Koe No Katachi', '<p>Seorang siswa sekolah dasar dengan gangguan pendengaran diintimidasi dan dipindahkan ke sekolah lain. Bertahun-tahun kemudian, mantan penindas itu tersiksa oleh perilakunya dan bertekad untuk menebus kesalahannya.</p>\r\n', 'a silent voice.jpg', 0, '2024-03-12 16:15:27'),
(12, 12, 'action, comedy, romance, children film, mystery, thiller, melodrama,', 2, 'Hiromasa Yonebayashi', 'When Marnie Was There | Omoide no M?n?', '<p>Seorang gadis muda dikirim ke pedesaan karena alasan kesehatan, di mana dia bertemu dengan teman tak terduga berupa Marnie, seorang gadis muda dengan rambut pirang tergerai. Ketika persahabatan itu terurai, Marnie memiliki ikatan yang lebih dekat dengan sang protagonis daripada yang kita duga.</p>\r\n', 'when marnie was there.jpg', 1, '2024-03-12 16:25:54'),
(13, 13, 'drama, fantsy, thriller, adventure, comedy', 2, 'Hayao Miyazaki', 'My Neighbor Totoro | Tonari no Totoro', '<p>Kisah animasi terkenal karya sutradara Hayao Miyazaki ini mengikuti siswi Satsuke dan adik perempuannya, Mei, saat mereka menetap di sebuah rumah pedesaan tua bersama ayah mereka dan menunggu ibu mereka pulih dari penyakitnya di rumah sakit setempat. Saat para suster menjelajahi rumah baru mereka, mereka bertemu dan berteman dengan roh-roh lucu di rumah mereka dan di hutan terdekat, terutama makhluk besar yang menggemaskan yang dikenal sebagai Totoro.</p>\r\n', 'my neighbor totoro.jpg', 1, '2024-03-12 16:26:10'),
(14, 14, 'animation, adventure, family, fantasy, mystery', 2, 'Hayao Miyazaki', 'A Spirited Away | Sen to Chihiro no Kamikakushi', 'Chihiro (Rumi Hiiragi) yang berusia 10 tahun dan orang tuanya (Takashi Naitô, Yasuko Sawaguchi) menemukan sebuah taman hiburan yang tampaknya ditinggalkan. Setelah ibu dan ayahnya berubah menjadi babi raksasa, Chihiro bertemu dengan Haku yang misterius (Miyu Irino), yang menjelaskan bahwa taman tersebut adalah tempat peristirahatan bagi makhluk gaib yang membutuhkan istirahat dari waktu yang mereka habiskan di alam duniawi, dan bahwa dia harus bekerja. di sana untuk membebaskan dirinya dan orang tuanya.', 'spirited away.webp', 14, '2024-03-12 16:00:28'),
(15, 15, 'animation, adventure, comedy, family, fantasy ', 2, 'Hayao Miyazaki', 'Ponyo | Gake no Ue no Ponyo', '<p>Selama perjalanan terlarang untuk melihat dunia permukaan, seorang putri ikan mas bertemu dengan seorang anak laki-laki bernama Sosuke, yang memberinya nama Ponyo. Ponyo ingin sekali menjadi manusia, dan seiring dengan berkembangnya persahabatannya dengan Sosuke, dia menjadi semakin mirip manusia. Ayah Ponyo membawanya kembali ke kerajaan lautan mereka, namun begitu kuatnya keinginan Ponyo untuk hidup di permukaan sehingga dia melepaskan diri, dan dalam prosesnya, menumpahkan kumpulan ramuan ajaib yang membahayakan desa Sosuke.</p>\r\n', 'ponyo.jpg', 1, '2024-03-12 16:25:38'),
(16, 16, 'animation, adventure, family, fantasy, parents guide, sci-fi', 2, 'Hayao Miyazaki', 'Castle in the Sky | Tenkuu no Shiro Laputa', '<p>Sheeta yang yatim piatu dan penculiknya, Kolonel Muska, sedang terbang ke penjara militer ketika pesawat mereka diserang oleh sekelompok bajak laut yang dipimpin oleh Dola yang keibuan. Melarikan diri dari tabrakan di udara melalui kristal ajaib di lehernya, Sheeta bertemu dengan sesama yatim piatu Pazu dan pasangan tersebut bergabung untuk menemukan kota terapung mistis Laputa sambil dikejar oleh Muska dan para bajak laut, yang menginginkan harta karun kota yang tak terhitung jumlahnya.</p>\r\n', 'castle in the sky.jpg', 1, '2024-03-12 16:25:17'),
(17, 17, 'shonen manga, dark fantasy', 2, 'Gege Akutami', 'Sorcery Battle | Jujutsu Kaisen', '<p>mengisahkan Yuji yang masuk ke Klub Penelitian Ilmu Gaib, agar bisa bersantai dan bergaul dengan para senior. Sayang, senior-seniornya telah membuka segel dari jimat kutukan tingkat tinggi di sekolahnya, dan menarik roh kutukan muncul.</p>\r\n', 'foto1710259646.jpg', 1, '2024-03-12 16:07:26'),
(18, 18, 'fantasy, romance, magical girl, drama', 2, 'Kazuyuki Fudeyasu', 'Sailor Moon Eternal | Bishojo Senshi', '<p>Ketika kekuatan gelap menyelimuti bumi setelah gerhana matahari total, para Penjaga Pelaut yang tersebar harus bersatu kembali untuk membawa cahaya kembali ke dunia.</p>\r\n', 'sailor moon eternal.png', 1, '2024-03-12 16:24:46'),
(19, 19, 'adventure, fantasy, science fiction, comedy', 2, 'Eiichiro Oda', 'One Piece | Wan Pisu', '<p>seorang remaja (Luffy) yang ingin mewujudkan cita-citanya untuk mengarungi lautan dan menjadi seorang raja bajak laut.</p>\r\n', 'one piece.jpeg', 1, '2024-03-12 16:24:04'),
(20, 20, 'shonen manga, dark fantasy, fantasy', 2, 'Kazue Kato', 'Blue Exorcist | Ao no Ekusoshisuto', '<p>Anime Blue Exorcist menceritakan tentang Rin Okumura dan adik kembarnya, Yukio Okumura yang dibesarkan oleh seorang ayah bernama Shiro Fujimoto seorang exorcist. Suatu hari, Rin yang marah mengeluarkan api biru dan membuat ayahnya tersadar bahwa tanda iblis telah terlihat di diri Rin.</p>\r\n', 'blue exorcist.jpg', 1, '2024-03-12 16:23:30'),
(21, 21, 'mystery, psychological thriller, supernatural thriller', 2, 'Tsugumi Ohba', 'Death Note | Desu Noto', '<p>Bercerita tentang Light Yagami, seorang remaja jenius yang menemukan buku catatan misterius yang disebut &quot;Death Note&quot;, yang dimiliki oleh shinigami (dewa kematian) bernama Ryuk, dan memberikan penggunanya kemampuan supranatural untuk membunuh siapapun ketika menulis namanya di buku tersebut.</p>\r\n', 'death note.webp', 1, '2024-03-12 16:23:12'),
(22, 22, 'shonen manga, suspense, action, drama, supernatural', 2, 'Ken Wakui', 'Tokyo Revengers | Tokyo Ribenjazu', '<p>Seorang pria pengangguran mengetahui bahwa mantan pacarnya dibunuh. Dia tiba-tiba menemukan dirinya melakukan perjalanan melalui waktu ke tahun-tahun sekolah menengahnya dan memiliki kesempatan untuk mengubah masa depan dan menyelamatkan gadis itu. Dia bertujuan untuk naik ke puncak geng berandalan paling brutal.</p>\r\n', 'tokyo revengers.jpg', 1, '2024-03-12 16:22:45'),
(23, 23, 'shounen anime, tearjerker movies, drama anime, teen movies, anime movies', 2, 'Reiko Yoshida', 'A Silent Voice | Koe no Katachi', '<p>Seorang siswa sekolah dasar dengan gangguan pendengaran diintimidasi dan dipindahkan ke sekolah lain. Bertahun-tahun kemudian, mantan penindas itu tersiksa oleh perilakunya dan bertekad untuk menebus kesalahannya.</p>\r\n', 'a silent voice.jpg', 1, '2024-03-12 16:22:26'),
(24, 24, 'comedy, shonen manga', 2, 'Tatsuya Endo', 'SPY x Family | Supai Famiri', '<p>seorang mata-mata bernama Loid Forger yang membuat sebuah keluarga pura-pura untuk misi perdamaian dunia. Keluarga itu ada Yor, istri dan Anya, sang anak.</p>\r\n', 'spy x family.webp', 1, '2024-03-12 16:22:11'),
(25, 25, 'action, comedy horror, dark fantasy, manga', 2, 'Tatsuki Fujimoto', 'Chainsaw Man | Chenso Man', '<p>Pochita merupakan seekor anjing yang menyerupai gergaji. Kehidupan sehari-harinya berubah total ketika terjadinya sebuah pengkhianatan brutal. Namun, Denji yang memiliki iblis dalam dirinya setelah kejadian tersebut tetap harus memburu iblis lain supaya bertahan hidup.</p>\r\n', 'chainsaw man.jpg', 1, '2024-03-12 16:21:57'),
(26, 26, 'action adventure, quests, comedy', 3, 'Miyama Suzu', 'Beast Tamer | Yuusha Party wo Tsuihou sareta', 'seorang penjinak hewan bernama Rein yang disingkirkan dari kelompok pahlawan karena dianggap menjadi beban. Namun hal tersebut tidak membuat Rein putus asa, ia memutuskan untuk menjadi seorang petualang. Rein kemudian mendaftarkan di sebuah kelompok petualang, tetapi belum juga berhasil.', 'beast tamer.webp', 26, '2024-03-07 01:33:12'),
(27, 27, 'animation, drama, family, romance, certificate', 3, 'Shinta Kanou', 'Byousoku 5 Centimeter | Byosoku Go Senchimetoru', 'Diceritakan dalam tiga bagian, hubungan sahabat dekat Tono Takaki dan Shinohara Akari diuji saat Akari pindah ke kota lain. Mereka tetap berhubungan, tetapi kesulitan untuk menggambarkan perasaan mereka yang sebenarnya satu sama lain.', 'byousoku 5 centimeter.jpeg', 27, '2024-03-07 02:40:38'),
(28, 28, 'drama, romance', 3, 'Yoru Sumino', 'I Want To Eat Your Pancreas | Kimi no Suizou wo Tabetai', 'Seorang anak laki-laki penyendiri menemukan sebuah buku di ruang tunggu rumah sakit. Dia segera menemukan bahwa itu adalah buku harian yang disimpan oleh teman sekelasnya yang sangat populer yang mengungkapkan kepadanya bahwa dia diam-diam menderita penyakit pankreas yang fatal.', 'i want to eat your pancreas.jpg', 28, '2024-03-07 02:46:11'),
(29, 29, 'romance, comedy', 3, 'Wataru Momose', 'Romantic Killer | Romantikku Kira', 'seorang siswi perempuan yang suka bermain game bernama Anzu Hoshino. Anzu tidak peduli soal cinta, ia hanya peduli dengan game, coklat, dan kucing kesayangannya bernama Momohiki.', 'romantic killer.jpg', 29, '2024-03-07 03:07:03'),
(30, 30, 'shonen manga, romance, drama, music', 3, 'Naoshi Arakawa', 'Your Lie In April | Shigatsu wa Kimi no Uso', 'Seorang ahli piano tidak dapat bermain musik setelah ibunya meninggal, sampai dia bertemu dengan seorang pemain biola.', 'your lie in april.webp', 30, '2024-03-07 03:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `tb_like`
--

CREATE TABLE `tb_like` (
  `like_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `suka` int(11) NOT NULL,
  `tanggal_like` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar_foto`
--
ALTER TABLE `komentar_foto`
  ADD PRIMARY KEY (`komentarID`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tb_like`
--
ALTER TABLE `tb_like`
  ADD PRIMARY KEY (`like_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
