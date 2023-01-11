/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.1.38-MariaDB : Database - ujianonline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ujianonline` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ujianonline`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_adm` int(5) NOT NULL AUTO_INCREMENT,
  `nama_adm` varchar(50) NOT NULL,
  `tmptlahir_adm` varchar(50) NOT NULL,
  `tgllahir_adm` varchar(20) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `jk_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adm`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id_adm`,`nama_adm`,`tmptlahir_adm`,`tgllahir_adm`,`telp_adm`,`jk_adm`,`user_adm`,`pass_adm`) values 
(1,'Administrator','Bekasi','1990-07-17','0899899989','Laki-Laki','admin','admin');

/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE `guru` (
  `id_guru` int(5) NOT NULL AUTO_INCREMENT,
  `nip` varchar(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tmptlahir` varchar(50) NOT NULL,
  `tgllahir` varchar(20) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `jk_guru` varchar(15) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) NOT NULL,
  `id_adm` int(5) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `guru` */

insert  into `guru`(`id_guru`,`nip`,`nama`,`tmptlahir`,`tgllahir`,`telp`,`jk_guru`,`password`,`keterangan`,`id_adm`) values 
(50,'67890','Sri Lestari','Mojokerto','1971-08-12','086382016488','Perempuan','67890','SMAN 1 Surabaya',1),
(46,'12345','Haryanto','Jakrta','1990-05-20','08192819189','Laki-Laki','12345','SMAN 5 Surabaya',1);

/*Table structure for table `identitas` */

DROP TABLE IF EXISTS `identitas`;

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `id_adm` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `identitas` */

insert  into `identitas`(`id`,`nama`,`alamat`,`kode`,`id_adm`) values 
(1,'Admin','Bekasi','3d3aa013608d010779b40f3512cce2a9f08d0381dbb07a53592e11ad226651c04ecf160abcf8b1dbd1895bf6eccb511e4e377799697c4bbba82c6bcbabe20119',1);

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id_kelas` int(5) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`id_kelas`,`kelas`) values 
(13,'Ruang Mawar'),
(12,'Ruang Melati');

/*Table structure for table `kelas_ujian` */

DROP TABLE IF EXISTS `kelas_ujian`;

CREATE TABLE `kelas_ujian` (
  `id_ujian` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `kelas_ujian` */

insert  into `kelas_ujian`(`id_ujian`,`id_kelas`,`aktif`) values 
(1,12,'Y'),
(3,11,'N'),
(2,11,'N'),
(4,11,'Y'),
(6,13,'N'),
(7,12,'Y');

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `id_nilai` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(20) NOT NULL,
  `id_ujian` int(5) NOT NULL,
  `acak_soal` text NOT NULL,
  `jawaban` text NOT NULL,
  `sisa_waktu` varchar(10) NOT NULL,
  `jml_benar` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `nilai` */

insert  into `nilai`(`id_nilai`,`id_siswa`,`id_ujian`,`acak_soal`,`jawaban`,`sisa_waktu`,`jml_benar`,`nilai`) values 
(3,'2',4,'5','1','89:54',1,'100'),
(4,'5',6,'6,7','3,3','59:14',1,'50'),
(5,'6',7,'8','3','29:53',1,'100'),
(6,'7',1,'1,4','4,3','89:41',0,'0'),
(7,'6',1,'4,1','2,3','89:44',1,'50');

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_adm` int(5) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

insert  into `siswa`(`id_siswa`,`nis`,`nama`,`tmpt_lahir`,`tgl_lahir`,`jk`,`password`,`id_kelas`,`id_adm`) values 
(2,'0022259775','Ajeng Zahra Firdausi','Bekasi','2000-01-05','Perempuan','0022259775',13,1),
(3,'0022215413','Aldi Nurkholik','Bekasi','2000-05-04','Laki-Laki','0022215413',13,1),
(4,'0020932651','Arief Priananda Tunggal','Bekasi','2000-04-15','Laki-Laki','0020932651',12,1),
(5,'0022215436','Ariyanto Arif Wicaksono','Semarang','2000-06-17','Laki-Laki','0022215436',12,1),
(6,'0022259754','Birul Alim','Bekasi','2000-01-25','Laki-Laki','0022259754',12,1),
(7,'0022285803','Ela Febrianti','Jakarta','2000-02-05','Perempuan','0022285803',13,1);

/*Table structure for table `soal` */

DROP TABLE IF EXISTS `soal`;

CREATE TABLE `soal` (
  `id_soal` int(5) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(5) NOT NULL,
  `soal` text NOT NULL,
  `pilihan_1` text NOT NULL,
  `pilihan_2` text NOT NULL,
  `pilihan_3` text NOT NULL,
  `pilihan_4` text NOT NULL,
  `pilihan_5` text NOT NULL,
  `kunci` int(2) NOT NULL,
  `urut` int(5) NOT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `soal` */

insert  into `soal`(`id_soal`,`id_ujian`,`soal`,`pilihan_1`,`pilihan_2`,`pilihan_3`,`pilihan_4`,`pilihan_5`,`kunci`,`urut`) values 
(1,1,'<p>Tes cuy</p>','<p>a</p>','<p>b</p>','<p>c</p>','<p>d</p>','<p>e</p>',1,0),
(2,3,'<p>sjdklsjfsk</p>','<p>a</p>','<p>b</p>','<p>c</p>','<p>d</p>','<p>e</p>',1,0),
(3,3,'<p>2</p>','<p>2</p>','<p>2</p>','<p>2</p>','<p>2</p>','<p>2</p>',2,0),
(4,1,'<p>asdkjadsk</p>','<p>llkasldk</p>','<p>lsdk</p>','<p>ldk</p>','<p>aslkd</p>','<p>asdk</p>',2,0),
(5,4,'<p>q</p>','<p>q</p>','<p>q</p>','<p>q</p>','<p>q</p>','<p>q</p>',1,0),
(6,6,'<p>Istilah-istilah di bawah ini berkenaan dengan bidang bahasa, yaitu...</p>','<p>Fonem, novel, puisi</p>','<p>Fonem, huruf, intonasi</p>','<p>Fonem, intonasi, cerpen</p>','<p>Fonem, huruf, puisi</p>','<p>Fonem, intonasi, puisi</p>',2,0),
(7,6,'<p>Di bawah ini yang merupakan struktur teks prosedur adalah...</p>','<p>Identifikasi fenomena, proses kejadian, ulasan.</p>','<p>Latar belakang, kronologis, mengomentari konsekwensi.</p>','<p>Tujuan, langkah-langkah (petunjuk), penegasan ulang (penutup).</p>','<p>Identifikasi fenomena, tujuan, ulasan.</p>','<p>Tujuan, kronologis, konsekwensi.</p>',3,0),
(8,7,'<p>love u</p>','<p>ga</p>','<p>apa seh?</p>','<p>lope u too</p>','<p>yee</p>','<p>ok</p>',3,0);

/*Table structure for table `ujian` */

DROP TABLE IF EXISTS `ujian`;

CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` int(5) NOT NULL,
  `jml_soal` int(3) NOT NULL,
  `id_guru` int(5) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ujian` */

insert  into `ujian`(`id_ujian`,`nama_mapel`,`tanggal`,`waktu`,`jml_soal`,`id_guru`) values 
(1,'Teknologi Layanan Jaringan','2022-08-05',90,10,46),
(6,'Bahasa Indonesia','2022-07-28',60,10,50),
(7,'Ilmu Pengetahuan Alam','2022-08-01',30,10,50);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
