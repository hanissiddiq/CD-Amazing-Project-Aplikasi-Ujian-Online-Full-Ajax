-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Agu 2016 pada 00.12
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cbt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
`id_kelas` int(5) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'X MM'),
(21, 'XI MM'),
(22, 'XII MM'),
(28, 'X TKJ 1'),
(43, 'X TKJ 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_ujian`
--

CREATE TABLE IF NOT EXISTS `kelas_ujian` (
  `id_ujian` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_ujian`
--

INSERT INTO `kelas_ujian` (`id_ujian`, `id_kelas`, `aktif`) VALUES
(84, 22, 'N'),
(1, 22, 'Y'),
(1, 21, 'Y'),
(84, 21, 'N'),
(84, 1, 'N'),
(1, 28, 'Y'),
(83, 22, 'N'),
(83, 21, 'N'),
(84, 43, 'N'),
(84, 28, 'N'),
(77, 21, 'Y'),
(77, 1, 'N'),
(77, 22, 'N'),
(77, 28, 'N'),
(77, 43, 'N'),
(81, 21, 'N'),
(1, 43, 'Y'),
(86, 21, 'Y'),
(85, 21, 'Y'),
(83, 28, 'N'),
(81, 22, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
`id_nilai` int(10) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `id_ujian` int(5) NOT NULL,
  `acak_soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `sisa_waktu` varchar(10) NOT NULL,
  `jml_benar` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nis`, `id_ujian`, `acak_soal`, `jawaban`, `sisa_waktu`, `jml_benar`, `nilai`) VALUES
(1, '1415100898', 86, '55,59,52,65,67,64,70,68,51,62,61,57,53,63,56,58,54,69,60,66', '3,2,4,4,3,3,5,4,1,1,3,5,3,0,0,3,0,0,0,2', '00:02', 3, '15'),
(2, '1415100896', 86, '52,57,62,59,60,66,70,53,68,64,61,65,55,54,69,56,58,67,51,63', '2,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,3,2,1', '119:30', 1, '5'),
(3, '1415100897', 86, '68,66,64,51,61,58,57,60,62,65,55,59,54,52,70,67,53,56,63,69', '2,1,2,0,0,2,4,3,5,0,2,4,5,5,0,2,2,3,0,4', '119:10', 2, '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `password`, `id_kelas`, `status`) VALUES
('1415100897', 'Asrori', 'aed6ee9a8af0b9fd2cbcc09dccf34c45', 21, 'off'),
('1415100898', 'Chintiya Alvionta Azhari', 'ecb4632b1647c3a43dbf02790c5807a1', 21, 'off'),
('1415100896', 'Ari Abdurrahman Ghufron', '3867c97d54eb8b8f21369f2fb5ab501b', 21, 'off'),
('1516101329', 'Ananda Fajar Yuni Asih', '4915f20d2c36611cb101e95e5c34b4e7', 22, 'off'),
('1516101330', 'Andriyani Yupitasari', '4f61f4a17896e6214f85d18867f5041a', 22, 'off'),
('1516101331', 'Aprilia Cahya Nindita', 'abccc42aab83bf2a4ab4b8258a1984b6', 22, 'off'),
('1516101332', 'Arif Aldiansyah', 'a60c4b8e7ce52032ed89a5f5865bb740', 22, 'off'),
('1516101333', 'Dimas Widianata', '3eaf20307bfd66dfe275e68787babb5e', 22, 'off'),
('1516101334', 'Eka Rahayu', 'a2d50d62a02ca3cd19e83338e858bcc9', 22, 'off'),
('1516101335', 'Estri Indah Pangesti', 'c34ad926781234f33952da15df3defe3', 22, 'off'),
('1516101336', 'Evi Yuliana', '91be6b65dd62efff455048290fdeeb5a', 22, 'off'),
('1516101337', 'Faisal Bakhri', 'a3c89eb7861b01cc85a61922dc523727', 22, 'off'),
('1516101338', 'Fasikha', '269b599414654d8cfba5f2f012b4e4ac', 22, 'off'),
('1516101339', 'Fikrotun Hana', 'b37cae4b03d69b000943f466f4540e12', 22, 'off'),
('1516101340', 'Firdaus Ardiansyah', '8b5f39d399cba4fa163cd092c773d3ff', 22, 'off'),
('1516101341', 'Hardianti Pratiwi', '97c722791406b4b8760fa70552cfa206', 22, 'off'),
('1516101342', 'Hesti Purnami', '8f2171d718d9845d6f0f5d6fc9d3946a', 22, 'off'),
('1516101343', 'Inayah Cahya Ramadhani', '6537562125cbe46ee4508b83b9802b8e', 22, 'off'),
('1516101344', 'Indra Khofifah', '709f326f8ab0911cacfded99dbb331e7', 22, 'off'),
('1516101345', 'Intan Mei Sapriani', '45b7803f86aca06dce40edf7151bf5f2', 22, 'off'),
('1516101346', 'Irma Handayani', '2c0803ac0f1f328423480e6c36094d05', 22, 'off'),
('1516101347', 'Leni Triati', '90c4550b04e1be7f4276214991215b85', 22, 'off'),
('1516101348', 'Muhamad Zakarya Syafari', 'c7866b964d3d97a65685afd14d8bd8f7', 22, 'off'),
('1516101349', 'Muhammad Wildan Rifqi A', '8012485f8cbca92043df8574a6f48979', 22, 'off'),
('1516101350', 'Mus Mulyadi', '06df940a7d09ce4960fb95b4f58b868f', 22, 'off'),
('1516101351', 'Nira Ariana Dianalysa', 'f3ceea45ca82c6db327b6b893450bda3', 22, 'off'),
('1516101352', 'Reza Andriani', '4a6bf3842f7c7597295fdc7b2d2a0303', 22, 'off'),
('1516101353', 'Rinarti', '3c239a44808288d245c32fd620f681b5', 22, 'off'),
('1516101354', 'Ryan Aditya Pratama', '09c2c7de106d8010ac32408730fcb59b', 22, 'off'),
('1516101355', 'Salma Qatrunnada', '08833d9ef4b75b39667d14e892e4ea2b', 22, 'off'),
('1516101356', 'Sindy Apriyani', '270a2032adfec5101a57958835f0f9ee', 22, 'off'),
('1516101357', 'Siti Anisah', '3980f3948d9e0a3d9e179b322bbf400d', 22, 'off'),
('1516101358', 'Siti Wihartini', 'cf871ba9092423df72002b23051a3ebd', 22, 'off'),
('1516101359', 'Syarif Hidayat', '93db4271c6df1bf85b0845a910c3dd56', 22, 'off'),
('1516101360', 'Wiwi Arum Apriyani', '727270a9aac8c46fb8006b8f8cb36544', 22, 'off'),
('1516101361', 'Zami Maryunah Hofifah', '06e9eb23768bcf0a110e97dd207e44b4', 22, 'off'),
('1516101471', 'Tiyan Amelania', '09d01bbd56c1a7c086d6a4a83036b3ca', 22, 'off'),
('1516101474', 'Ayu Kartikasari', 'b036523da6f856661beb3f5f80c436ab', 22, 'off'),
('1415100899', 'Christiana Chandra Setiawan', '8d33d6798762609449c84f3c72cb5e80', 21, 'off'),
('1415100900', 'Dini Puspa Rini', '80db9136723763a85b1a5b3f751abbc0', 21, 'off'),
('1415100901', 'Dwi Intan Br P', '3773f6694cb6d46bca44b4e7a0f178ef', 21, 'off'),
('1415100902', 'Eli', '060523d2a5a9026816d9a2dcf2b23244', 21, 'off'),
('1415100903', 'Fajar Ricky Prayoga', '91165ed2ec936efca68d9e8e193ef15e', 21, 'off'),
('1415100904', 'Lorosi Setia Gunawan', '1ecd1e9a90a849210b398e3badc8400f', 21, 'off'),
('1415100905', 'M. Izzudin Assubkhi', '20e52cc00e8f84211c56f655bbda2761', 21, 'off'),
('1415100906', 'Mohamad Aris Sunandar', '6421acbea14d04d0c85af7ac4a44a54b', 21, 'off'),
('1415100907', 'Melitha Dwi HP', '66cc8ba246b301162b1c72e2cac453e7', 21, 'off'),
('1415100908', 'Pajri Sae Apriyani', '9fede0e78cf4f363cabb65e6501be428', 21, 'off'),
('1415100909', 'Patmawati', 'f353eef15f8d4c93be7dd3a78fa37bcb', 21, 'off'),
('1415100910', 'Ramadhanty Andan Sari', 'cf85d500d13cab3d4d12b2370419478f', 21, 'off'),
('1415100911', 'Rintaningsih', 'c76e64d5de220524f0cf9aedf353f722', 21, 'off'),
('1415100912', 'Sarah Azzahra', 'b15f18327768557506368342497cff62', 21, 'off'),
('1415100913', 'Sella Windra Pratiwi', '6236b643adcf6aa13de342ae2a11a406', 21, 'off'),
('1415100914', 'Siti Fatimah', '265b6ceaab641d9adc98ed42a3e13ef7', 21, 'off'),
('1415100915', 'Tri Resti Widyana', '11afd5c0383ce748706fdbcba79bd7e1', 21, 'off'),
('1415100916', 'Verawati', 'dc7d494ca0db4747bc57497b665a26ec', 21, 'off'),
('1415100917', 'Widianingsih', 'a1d86b655cf209c55c3f42bc41f42318', 21, 'off'),
('1415100918', 'Zafirah Ramadhany Wibowo', '70210e2d232a55575e0dd47ff62d5d51', 21, 'off'),
('1415101110', 'Gita Rafelina Putri', '10a6d3adb2245b1536e00eb0830c9848', 21, 'off'),
('1516101251', 'Shoni Izzudin', 'd30713e7085e4337dee25906eeb31659', 21, 'off'),
('1516101252', 'Tedi Saputra', 'e1f1a78478b18937bb8743a151f94474', 21, 'off'),
('1516101253', 'Trio Adijaya', '76710b51dc798522f92444bac49095ed', 21, 'off'),
('1516101254', 'Yalu Wala Yula Aley', '8c64056e4210eb4ab3ed178a9f883dc0', 21, 'off'),
('1516101255', 'Yusuf Nur Fiqih', 'd8e7d8be4d1894aa702c814d64196af7', 21, 'off'),
('1516101257', 'Agung Baskoro', '75c26c4bd576b1253694fc0aaaccd68c', 21, 'off'),
('1516101258', 'Agung Setyawan', 'eaf867e44ea4eebf5117fa6382587350', 21, 'off'),
('1516101259', 'Arif Maulana', 'eb2c8a6b012fb4b879d641f6ca5ce3e5', 21, 'off'),
('1516101260', 'Bisma Reza Tresna Pamungkas', '9724b54ad59e4651760edb39ad7820d8', 21, 'off'),
('1516101261', 'Deka Amartha', 'f774d009f6c3144eba7564c2f4ea95e2', 21, 'off'),
('1516101262', 'Dwi Andika Ardianto', '2719be7b6ed0ad59ee90ec06dc7a290d', 21, 'off'),
('1516101263', 'Elsa Triyani', 'd6894e25101333254bcdebcdbfc9844d', 21, 'off'),
('1516101265', 'Jihan Sukma Ayu', '351c1c81273020ea9de5da801a186c5d', 21, 'off'),
('1516101266', 'Khaeruman Faozi', '51b7acd278c1615f0375aa6b0415c710', 21, 'off'),
('1516101267', 'Khoerul Aenin', '1004b2cfeedfbcc05c534cc5e1be2e4c', 21, 'off'),
('1516101268', 'Leis Kiroh', 'd416453cc1edc36f285f1ceac27c2280', 21, 'off'),
('1516101269', 'M. Lindu Adji Prasetyo', '4d7628caf88c8163e4b8b92b871490ae', 21, 'off'),
('1516101270', 'M.Khaerul Fadilah', '64620404e51db9bf4809c4fb92e80500', 21, 'off'),
('1516101271', 'M.Muslim Yasvina', '2c38f81f036d855a26f61f3fc11d3ec2', 21, 'off'),
('1516101272', 'Meilina Herawati', 'a6a462a698481f708a62edb080ceb974', 21, 'off'),
('1516101273', 'Moh. Igo Saputra', '4a4f9a8d66c1ab4465bc68dd241173d6', 21, 'off'),
('1516101274', 'Novita Alya Maeda', '20310f011d14191e75a66dafa7105bf0', 21, 'off'),
('1516101275', 'Nur Aeni Liza', '953151a02dd4a620bdacc665e186c404', 21, 'off'),
('1516101276', 'Nur Heni Tri Wulansari', '23621f1494000ef4ce0ec96440ce1c8a', 21, 'off'),
('1516101277', 'Nurrohman Yuliyanto', '30052513614d701f2483d37a247dd445', 21, 'off'),
('1516101278', 'Nurul Sukmawati', 'a9fb8cc73672a574c3a312bd002e61e0', 21, 'off'),
('1516101280', 'Rendi Saputra', 'ebb4e15f54d5e3761f016dd7d1d119f8', 21, 'off'),
('1516101281', 'Reni Lestari', '72c0f603bd5931c14f4cf72ef55f0bdb', 21, 'off'),
('1516101282', 'Ria Widiyasari', 'c7d5666b9a6f41c6b6f4dafbadc6fb39', 21, 'off'),
('1516101284', 'Rodotul Janah', '259149f89049d4a8a9cd8caced8bdfaf', 21, 'off'),
('1516101285', 'Safira Nurulita', '0cd0f81efcd0ef6c53c2b3dd27b6fd07', 21, 'off'),
('1516101286', 'Sunenti', 'fda0838d16f09450b4308bfa7489499e', 21, 'off'),
('1516101287', 'Tri Etik Septiko', '5b3a871a97b6247da5f09bb7f9974bc9', 21, 'off'),
('1516101288', 'Vika Mulyana', 'b10a76a154cc59d560ec96ff833b8f4f', 21, 'off'),
('1516101289', 'Wiwi Handayani', 'ee2889fbd017aa74fba287f9bbc02dbf', 21, 'off'),
('1516101290', 'Yuli Ika Lutfiah', '6a52c5f0d8176dbd325654259c27a570', 21, 'off'),
('1516101473', 'Chairul Afrizal', 'a94df4ce2b7735a6296b7b470cf6aa61', 21, 'off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
`id_soal` int(5) NOT NULL,
  `id_ujian` int(5) NOT NULL,
  `soal` text NOT NULL,
  `pilihan_1` text NOT NULL,
  `pilihan_2` text NOT NULL,
  `pilihan_3` text NOT NULL,
  `pilihan_4` text NOT NULL,
  `pilihan_5` text NOT NULL,
  `kunci` int(2) NOT NULL,
  `urut` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_ujian`, `soal`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `pilihan_5`, `kunci`, `urut`) VALUES
(1, 1, 'Beberapa software web design yang sering dipakai antara lain', 'Microsoft Frontpage, Macromedia Fireworks, Mysql', 'Microsoft Frontpage, Macromedia Fireworks, Php', 'Macromedia Dreamweaver, Adobe ImageReady, ASP', 'Macromedia Dreamweaver, Adobe ImageReady, Corel Draw', 'Macromedia Dreamweaver, Microsoft Frontpage, Macromedia Fireworks.', 5, 0),
(2, 1, 'Fungsi dari tag HTML &lt;head&gt;&lt;/head&gt; adalah', 'Mendefinisikan judul yang hendak ditampilkan pada browser', 'Mendefinisikan bahwa teks yang berada diantara kedua tag tersebut adalah file HTML', 'Mendefinisikan head dalam sebuah file HTML.', 'Mendefinisikan teks yang hendak ditampilkan sebagai isi halaman web', 'Mendefinisikan &lt;&gt; dalam sebuah file HTML.', 3, 1),
(3, 1, 'Tag HTML yang berfungsi untuk mendefinisikan teks yang hendak ditampilkan sebagai isi halaman web adalah', '&lt;html&gt;&lt;/html&gt;', '&lt;head&gt;&lt;/head&gt;', '&lt;title&gt;&lt;/title&gt;', '&lt;body&gt;&lt;/body&gt;', '&lt;h1&gt;&lt;/h1&gt;', 4, 2),
(4, 1, 'Link ke suatu bagian di dokumen lain, misalnya : satu.html dilink ke suatu bagian di dua.html, tagnya adalah ', '&lt;a href=dua.html&gt; dua &lt;/a&gt;', 'a href= dua.html', '&lt;a href=&quot;dua.html&quot;&gt; dua &lt;/a&gt;', '&lt;href=&quot;dua.html&quot;&gt; dua &lt;/a&gt;', 'a href=&quot;dua.html&quot; dua &lt;/a&gt;', 4, 3),
(5, 1, 'HTML adalah kepanjangan dari ', 'Hyper Text Markup Language', 'Hiper Text Markup Language', 'Hipo Text MarkupLanguage', 'Hyper Text Multiple Land', 'Hipo Text Multiple Land', 1, 4),
(6, 1, 'Dibawah ini adalah bahasa untuk pemrograman web, kecuali ', 'HTML', 'XML', 'CSS', 'Javascript', 'Notepad', 5, 5),
(7, 1, 'Software untuk menulis bahasa HTML yang paling sederhana adalah', 'Ms Word', 'Ms Excel', 'Ms Powerpoint', 'Notepad', 'Ms Acces', 4, 6),
(8, 1, 'Untuk memberi warna latar belakang web diatur dengan mengubah nilai atribut ', 'Body', 'Title', 'Bgcolor', 'Fontcolor', 'Head', 3, 7),
(9, 1, 'Untuk memberi gambar pada belakang web diatur dengan mengubah nilai atribut ', 'Background', 'Body', 'Bgcolor', 'Fontcolor', 'Head', 1, 8),
(10, 1, 'Untuk mengatur paragraf pada web dapat digunakan tag ', '&lt;B&gt;', '&lt;I&gt;', '&lt;U&gt;', '&lt;P&gt;', '&lt;BR&gt;', 4, 9),
(11, 1, 'Untuk memisahkan baris pada web dapat digunakan tag ', '&lt;B&gt;', '&lt;I&gt;', '&lt;U&gt;', '&lt;P&gt;', '&lt;BR&gt;', 5, 10),
(12, 1, 'Untuk membuat garis horizontal didalam web dapat digunakan tag ', '&lt;BR&gt;', '&lt;P&gt;', '&lt;HR&gt;', '&lt;H1&gt;', '&lt;H6&gt;', 3, 11),
(13, 1, 'Untuk menformat teks dengan jenis tertentu seperti Verdana, atau Times New roman digunakan tag &lt;font&gt; dengan atribut', 'size', 'face', 'color', 'strike', 'width', 2, 12),
(14, 1, 'Manfaat atribut ALT dari tag IMG untuk ', 'Membuat sebuah definision list', 'Meloncat ke bagian (section) tertentu dalam halaman web', 'Membuat teks alternative bagi gambar yang ditampilkan', 'Membuat hyperlink ke sebuah file', 'Menentukan heading', 3, 13),
(15, 1, 'Untuk membuat order list, perintah HTML yang digunakan adalah ', '&lt;ul&gt; ............................&lt;/ul&gt;', '&lt;br&gt;............................&lt;/br&gt;', '&lt;ol&gt;............................&lt;/ol&gt;', '&lt;li&gt;.............................&lt;/li&gt;', '&lt;ls&gt;............................&lt;/ls&gt;', 3, 14),
(16, 1, 'Untuk membuat garis lurus horizontal di dalam web menggunakan tag ', '&lt;a href&gt;.......&lt;/a href&gt;', '&lt;p&gt;.......&lt;/p&gt;', '&lt;h&gt; ....... &lt;/h&gt;', '&lt;hr&gt;.......&lt;/hr&gt;', '&lt;br&gt;.......&lt;/br&gt;', 4, 15),
(17, 1, 'Untuk mengatur perataan paragraf menggunakan tag', 'align', 'right', 'bottom', 'center', 'left', 1, 16),
(18, 1, 'Untuk membuat teks tercetak miring menggunakan  tag', '&lt;i&gt;........&lt;/i&gt;', '&lt;u&gt;.......&lt;/u&gt;', '&lt;sup&gt;.......&lt;/sup&gt;', '&lt;b&gt;.......&lt;/b&gt;', '&lt;strike&gt;.......&lt;/strike&gt;', 1, 17),
(19, 1, '<p>Untuk membuat teks tercetak tebal menggunakan tag</p>\r\n<p><img src="../media/source/001.jpg" alt="001" /></p>', '<p>&lt;i&gt;........&lt;/i&gt;</p>\r\n<p><img src="../media/source/001.jpg" alt="001" /></p>', '<p>&lt;u&gt;.......&lt;/u&gt;</p>\r\n<p><img src="../media/source/001.jpg" alt="001" /></p>', '<p>&lt;sup&gt;.......&lt;/sup&gt;</p>\r\n<p><img src="../media/source/001.jpg" alt="001" /></p>', '<p>&lt;b&gt;.......&lt;/b&gt;</p>', '<p>&lt;strike&gt;.......&lt;/strike&gt;</p>', 4, 18),
(20, 1, 'Untuk membuat teks tercetak bergaris bawah menggunakan tag', '&lt;i&gt;........&lt;/i&gt;', '&lt;u&gt;.......&lt;/u&gt;', '&lt;sup&gt;.......&lt;/sup&gt;', '&lt;b&gt;.......&lt;/b&gt;', '&lt;strike&gt;.......&lt;/strike&gt;', 2, 19),
(21, 1, 'Untuk membuat teks tercoret menggunakan tag', '&lt;i&gt;........&lt;/i&gt;', '&lt;u&gt;.......&lt;/u&gt;', '&lt;sup&gt;.......&lt;/sup&gt;', '&lt;b&gt;.......&lt;/b&gt;', '&lt;strike&gt;.......&lt;/strike&gt;', 5, 20),
(22, 1, 'Untuk membuat perpangkatan menggunakan tag', '&lt;i&gt;........&lt;/i&gt;', '&lt;u&gt;.......&lt;/u&gt;', '&lt;sup&gt;.......&lt;/sup&gt;', '&lt;b&gt;.......&lt;/b&gt;', '&lt;strike&gt;.......&lt;/strike&gt;', 3, 21),
(23, 1, 'Untuk penulisan dengan menggunakan heading 5 dan perataan kanan kiri menggunakan tag', '&lt;h5 align=&quot;center&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;left&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;right&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;rigth&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;justify&quot;&gt;.......&lt;/h5&gt;', 2, 22),
(24, 1, 'Untuk penulisan dengan menggunakan heading 5 dan perataan kanan menggunakan tag', '&lt;h5 align=&quot;center&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;left&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;right&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;rigth&quot;&gt;.......&lt;/h5&gt;', '&lt;h5 align=&quot;justify&quot;&gt;.......&lt;/h5&gt;', 3, 23),
(25, 1, 'Untuk menampilkan beberapa karakter misalnya â€œ&amp;&quot; tidak dapat ditampilkan begitu saja ke dalam web. Karakter tersebut harus ditulis dalam kode tertentu agar dapat ditampilkan dengan baik dalam web. Kode untuk menampilkan Â± adalah', '&amp;AElig', '&amp;plusmn', '&amp;eacute', '&amp;aelig', '&amp;plasmn', 2, 24),
(26, 1, 'Untuk memberikan penomoran bentuk bullet menggunakan list dengan type disc, square, dan circle menggunakan tag', '&lt;DD&gt;.......&lt;/DD&gt;', '&lt;DT&gt;.......&lt;/DT&gt;', '&lt;DL&gt;.......&lt;/DL&gt;', '&lt;OL&gt;.......&lt;/OL&gt;', '&lt;UL&gt;.......&lt;/UL&gt;', 5, 25),
(27, 1, 'Untuk memberikan penomoran menggunakan list dengan type a, A, I, dan i menggunakan tag', '&lt;DD&gt;.......&lt;/DD&gt;', '&lt;DT&gt;.......&lt;/DT&gt;', '&lt;DL&gt;.......&lt;/DL&gt;', '&lt;OL&gt;.......&lt;/OL&gt;', '&lt;UL&gt;.......&lt;/UL&gt;', 4, 26),
(28, 1, 'Untuk membuat definition list yang terdiri atas dua bagian yaitu, bagian tema dan definisinya. Tag yang digunakan untuk menandai sebuah tema adalah ', '&lt;DD&gt;.......&lt;/DD&gt;', '&lt;DT&gt;.......&lt;/DT&gt;', '&lt;DL&gt;.......&lt;/DL&gt;', '&lt;OL&gt;.......&lt;/OL&gt;', '&lt;UL&gt;.......&lt;/UL&gt;', 2, 27),
(29, 1, 'Untuk membuat definition list yang terdiri atas dua bagian yaitu, bagian tema dan definisinya. Tag yang digunakan untuk menandai sebuah definisi adalah ', '&lt;DD&gt;.......&lt;/DD&gt;', '&lt;DT&gt;.......&lt;/DT&gt;', '&lt;DL&gt;.......&lt;/DL&gt;', '&lt;OL&gt;.......&lt;/OL&gt;', '&lt;UL&gt;.......&lt;/UL&gt;', 3, 28),
(30, 1, 'Atribut yang digunakan untuk menentukan posisi gambar yang akan ditampilkan pada tag &lt;img&gt; adalah', 'alt', 'src', 'width', 'height', 'align', 2, 29),
(51, 86, 'Situs/web dimana kita bisa berinteraksi dengan user disebut ', 'Statis', 'Website', 'Web browser', 'Links', 'Dinamis', 2, 0),
(52, 86, 'Ekstensi penyimpanan pada HTML adalah ', 'Nama file.doc', 'Nama file.xls', 'Nama file.htm', 'Nama file. Ppt', 'Nama file.rtf', 3, 0),
(53, 86, 'Sintak dasar HTML adalah', '&lt;body&gt;.&lt;/body&gt;', '&lt;head&gt;&lt;/head&gt;', '&lt;html&gt;&lt;html&gt;', '&lt;html&gt;&lt;/html&gt;', '&lt;bgcolor&gt;.&lt;bgcolor&gt;', 4, 0),
(54, 86, 'Bentuk 3 tag HTML adalah.', 'Element, Attribute, Value', 'Body,head, bgcolor', 'Element, body, HTML', 'HTML, title, bgcolor', 'body, bg color, title', 1, 0),
(55, 86, 'Sebuah bentuk animasi text sederhana yang dapat diciptakan oleh HTML adalah', 'Heading', 'Formulir', 'Marquee', 'Paraghraph', 'Background', 3, 0),
(56, 86, 'Format gambar/image yang dimasukkan dalam web adalah ', 'PDF ', 'PPT ', 'Doc ', 'JPEG ', 'ZIP', 4, 0),
(57, 86, 'Menu untuk menambahkan musik, gambar, animasi dan lain-lain pada halaman wordpess kita ', 'Media', 'Link', 'Pages', 'Post', 'Comment', 1, 0),
(58, 86, 'Menu untuk mengelola komentar-komentar dari pengunjung wordpress adalah ', 'Media', 'Link', 'Pages', 'Post', 'Comment', 5, 0),
(59, 86, 'Menu untuk mengkonfigurasi pengaturan-pengaturan wordpress adalah ', 'Link', 'Setting', 'Pages', 'User', 'Plugin', 2, 0),
(60, 86, 'Menu untuk menambahkan kalender, jam digital dll yang diinstall (masukan) ke dalam wordpress adalah ', 'Link', 'Setting', 'Pages', 'User', 'Plugin', 5, 0),
(61, 86, 'Server yang berfungsi sebagai localhost pada wordpress offline adalah  ', 'Xampp', 'Php', 'Notepad ++', 'Windows', 'Http', 1, 0),
(62, 86, 'Bagian xampp yang merupakan tempat meletakkan berkas-berkas yang akan dijalankan adalah ', 'Htdoc', 'phpMyAdmin', 'Control Panel', 'MySQL', 'Http', 1, 0),
(63, 86, 'Bagian xampp yang berfungsi mengelola layanan (service) xampp seperti start atau stop adalah ', 'Htdoc', 'phpMyAdmin', 'Control Panel', 'MySQL', 'Http', 3, 0),
(64, 86, 'Bagian xampp yang berfungsi mengelola database MYSQL yang ada di komputer adalah ', 'Htdoc', 'phpMyAdmin', 'Control Panel', 'MySQL', 'Http', 2, 0),
(65, 86, 'Jika kita ingin merubah tema tampilan wordpress digunakan menu ', 'Media', 'Tools', 'Appearance', 'Design', 'Plugin', 3, 0),
(66, 86, 'Pengaturan site title dan tagline halaman wordpress kita termasuk dalam pengaturan ', 'Site identity', 'Tag', 'Menus', 'Categories', 'Content', 1, 0),
(67, 86, 'Proses mengirim file atau media dari komputer lokal ke server/jaringan internet disebut ', 'Upload', 'Download', 'Select', 'Send', 'Move', 1, 0),
(68, 86, 'Jika kita mengeksekusi file .html maka file tersebut akan berjalan pada', 'Firefox', 'Notepad++', 'Ms.word', 'Windows explorer', 'Transtool', 1, 0),
(69, 86, 'Kode HTML adalah case sensitive yang artinya ', 'Berpengaruh pada besar kecilnya huruf', 'Berpengaruh pada penggunaan tanda (;)', 'Berpengaruh pada penggunaan tanda &lt;/&gt;', 'Berpengaruh pada penggunaan tanda /', 'Tidak berpengaruh pada penulisan kode', 1, 0),
(70, 86, 'Untuk mengganti paragraph digunakan tag ', '&lt;h&gt;', '&lt;p&gt;', '&lt;br&gt;', '&lt;font&gt;', '&lt;hr&gt;', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE IF NOT EXISTS `ujian` (
`id_ujian` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` int(5) NOT NULL,
  `jml_soal` int(3) NOT NULL,
  `id_user` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `judul`, `nama_mapel`, `tanggal`, `waktu`, `jml_soal`, `id_user`) VALUES
(1, 'Pemrograman Web X', 'Pemrograman Web', '2016-08-03', 120, 40, 3),
(77, 'Artikel Terbaru', 'KKM 13', '2016-07-02', 30, 20, 4),
(83, 'Struktur Organisasi', 'KKM 15', '2016-06-28', 90, 30, 4),
(84, 'Pendidikan Agama Islam', 'Pendidikan Agama Islam', '2016-06-28', 90, 50, 4),
(81, 'Bahasa Inggris Kelas XI', 'Bahasa Inggris', '2016-07-04', 120, 50, 2),
(85, 'Bahasa Indonesia Kls XI', 'Bahasa Indonesia', '2016-08-10', 90, 40, 2),
(86, 'Pemrograman Web XI', 'Pemrograman Web', '2016-08-10', 120, 50, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(5, 'Alfat Thoriqi', 'alfat', 'd2d0fad7b1462594ad7ea086e765d50e', 'operator'),
(2, 'Daffa Shidqi', 'daffa', 'a1cd64bd35bd9f2ba71f4da62d3359bc', 'guru'),
(3, 'Anisa Nabil', 'nabil', '070aa66550916626673f492bdbdb655f', 'guru'),
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
 ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
 ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
 ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
MODIFY `id_soal` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
MODIFY `id_ujian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
