/*
Navicat MariaDB Data Transfer

Source Server         : Maria Lokal
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : db_akuntansi

Target Server Type    : MariaDB
Target Server Version : 50536
File Encoding         : 65001

Date: 2014-04-17 07:27:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_det_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_det_role`;
CREATE TABLE `tbl_det_role` (
  `id` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL COMMENT 'nama menu yg akan tampil pada aplikasi pilihan tambah menu',
  `nama_menu` varchar(255) DEFAULT NULL COMMENT 'nama constructor drop down menu',
  `nama_class` varchar(255) DEFAULT NULL COMMENT 'nama constructor menu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `id_role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
