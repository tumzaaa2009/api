-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.37 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for LessionApi
CREATE DATABASE IF NOT EXISTS `LessionApi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `LessionApi`;

-- Dumping structure for table LessionApi.ApiTable
CREATE TABLE IF NOT EXISTS `ApiTable` (
  `idNo` int(11) NOT NULL DEFAULT '0',
  `kpi_year` int(11) NOT NULL DEFAULT '0',
  `kpi_level` varchar(50) NOT NULL DEFAULT '',
  `kpi_no` varchar(50) DEFAULT NULL,
  `kpi_order` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `kpi_unit` varchar(255) DEFAULT NULL,
  `goal` double DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `q1_goal` double DEFAULT NULL,
  `q2_goal` double DEFAULT NULL,
  `q3_goal` double DEFAULT NULL,
  `q4_goal` double DEFAULT NULL,
  `result` double DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNo`,`kpi_year`,`kpi_level`),
  KEY `idNo` (`idNo`),
  KEY `kpi_year` (`kpi_year`),
  KEY `kpi_level` (`kpi_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table LessionApi.ApiTable: ~123 rows (approximately)
DELETE FROM `ApiTable`;
/*!40000 ALTER TABLE `ApiTable` DISABLE KEYS */;
INSERT INTO `ApiTable` (`idNo`, `kpi_year`, `kpi_level`, `kpi_no`, `kpi_order`, `title`, `kpi_unit`, `goal`, `operator`, `q1_goal`, `q2_goal`, `q3_goal`, `q4_goal`, `result`, `parent_id`) VALUES
	(1384, 2563, 'ประเทศ', '002', 0, 'ร้อยละของเด็กอายุ 0-5 ปี ทั้งหมดตามช่วงอายุที่กำหนดมีพัฒนาการสมวัย', 'ร้อยละ', 85, '>=', 85, 85, 85, 85, 86.98, 0),
	(1390, 2563, 'ประเทศ', '003', 0, 'ร้อยละของเด็กอายุ 0-5 ปี สูงดีสมส่วน และส่วนสูงเฉลี่ยที่อายุ 5 ปี', 'ร้อยละ', 60, '>=', 57, 58, 59, 60, 61.77, 0),
	(1391, 2563, 'ประเทศ', '005', 0, 'ร้อยละของเด็กอายุ 6-14 ปี สูงดีสมส่วน ', 'ร้อยละ', 66, '>=', 0, 66, 0, 66, 64.28, 0),
	(1392, 2563, 'ประเทศ', '007', 0, 'ร้อยละของผู้สูงอายุที่มีภาวะพึ่งพิงได้รับการดูแลตาม care plan', 'ร้อยละ', 80, '>=', 70, 70, 75, 80, 89.54, 0),
	(1393, 2563, 'จังหวัด', '011', 0, 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ', 'ร้อยละ', 70, '>=', 70, 70, 70, 70, 98.35, 0),
	(1395, 2563, 'ประเทศ', '013', 0, 'ร้อยละการตรวจติดตามกลุ่มสงสัยป่วยโรคเบาหวาน และ/หรือความดันโลหิตสูง ', 'ร้อยละ', 0, '<=', 0, 0, 0, 0, 0, 0),
	(1396, 2563, 'ประเทศ', '013.1', 0, 'ร้อยละการตรวจติดตามกลุ่มสงสัยป่วยโรคเบาหวาน', 'ร้อยละ', 30, '>=', 0, 0, 0, 30, 61.14, 1395),
	(1397, 2563, 'ประเทศ', '013.2', 0, 'ร้อยละการตรวจติดตามกลุ่มสงสัยป่วยโรคความดันโลหิตสูง', 'ร้อยละ', 52, '>=', 0, 0, 0, 52, 80.57, 1395),
	(1400, 2563, 'ประเทศ', '031', 0, 'ร้อยละของผู้ป่วยนอกทั้งหมดที่ได้รับบริการ ตรวจ วินิจฉัย รักษาโรค และฟื้นฟูสภาพด้วยศาสตร์การแพทย์แผนไทยและการแพทย์ทางเลือก', 'ร้อยละ', 19.5, '>=', 19.5, 19.5, 19.5, 19.5, 22.21, 0),
	(1403, 2563, 'ประเทศ', '036', 0, 'อัตราตายของผู้ป่วยโรคกล้ามเนื้อหัวใจตายเฉียบพลันชนิด STEMI และการให้การรักษาตามมาตรฐานเวลาที่กำหนด ', 'ร้อยละ', 50, '>=', 50, 50, 50, 50, 0, 0),
	(1404, 2563, 'ประเทศ', '038', 0, 'ร้อยละของผู้ป่วย CKD ที่มีอัตราการลดลงของ eGFR<5 ml/min/1.73m2/yr', 'ร้อยละ', 66, '>=', 0, 0, 0, 66, 65.51, 0),
	(1405, 2563, 'ประเทศ', '043', 0, 'ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1406, 2563, 'ประเทศ', '043.1', 0, 'ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', 'ร้อยละ', 75, '>=', 0, 60, 0, 75, 83.21, 1405),
	(1407, 2563, 'ประเทศ', '043.2', 0, 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index < 15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', 'ร้อยละ', 60, '>=', 0, 50, 0, 60, 0, 1405),
	(1410, 2563, 'ประเทศ', '004', 0, 'เด็กไทยมีระดับสติปัญญาเฉลี่ยไม่ต่ำกว่า 100', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1411, 2563, 'ประเทศ', '004.1', 0, 'ร้อยละของเด็กปฐมวัยที่ได้รับการคัดกรองแล้วพบว่ามีพัฒนาการล่าช้าได้รับการกระตุ้นพัฒนาการด้วยเครื่องมือมาตรฐาน', 'ร้อยละ', 65, '>=', 0, 45, 0, 65, 61.96, 1410),
	(1413, 2563, 'ประเทศ', '006', 0, 'อัตราการคลอดมีชีพในหญิงอายุ 15-19 ปี', 'อัตราต่อพันประชากร', 34, '<=', 34, 34, 34, 34, 28.34, 0),
	(1414, 2563, 'ประเทศ', '017', 0, 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 0, 0),
	(1420, 2563, 'ประเทศ', '018', 0, 'ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1421, 2563, 'ประเทศ', '018.1', 0, 'ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital ระดับพื้นฐานขึ้นไป', 'ร้อยละ', 100, '>=', 100, 100, 100, 100, 100, 1420),
	(1422, 2563, 'ประเทศ', '018.2', 0, 'ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital ระดับดีขึ้นไป', 'ร้อยละ', 100, '>=', 98, 100, 100, 100, 99.79, 1420),
	(1423, 2563, 'ประเทศ', '018.3', 0, 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', 'ร้อยละ', 75, '>=', 75, 75, 75, 75, 85.28, 1420),
	(1424, 2563, 'ประเทศ', '018.4', 0, 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', 'ร้อยละ', 1, '>=', 1, 1, 1, 1, 40.4, 1420),
	(1425, 2563, 'ประเทศ', '020', 0, 'ร้อยละของหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิที่เปิดดำเนินการในพื้นที่ ', 'ร้อยละ', 25, '>=', 0, 25, 0, 25, 28.54, 0),
	(1427, 2563, 'ประเทศ', '024', 0, 'ร้อยละอัตราตายของผู้ป่วยโรคหลอดเลือดสมอง และระยะเวลาที่ได้รับการรักษาที่เหมาะสม ', 'ร้อยละ', 0, '=', 0, 0, 0, 0, 0, 0),
	(1428, 2563, 'ประเทศ', '024.1', 0, 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมอง (Stroke :I60-I69)', 'ร้อยละ', 7, '<=', 7, 7, 7, 7, 7.95, 1427),
	(1429, 2563, 'ประเทศ', '024.2', 0, 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมองแตก (Hemorrhagic Stroke: I60-I62)', 'ร้อยละ', 25, '<=', 25, 25, 25, 25, 25.48, 1427),
	(1430, 2563, 'ประเทศ', '024.3', 0, 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตัน (Ischemic Stroke: I63)', 'ร้อยละ', 5, '<=', 5, 5, 5, 5, 3.82, 1427),
	(1431, 2563, 'ประเทศ', '024.4', 0, 'ร้อยละผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำภายใน 60 นาที (door to needle time)', 'ร้อยละ', 60, '>=', 60, 60, 60, 60, 0, 1427),
	(1432, 2563, 'ประเทศ', '024.5', 0, 'ร้อยละผู้ป่วยโรคหลอดเลือดสมอง (I60-I69) ที่มีอาการไม่เกิน 72 ชั่วโมงได้รับการรักษาใน Stroke Unit ', 'ร้อยละ', 50, '>=', 50, 50, 50, 50, 0, 1427),
	(1434, 2563, 'ประเทศ', '025', 0, 'อัตราสำเร็จของการรักษาวัณโรคปอดรายใหม่', 'ร้อยละ', 85, '>=', 0, 0, 0, 85, 85.39, 0),
	(1435, 2563, 'ประเทศ', '026', 0, 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1436, 2563, 'ประเทศ', '026.1', 0, 'RDU ขั้นที่ 2', 'ร้อยละ', 50, '>=', 44, 46, 48, 50, 54.19, 1435),
	(1437, 2563, 'ประเทศ', '026.2', 0, 'RDU ขั้นที่ 3', 'ร้อยละ', 20, '>=', 15, 15, 20, 20, 49.16, 1435),
	(1438, 2563, 'ประเทศ', '027', 0, 'ร้อยละของโรงพยาบาลมีระบบจัดการการดื้อยาต้านจุลชีพอย่างบูรณาการ (AMR)', 'ร้อยละ', 20, '>=', 20, 20, 20, 20, 0, 0),
	(1439, 2563, 'ประเทศ', '029', 0, 'อัตราตายทารกแรกเกิด', 'อัตราต่อพันประชากร', 3.7, '<', 0, 0, 0, 3.7, 4.2, 0),
	(1444, 2563, 'ประเทศ', '032', 0, 'ร้อยละของผู้ป่วยโรคซึมเศร้าเข้าถึงบริการสุขภาพจิต', 'ร้อยละ', 68, '>=', 0, 68, 0, 68, 79.45, 0),
	(1445, 2563, 'ประเทศ', '033', 0, 'อัตราการฆ่าตัวตายสำเร็จ', 'อัตราต่อแสนประชากร', 6.3, '<=', 0, 0, 0, 6.3, 0, 0),
	(1446, 2563, 'ประเทศ', '033.1', 0, 'อัตราการฆ่าตัวตายสำเร็จ', 'อัตราต่อแสนประชากร', 6.3, '<=', 0, 6.3, 0, 6.3, 6.59, 1445),
	(1447, 2563, 'ประเทศ', '033.2', 0, 'ร้อยละของผู้พยายามฆ่าตัวตายไม่กลับมาทําร้ายตัวเองซ้ำในระยะเวลา 1 ปี', 'ร้อยละ', 85, '>=', 0, 85, 0, 85, 97.26, 1445),
	(1448, 2563, 'ประเทศ', '034', 0, 'อัตราตายผู้ป่วยติดเชื้อในกระแสเลือดแบบรุนแรงชนิด community-acquired', 'ร้อยละ', 28, '<', 28, 28, 28, 28, 31.59, 0),
	(1450, 2563, 'ประเทศ', '037', 0, 'ร้อยละผู้ป่วยมะเร็ง 5 อันดับแรกได้รับการรักษาภายในระยะเวลาที่กำหนด', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1451, 2563, 'ประเทศ', '037.1', 0, 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', 'ร้อยละ', 70, '>=', 0, 70, 0, 70, 68.25, 1450),
	(1452, 2563, 'ประเทศ', '037.2', 0, 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา  6 สัปดาห์', 'ร้อยละ', 70, '>=', 0, 70, 0, 70, 71.51, 1450),
	(1453, 2563, 'ประเทศ', '037.3', 0, 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', 'ร้อยละ', 60, '>=', 0, 60, 0, 60, 54.9, 1450),
	(1454, 2563, 'ประเทศ', '039', 0, 'ร้อยละผู้ป่วยตาบอดจากต้อกระจก (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', 'ร้อยละ', 85, '>=', 0, 85, 0, 85, 83.34, 0),
	(1455, 2563, 'ประเทศ', '040', 0, 'อัตราส่วนของจำนวนผู้ยินยอมบริจาคอวัยวะจากผู้ป่วยสมองตาย ต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล (โรงพยาบาล A, S)', 'ร้อยละ', 0.9, '>=', 0, 0.5, 0, 0.9, 0.16, 0),
	(1456, 2563, 'ประเทศ', '041', 0, 'ร้อยละของผู้ป่วยยาเสพติดเข้ารับการบำบัดรักษา และ ติดตามดูแลอย่างต่อเนื่อง 1 ปี (Retention Rate)', 'ร้อยละ', 45, '>=', 0, 45, 0, 45, 41.16, 0),
	(1458, 2563, 'ประเทศ', '044', 0, 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', 'ร้อยละ', 60, '>=', 0, 20, 0, 60, 92.26, 0),
	(1459, 2563, 'ประเทศ', '047', 0, 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', 'ร้อยละ', 26, '>=', 26, 26, 26, 26, 25.86, 0),
	(1460, 2563, 'ประเทศ', '019', 0, 'ร้อยละของจังหวัดมีระบบจัดการปัจจัยเสี่ยงด้านสิ่งแวดล้อมที่ส่งผลกระทบต่อสุขภาพ', 'ร้อยละ', 80, '>=', 60, 60, 60, 80, 92.11, 0),
	(1461, 2563, 'ประเทศ', '053', 0, 'ร้อยละของเขตสุขภาพที่มีการบริหารจัดการกำลังคนที่มีประสิทธิภาพ', 'ร้อยละ', 4, '<', 0, 6, 0, 4, 5.22, 0),
	(1462, 2563, 'ประเทศ', '058', 0, 'จำนวนองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน ', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1463, 2563, 'ประเทศ', '054', 0, 'ร้อยละของหน่วยงานในสังกัดสำนักงานปลัดกระทรวงสาธารณสุขผ่านเกณฑ์ การประเมิน ITA', 'ร้อยละ', 90, '>=', 5, 80, 85, 90, 94.38, 0),
	(1464, 2563, 'ประเทศ', '055', 0, 'ร้อยละความสำเร็จของส่วนราชการในสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด ', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1465, 2563, 'ประเทศ', '055.1', 0, 'ร้อยละความสำเร็จของส่วนราชการในสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด (กองในสังกัดสำนักงานปลัดกระทรวงสาธารณสุข ส่วนกลาง)', 'ร้อยละ', 90, '>=', 90, 90, 90, 90, 100, 1464),
	(1466, 2563, 'ประเทศ', '055.2', 0, 'ร้อยละความสำเร็จของส่วนราชการในสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด (สำนักงานสาธารณสุขจังหวัด)', 'ร้อยละ', 90, '>=', 90, 90, 90, 90, 100, 1464),
	(1467, 2563, 'ประเทศ', '055.3', 0, 'ร้อยละความสำเร็จของส่วนราชการในสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด (ระดับอำเภอ)', 'ร้อยละ', 90, '>=', 90, 90, 90, 90, 98.86, 1464),
	(1468, 2563, 'ประเทศ', '056', 0, 'ร้อยละของโรงพยาบาลสังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1469, 2563, 'ประเทศ', '056.1', 0, 'ร้อยละจำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปในสังกัดสำนักงานปลัดกระทรวงสาธารณสุข มีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ร้อยละ', 98, '>=', 95, 96, 97, 98, 100, 1468),
	(1470, 2563, 'ประเทศ', '056.2', 0, 'ร้อยละของโรงพยาบาลสังกัดกรมการแพทย์ กรมควบคุมโรค และ กรมสุขภาพจิตมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ร้อยละ', 98, '>=', 95, 96, 97, 98, 97.96, 1468),
	(1471, 2563, 'ประเทศ', '057', 0, 'ร้อยละของ รพ.สต. ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต.ติดดาว', 'ร้อยละ', 75, '>=', 0, 75, 0, 75, 70.1, 0),
	(1472, 2563, 'ประเทศ', '059', 0, 'ร้อยละของจังหวัดที่ผ่านเกณฑ์คุณภาพข้อมูล', 'ร้อยละ', 80, '>=', 60, 70, 75, 80, 0, 0),
	(1473, 2563, 'ประเทศ', '060', 0, 'ร้อยละของหน่วยบริการที่เป็น Smart Hospital ', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1474, 2563, 'ประเทศ', '060.1', 0, 'ร้อยละของหน่วยบริการที่เป็น Smart Hospital  (รพ. ระดับ A, S, M1, M2)', 'จำนวน', 80, '>=', 20, 20, 50, 80, 63.98, 1473),
	(1475, 2563, 'ประเทศ', '060.2', 0, 'ร้อยละของหน่วยบริการที่เป็น Smart Hospital (รพ. ระดับ F1, F2, F3 )', 'ร้อยละ', 50, '>=', 10, 10, 30, 50, 46.08, 1473),
	(1476, 2563, 'ประเทศ', '060.3', 0, 'ร้อยละของหน่วยบริการที่เป็น Smart Hospital (รพ. นอกสังกัดสำนักงานปลัดกระทรวงสาธารณสุข)', 'ร้อยละ', 80, '>=', 20, 20, 50, 80, 84.62, 1473),
	(1478, 2563, 'ประเทศ', '062', 0, 'ความแตกต่างอัตราการใช้สิทธิ(compliance rate) เมื่อไปใช้บริการผู้ป่วยใน (IP) ของผู้มีสิทธิใน 3 ระบบ', 'ร้อยละ', 1.5, '<=', 0, 0, 0, 1.5, 0, 0),
	(1480, 2563, 'ประเทศ', '064', 0, 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน', 'ร้อยละ', 0, '<=', 0, 0, 0, 0, 0, 0),
	(1481, 2563, 'ประเทศ', '065', 0, 'จำนวนนวัตกรรมและเทคโนโลยีสุขภาพที่คิดค้นใหม่หรือที่พัฒนาต่อยอด', 'จำนวน', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1482, 2563, 'ประเทศ', '067', 0, 'ร้อยละของกฎหมายที่ควรปรับปรุงได้รับการแก้ไขและมีการบังคับใช้', 'ร้อยละ', 0, '>=', 0, 0, 0, 0, 0, 0),
	(1483, 2563, 'ประเทศ', '067.1', 0, 'กฎหมายที่ได้รับการปรับปรุงและพัฒนา', 'จำนวน', 5, '>=', 0, 0, 0, 5, 6, 1482),
	(1485, 2563, 'ประเทศ', '067.2', 0, 'ระดับความสำเร็จของการบังคับใช้กฎหมายครบองค์ประกอบที่กำหนดของสำนักงานสาธารณสุขจังหวัดทั่วประเทศ', 'ร้อยละ', 80, '>=', 0, 80, 0, 80, 92.11, 1482),
	(1487, 2563, 'ประเทศ', '028', 0, 'ร้อยละการส่งต่อผู้ป่วยนอกเขตสุขภาพลดลง', 'ร้อยละ', 10, '>=', 0, 0, 0, 10, 3.49, 0),
	(1488, 2563, 'ประเทศ', '030', 0, 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่าง ๆ ด้วย Opioid ในผู้ป่วยประคับประคองระยะท้ายอย่างมีคุณภาพ', 'ร้อยละ', 40, '>=', 0, 0, 0, 40, 35.77, 0),
	(1489, 2563, 'ประเทศ', '035', 0, 'ร้อยละของโรงพยาบาลที่มีทีม Refracture Prevention ในโรงพยาบาล ตั้งแต่ระดับM1 ขึ้นไป ที่มีแพทย์ออร์โธปิดิกส์เพิ่มขึ้น ให้ได้อย่างน้อย  1 ทีมต่อ 1 เขตสุขภาพ', 'ร้อยละ', 20, '>=', 20, 20, 20, 20, 0, 0),
	(1491, 2563, 'ประเทศ', '052', 0, 'ระดับความสำเร็จของเขตสุขภาพที่มีการบริหารจัดการระบบการผลิตและพัฒนากำลังคนได้ตามเกณฑ์', 'จำนวน', 1, '>=', 0, 1, 0, 1, 13, 0),
	(1492, 2563, 'ประเทศ', '008', 0, 'ร้อยละของประชากรสูงอายุที่มีพฤติกรรมสุขภาพที่พึงประสงค์', 'ร้อยละ', 60, '>=', 60, 60, 60, 60, 49.64, 0),
	(1493, 2563, 'ประเทศ', '009', 0, 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 93.07, 0),
	(1494, 2563, 'ประเทศ', '010', 0, 'จำนวนครอบครัวไทยมีความรอบรู้สุขภาพเรื่องกิจกรรมทางกาย', 'จำนวน', 1000000, '>=', 400000, 600000, 800000, 1000000, 1315735, 0),
	(1495, 2563, 'ประเทศ', '012', 0, 'ระดับความสำเร็จในการจัดการภาวะฉุกเฉินทางสาธารณสุขของหน่วยงานระดับจังหวัด', 'ร้อยละ', 50, '>=', 50, 50, 50, 50, 91.43, 0),
	(1496, 2563, 'ประเทศ', '014', 0, 'ร้อยละของจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูงร่วมกับหน่วยงานที่เกี่ยวข้องในระดับส่วนกลาง และภูมิภาค อย่างน้อยจังหวัดละ 1 เรื่อง', 'ร้อยละ', 100, '>=', 100, 100, 100, 100, 83.33, 0),
	(1497, 2563, 'ประเทศ', '015', 0, 'ร้อยละของจังหวัดมีระบบรับแจ้งข่าว การใช้/ป่วยจากการสัมผัส สารเคมีทางการเกษตร 3 ชนิด (พาราควอต คลอร์ไพริฟอส ไกลโฟเสต) โดยประชาชน/อสม. ผ่าน Mobile Application สู่หน่วยบริการ (คลินิกสารเคมีเกษตร/คลินิกโรคจากการทำงาน) ', 'ร้อยละ', 100, '>=', 0, 100, 0, 100, 100, 0),
	(1498, 2563, 'ประเทศ', '016', 0, 'ร้อยละของจังหวัดมีการจัดทำฐานข้อมูลอาชีวอนามัยและสิ่งแวดล้อม (Occupational and Environmental Health Profile : OEHP) ด้านเกษตรกรรม และมีการรายงานการเจ็บป่วยหรือเสียชีวิตจากสารเคมีทางการเกษตร (รหัสโรค T60)', 'ร้อยละ', 100, '>=', 100, 100, 100, 100, 100, 0),
	(1499, 2563, 'ประเทศ', '017.1', 0, 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด (ผักและผลไม้สด)', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 85.9, 1414),
	(1500, 2563, 'ประเทศ', '017.2', 0, 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด (ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมายที่พบสารที่มีฤทธิ์ในการลดน้ำหนักหรือเสริมสร้างสมรรถภาพทางเพศ)', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 84.46, 1414),
	(1501, 2563, 'ประเทศ', '017.3', 0, 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด (เครื่องสำอางกลุ่มเสี่ยง)', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 96.04, 1414),
	(1502, 2563, 'ประเทศ', '017.4', 0, 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด (ผลิตภัณฑ์สมุนไพรกลุ่มเสี่ยง)', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 92.47, 1414),
	(1503, 2563, 'ประเทศ', '021', 0, 'ร้อยละของประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. มีแพทย์เวชศาสตร์ครอบครัวหรือแพทย์ที่ผ่านการอบรมและคณะผู้ให้บริการสุขภาพปฐมภูมิดูแลด้วยหลักเวชศาสตร์ครอบครัว ', 'ร้อยละ', 40, '>=', 0, 20, 0, 40, 30.5, 0),
	(1504, 2563, 'ประเทศ', '022', 0, 'ร้อยละของผู้ป่วยกลุ่มเป้าหมายที่ได้รับการดูแลจาก อสม. หมอประจำบ้าน มีคุณภาพชีวิตที่ดี ', 'ร้อยละ', 0, '=', 0, 0, 0, 0, 0, 0),
	(1505, 2563, 'ประเทศ', '022.1', 0, 'ร้อยละ อสม. กลุ่มเป้าหมายมีศักยภาพเป็น อสม. หมอประจำบ้าน', 'ร้อยละ', 70, '>=', 0, 0, 70, 70, 98.61, 1504),
	(1506, 2563, 'ประเทศ', '022.2', 0, 'ร้อยละของผู้ป่วยกลุ่มเป้าหมายที่ได้รับการดูแลจาก อสม. หมอประจำบ้าน มีคุณภาพชีวิตที่ดี', 'ร้อยละ', 70, '>=', 0, 0, 70, 70, 92.39, 1504),
	(1507, 2563, 'ประเทศ', '023', 0, 'จำนวน อสม. ที่ได้รับการพัฒนาศักยภาพเป็น อสม. หมอประจำบ้าน', 'จำนวน', 80000, '>=', 10000, 10000, 80000, 80000, 84712, 0),
	(1509, 2563, 'ประเทศ', '027.1', 0, 'โรงพยาบาลที่มีการจัดการ AMR ระดับ intermediate', 'ร้อยละ', 95, '>=', 0, 68, 0, 95, 96.69, 1438),
	(1510, 2563, 'ประเทศ', '027.2', 0, 'อัตราการติดเชื้อดื้อยาในกระแสเลือด', 'ร้อยละ', 0, '<=', 0, 0, 0, 0, 0.14, 1438),
	(1511, 2563, 'ประเทศ', '035.1', 0, 'ร้อยละของโรงพยาบาลที่มีทีม Refracture Prevention ในโรงพยาบาล ตั้งแต่ระดับM1 ขึ้นไป ที่มีแพทย์ออร์โธปิดิกส์เพิ่มขึ้น ให้ได้อย่างน้อย  1 ทีมต่อ 1 เขตสุขภาพ', 'ร้อยละ', 5.83, '>=', 1.45, 2.91, 4.37, 5.83, 84.3, 1489),
	(1512, 2563, 'ประเทศ', '035.2', 0, 'การผ่าตัดภายใน 72 ชั่วโมง (Early surgery)', 'ร้อยละ', 30, '>=', 30, 30, 30, 30, 0, 1489),
	(1513, 2563, 'ประเทศ', '035.3', 0, 'Rate Refracture', 'ร้อยละ', 25, '<=', 0, 25, 0, 25, 0, 1489),
	(1514, 2563, 'ประเทศ', '036.1', 0, 'อัตราตายของผู้ป่วยโรคกล้ามเนื้อหัวใจตายเฉียบพลันชนิด STEMI', 'ร้อยละ', 9, '<=', 9, 9, 9, 9, 7.35, 1403),
	(1515, 2563, 'ประเทศ', '036.2', 0, 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', 'ร้อยละ', 50, '>=', 50, 50, 50, 50, 49.22, 1403),
	(1516, 2563, 'ประเทศ', '042', 0, 'ร้อยละของผู้ป่วยยาเสพติดกลุ่มเสี่ยงก่อความรุนแรงได้รับการประเมิน บำบัดรักษาและติดตามดูแลช่วยเหลือตามระดับความรุนแรง อย่างต่อเนื่อง', 'ร้อยละ', 55, '>=', 0, 55, 0, 55, 58.9, 0),
	(1517, 2563, 'ประเทศ', '045', 0, 'จำนวนคลินิกการให้บริการกัญชาทางการแพทย์นำร่องอย่างน้อย เขตสุขภาพละ 1 แห่ง', 'จำนวน', 1, '>=', 1, 1, 1, 1, 311, 0),
	(1518, 2563, 'ประเทศ', '046', 0, 'อัตราการเสียชีวิตของผู้ป่วยวิกฤตฉุกเฉิน (triage level 1) ภายใน 24 ชั่วโมง ในโรงพยาบาลระดับ A, S, M1 (ทั้งที่ ER และ Admit) น้อยกว่าร้อยละ 12 (Trauma<12%, Non-trauma<12%)', 'ร้อยละ', 0, '=', 0, 0, 0, 0, 0, 0),
	(1519, 2563, 'ประเทศ', '046.1', 0, 'อัตราการเสียชีวิตของผู้ป่วยวิกฤตฉุกเฉิน (triage level 1) ภายใน 24 ชั่วโมง ในโรงพยาบาลระดับ A, S, M1 (ทั้งที่ ER และ Admit)', 'ร้อยละ', 12, '<', 12, 12, 12, 12, 11.22, 1518),
	(1520, 2563, 'ประเทศ', '046.2', 0, 'อัตราของผู้ป่วย trauma triage level 1 และมีข้อบ่งชี้ในการผ่าตัด  ในโรงพยาบาลระดับ A, S, M1 สามารถเข้าห้องผ่าตัดได้ภายใน 60 นาที', 'ร้อยละ', 80, '>=', 80, 80, 80, 80, 67.89, 1518),
	(1521, 2563, 'ประเทศ', '046.3', 0, 'อัตราของผู้ป่วย triage level 1, 2 อยู่ในห้องฉุกเฉิน <2 ชม. ในโรงพยาบาลระดับ A, S, M1', 'ร้อยละ', 60, '>=', 0, 60, 0, 60, 0, 1518),
	(1522, 2563, 'ประเทศ', '046.4', 0, 'อัตราตายผู้ป่วยบาดเจ็บรุนแรงต่อสมอง (mortality rate of severe traumatic brain injury) (GCS ≤ 8) ในโรงพยาบาลระดับ A, S, M1', 'ร้อยละ', 45, '<', 0, 45, 0, 45, 0, 1518),
	(1523, 2563, 'ประเทศ', '046.5', 0, 'อัตราของ TEA unit ในโรงพยาบาลระดับ A, S, M1 ที่ผ่านเกณฑ์ประเมินคุณภาพ (ไม่ต่ำกว่า 20 คะแนน) ', 'ร้อยละ', 80, '>=', 0, 80, 0, 80, 0, 1518),
	(1524, 2563, 'ประเทศ', '046.6', 0, 'อัตราของโรงพยาบาลระดับ F2 ขึ้นไปที่ผ่านเกณฑ์ประเมิน ECS คุณภาพ (ไม่ต่ำกว่าร้อยละ 50)', 'ร้อยละ', 80, '>=', 0, 80, 0, 80, 0, 1518),
	(1525, 2563, 'ประเทศ', '048', 0, 'ร้อยละของโรงพยาบาลศูนย์ผ่านเกณฑ์ ER คุณภาพ', 'ร้อยละ', 80, '>=', 0, 80, 0, 80, 100, 0),
	(1526, 2563, 'ประเทศ', '049', 0, 'จำนวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ลดลง', 'ร้อยละ', 5, '>=', 3, 3, 4, 5, 20.87, 0),
	(1527, 2563, 'ประเทศ', '050', 0, 'ร้อยละของจังหวัดเป้าหมายที่มีหน่วยบริการตั้งอยู่ในพื้นที่เกาะมีการจัดระบบบริการสุขภาพสำหรับการท่องเที่ยวทางทะเลที่มีประสิทธิภาพ', 'ร้อยละ', 100, '>=', 100, 100, 100, 100, 100, 0),
	(1528, 2563, 'ประเทศ', '051', 0, 'ร้อยละที่เพิ่มขึ้นของรายได้จากการท่องเที่ยวเชิงสุขภาพ ความงามและแพทย์แผนไทย ', 'ร้อยละ', 5, '>=', 5, 5, 5, 5, -99.64, 0),
	(1529, 2563, 'ประเทศ', '056.3', 0, 'ร้ออยละของโรงพยาบาลชุมชนในสังกัดสำนักงานปลัดกระทรวงสาธารณสุข มีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ร้อยละ', 80, '>=', 77, 78, 79, 80, 92.33, 1468),
	(1530, 2563, 'ประเทศ', '058.1', 0, 'จำนวนองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน (กรม/สป.ส่วนกลาง)', 'ร้อยละ', 10, '>=', 0, 0, 0, 10, 77.78, 1462),
	(1531, 2563, 'ประเทศ', '058.2', 0, 'จำนวนองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน (รพศ./รพท./สสจ)', 'จำนวน', 1, '>=', 0, 0, 0, 1, 68, 1462),
	(1532, 2563, 'ประเทศ', '058.3', 0, 'จำนวนองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน  (รพช./สสอ.)', 'ร้อยละ', 10, '>=', 0, 0, 0, 10, 39.47, 1462),
	(1533, 2563, 'ประเทศ', '061', 0, 'จำนวนโรงพยาบาลที่มีบริการรับยาที่ร้านยา ', 'จำนวน', 50, '>=', 20, 30, 40, 50, 126, 0),
	(1534, 2563, 'ประเทศ', '064.1', 0, 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤตทางการเงิน (ระดับ 7)', 'ร้อยละ', 4, '<=', 4, 4, 4, 4, 0.33, 1480),
	(1535, 2563, 'ประเทศ', '064.2', 0, 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤตทางการเงิน (ระดับ 6)', 'ร้อยละ', 8, '<=', 8, 8, 8, 8, 2.23, 1480),
	(1536, 2563, 'ประเทศ', '065.1', 0, 'จำนวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่ หรือที่พัฒนาต่อยอดที่เพิ่มขึ้นจากฐานข้อมูลนวัตกรรมกรมวิทยาศาสตร์การแพทย์ ของปีที่ผ่านมา', 'จำนวน', 8, '>=', 0, 0, 0, 8, 13, 1481),
	(1537, 2563, 'ประเทศ', '065.2', 0, 'จำนวนนวัตกรรมหรือเทคโนโลยีสุขภาพที่คิดค้นใหม่หรือที่พัฒนาต่อยอด ในปีงบประมาณ 2563 มีการใช้ประโยชน์ทางการแพทย์ หรือการคุ้มครองผู้บริโภค หรือเชิงพาณิชย์', 'จำนวน', 4, '>=', 0, 0, 0, 4, 13, 1481),
	(1538, 2563, 'ประเทศ', '066', 0, 'ร้อยละของเขตสุขภาพมีการพัฒนาระบบบริหารจัดการที่มีประสิทธิภาพ ', 'ร้อยละ', 100, '>=', 100, 100, 100, 100, 100, 0),
	(1539, 2563, 'ประเทศ', '063', 0, 'ระดับความสำเร็จของการจัดทำสิทธิประโยชน์กลางผู้ป่วยใน ของระบบหลักประกันสุขภาพ 3 ระบบ', 'จำนวน', 1, '>=', 1, 1, 1, 1, 0, 0),
	(1546, 2563, 'ประเทศ', '025.1', 0, 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่ที่ขึ้นทะเบียน ในไตรมาสที่ 1  ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562', 'ร้อยละ', 85, '>=', 0, 0, 0, 85, 80.07, 1434),
	(1547, 2563, 'ประเทศ', '025.2', 0, 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage) ที่ขึ้นทะเบียนในปีงบประมาณ 2563 ( 1 ตุลาคม 2562–30 กันยายน 2563)', 'ร้อยละ', 82.5, '>=', 0, 0, 0, 82.5, 68.59, 1434);
/*!40000 ALTER TABLE `ApiTable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
