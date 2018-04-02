-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.2.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- letitgo 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `letitgo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `letitgo`;

-- 테이블 letitgo.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `sextype` varchar(10) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `regid` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- 테이블 데이터 letitgo.customer:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`seq`, `name`, `phone`, `sextype`, `birthday`, `img`, `regid`) VALUES
	(30, '정재원', '013543170815114958', '여자', '', NULL, 'fmnB8mZqZ_0:APA91bHuy0vkzNedd-7X8FYG5VF6W_EZgxWk2u_phWvF0Dq6MCMq8K5cvt15qBHR5VpeBQDtAhbnuovM3SIekkbbOI_Xlybf1lLyj9ErYGK64vcAAMqQkDjjwTWXv81htNxBxWRJrZMn'),
	(31, 'nana', '15555215554334', '', '', NULL, 'djmMY7_4aEg:APA91bHXhmWrfWO1FzQbWR8DE3VLClnE1HNWBQkzy1OgUbyyK7tCjR3qBOauQDUbT1aFQQWNTzS0F7OjbpXDkDvMdnNa-k9v-lKO1w0_NKg3Euze8JB0KGc2emMqut4TJkd7o_b0rDZs'),
	(32, 'jeong', '1555521555434', '', '', NULL, 'djmMY7_4aEg:APA91bHXhmWrfWO1FzQbWR8DE3VLClnE1HNWBQkzy1OgUbyyK7tCjR3qBOauQDUbT1aFQQWNTzS0F7OjbpXDkDvMdnNa-k9v-lKO1w0_NKg3Euze8JB0KGc2emMqut4TJkd7o_b0rDZs'),
	(33, '스폰지밥', '01354317081511495', '남자', '20180320', '1521366153044.png', 'dvlFHhQOhnM:APA91bGx1Kma5DYXavAzqvLteyhiRcZtDtlCbNlSnwjpJyGrYdXtY9LhWQi_a4kfKw_ESCLNzCe-rmLKcCI0Rneql04RXsB2cJHIlbrl6RRVGgBMS2H4nqSY2A73t4WTa_6pIDHCt4MN');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- 테이블 letitgo.menu 구조 내보내기
CREATE TABLE IF NOT EXISTS `menu` (
  `mSeq` int(100) NOT NULL AUTO_INCREMENT,
  `mName` varchar(50) NOT NULL,
  `mImgUrl` varchar(50) DEFAULT NULL,
  `mPrice` int(20) NOT NULL,
  `mDetail` varchar(200) DEFAULT NULL,
  `seller_seq` int(100) DEFAULT NULL,
  PRIMARY KEY (`mSeq`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- 테이블 데이터 letitgo.menu:~104 rows (대략적) 내보내기
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`mSeq`, `mName`, `mImgUrl`, `mPrice`, `mDetail`, `seller_seq`) VALUES
	(1, '아메리카노', 'americano.png', 4000, '강렬한 에스프레소 샷에 뜨거운 물의 조화', 1),
	(2, '돌체라떼', 'dolchae.png', 4500, '깊은 에스프레소와 깔끔한 무지방 우유가 어우러진 달콤한 음료', 1),
	(3, '카푸치노', 'capucino.png', 5000, '벨벳같은 우유 거품과 에스프레소 샷의 절묘한 조화!', 1),
	(4, '나이트로 콜드브루', 'coldbrew.png', 6000, '거피 정통의 케스케이딩과 부드러운 콜드크레마!', 1),
	(5, '카페모카', 'mocca.png', 5500, '모카시럽과 스팀밀크에 휘핑크림이 토핑된 에스프레소', 1),
	(7, '카라멜 마끼아또', 'caramel.png', 4500, '바닐라 시럽과 우유, 그리고 그 위에 얹어진 에스프레소 샷과 달콤한 카라멜 드리즐의 조화', 1),
	(8, '라벤더 카페 브레베', 'bravae.png', 6000, '블랙이글로 추출한 리저브 에스프레스 샷과 은은한 라벤더향이 고급스럽게 어우러진 더종로, 청담스타 전용음료입니다.', 1),
	(9, '슈 크림 라떼', 'cream_ice.png', 6500, '귀여운 슈크림디저트에서 영감을 받아 개발한 부드러운 풍미의 슈크림라떼를 경험해보세요', 1),
	(10, '카페라떼', 'latte.png', 4000, '에스프레소 샷과 따뜻한 우유의 거품으로 마무리된 음료', 1),
	(11, '에스프레소', 'espresso.png', 4000, '스타벅스 에스프레소는 향기로운 크레마층과 바디층, 하트 층으로 이루어져 있으며, 입안 가득히 커피와 달콤한 카라멜 향이 느껴지는 커피 음료입니다.', 1),
	(19, '새우페스토스파게티', 'lalieto1.png', 12900, '바질 페스토소스와 크림,새우,베이컨 으로 맛을낸 스파게티', 30),
	(20, '토마토 부르스케타', 'lalieto2.png', 7700, '바삭하게 구운 바게트위에 올리브유로 가미한', 30),
	(21, '카프레제', 'lalieto3.png', 9800, '이태리 대표적인 후레쉬 모짜렐라 치즈', 30),
	(22, '리코타샐러드', 'lalieto4.png', 8100, '리에또에서 직접만든 리코타치즈를 곁들인 샐러드', 30),
	(23, '안심스테이크', 'lalieto5.png', 21000, '이탈리아 중부식으로 요리한 안심스테이크(호주산)', 30),
	(24, '토마토 스파게티', 'lalieto6.png', 10400, '토마토 소스에 신선한 조개로 맛을 낸 스파게티 ', 30),
	(25, '까르보나라', 'lalieto7.png', 12000, '베이컨, 통후추, 계란, 파마산치즈, 크림으로 고소한 맛을 낸 스파게티', 30),
	(26, '토마토치즈스파게티', 'lalieto8.png', 12300, '바질허브오일에 버무린 토마토, 모짜치즈 베이컨맛이 깔끔한 스파게티', 30),
	(27, '버섯스파게티', 'lalieto9.png', 11000, '신선한 각종 버섯, 베이컨에 와인소스로 맛을 낸 스파게티 ', 30),
	(28, '마르게리타 피자', 'lalieto10.png', 12900, '토마토소스,후레쉬바질,모짜렐라치즈맛이 풍부한 대표적인 이탈리안피자 ', 30),
	(29, '깔보나라 피자', 'lalieto11.png', 13300, '토마토,베이컨,모짜렐라치즈,깔보나라소스맛이 어우러진 피자', 30),
	(30, '루꼴라피자', 'lalieto12.png', 13800, '담백한도우에 소스와치즈,쌉쌀한 루꼴라향을 돋우는 고소한 피자 ', 30),
	(31, '치즈폭탄', 'kanival1.png', 12000, '기존 피자보다 두배 이상의 치즈가 올라간 치즈 폭탄 피자', 31),
	(32, '페퍼로니폭탄', 'kanival2.png', 13000, '어마어마한 양의 페퍼로니 폭탄 피자', 31),
	(33, '갈릭 고르곤졸라', 'kanival3.png', 12500, '풍성한 고르곤졸라 치즈와 고소한 마늘이 어우러진 피자', 31),
	(34, '스피니치 마스카포네', 'kanival4.png', 13500, '신선한 시금치에 최고급 마스카폰 치즈가 듬뿍 올라간 피자', 31),
	(35, '스피니치 랜치', 'kanival5.png', 14000, '신선한 시금치와 토마토 위에 상큼한 랜치소스가 어우러진 피자', 31),
	(36, '크레이지 포테이토', 'kanival6.png', 13000, '달콤한 허니 감자튀김이 가득 올라간 크레이지 포테이토 피자', 31),
	(37, '스파이시비프', 'kanival7.png', 13700, '매운 불고기소스에 숙성시킨 쇠고기와 채소가 풍성하게 올라간 매콤한 피자', 31),
	(38, '제육김치 디아볼라', 'kanival8.png', 12600, '맛있는 볶은 김치와 카니발 특제 양념으로 맛을 낸 제육볶음이 어우러진 코리안 스타일 피자', 31),
	(39, '살라미', 'kanival9.png', 13000, '짭쪼름한 살라미와 올리브를올려 진한 풍미를 느낄 수 있는 피자', 31),
	(40, '에그베이컨', 'kanival10.png', 13000, '카니발 특제 토마토 소스에 고소하고 든든한 계란과 훈연향이 가득한 베이컨이 올라간 피자', 31),
	(41, '상회짜장', 'sang1.png', 4000, '맛있는 짜장과 쫄깃한 면발', 35),
	(42, '상회짬뽕', 'sang2.png', 4500, '홍합이 한가득 홍합짬뽕', 35),
	(43, '부대짬뽕', 'sang3.png', 5000, '매콤하게 맛있는 부대짬뽕', 35),
	(44, '팔보채', 'sang4.png', 11000, '매콤하게 맛있는 영양만점 팔보채', 35),
	(45, '찹쌀탕수육', 'sang5.png', 13000, '고소하고 쫄깃한 탕수육', 35),
	(46, '아이스 아메리카노', 'americano_ice.png', 5500, '강렬한 에스프레소 샷에 차가운 물의 조화', 1),
	(47, '아이스 돌체라뗴', 'dolchae_ice.png', 6000, '깊은 에스프레소와 깔끔한 무지방 우유가 어우러진 달콤한 음료', 1),
	(48, '아이스 카푸치노', 'capucino_ice.png', 6000, '벨벳같은 우유 거품과 에스프레소 샷의 절묘한 조화!', 1),
	(49, '아이스 카페모카', 'mocca_ice.png', 7000, '모카시럽과 스팀밀크에 휘핑크림이 토핑된 에스프레소', 1),
	(50, '아이스 카라멜 마끼아또', 'caramel_ice.png', 5500, '바닐라 시럽과 우유, 그리고 그 위에 얹어진 에스프레소 샷과 달콤한 카라멜 드리즐의 조화', 1),
	(51, '아이스 슈 크림 라떼', 'cream.png', 5000, '귀여운 슈크림디저트에서 영감을 받아 개발한 부드러운 풍미의 슈크림라떼를 경험해보세요', 1),
	(52, '아이스 카페라뗴', 'latte_ice.png', 4000, '에스프레소 샷과 차가운 우유의 거품으로 마무리된 음료', 1),
	(53, '불고기마요덮밥', 'korean1.png', 8000, '고소한 마요네즈와 느끼함을 잡아주는 청량고추,신선한 양배추와 불맛나는 소불고기의 하모니', 2),
	(54, '매콤낙지덮밥', 'korean2.png', 8000, '매콤한 소스와 탱글탱글한 낙지, 아삭한 콩나물을 한꺼번에 맛볼 수 있는 낙지덮밥', 2),
	(55, '치킨커리볶음밥', 'korean3.png', 8500, '향긋한 커리의 향과 훈제 닭가슴살의 풍미가 어우러져 절묘한 만남', 2),
	(56, '장조림볶음밥', 'korean4.png', 8000, '짭조름하고 야들야들한 쇠고기장조림과 무장아찌의 식감, 계란의 부드러운 맛을 버터로 볶아 고소한 풍미를 느낄 수 있는 볶음밥', 2),
	(57, '새우볶음밥', 'korean5.png', 7500, '통통한 새우와 여러가지 야채들이 어우러진 볶음밥', 2),
	(58, '해물볶음밥', 'korean6.png', 4500, '각종 푸짐한 해물이 들어 해물의 향과 씹히는 맛이 좋은 볶음밥', 2),
	(59, '김치볶음밥', 'korean7.png', 6000, '개운하고 상큼한 김치와 햄,양파를 버터에 볶아 고소한 맛과 매콤한 맛이 일품인 볶음밥', 2),
	(60, '낙지볶음밥', 'korean8.png', 8000, '낙지와 환상적인 매콤한 소스를 더해 화끈한 맛을 더하는 볶음밥', 2),
	(61, '돈카츠야끼우동', 'japan1.png', 9000, '', 3),
	(62, '돈카츠명란특선정식', 'japan2.png', 8000, NULL, 3),
	(63, '고구마치즈돈카츠', 'japan3.png', 8000, NULL, 3),
	(64, '점보믹스동', 'japan4.png', 7000, NULL, 3),
	(65, '돈카츠카레우동', 'japan5.png', 7500, NULL, 3),
	(66, '불닭야끼우동', 'japan6.png', 8500, NULL, 3),
	(67, '잡채밥', 'sang6.png', 8000, '매콤하게 맛있는 잡채밥', 35),
	(68, '볶음밥', 'sang7.png', 8000, '맛있는 짜장과 든든한 볶음밥', 35),
	(69, '깐풍기', 'sang8.png', 13000, '바사삭 튀긴 맛있는 깐풍기', 35),
	(70, '양장피', 'sang9.png', 12000, '맛있고 담백한 양장피', 35),
	(71, '깐풍새우', 'sang10.png', 13000, '쫄깃하게 맛있는 깐풍새우', 35),
	(72, '모듬짬뽕탕', 'sang11.png', 10000, '다양한 해물이 한가득 모듬짬뽕탕', 35),
	(73, '신전떡볶이', 'sinjeon1.png', 3000, '쫄깃쫄깃 맛있는 떡볶이 ', 37),
	(74, '튀김오뎅', 'sinjeon2.png', 3000, '바삭함 속에 쫄깃한 오뎅', 37),
	(75, '튀김만두', 'sinjeon3.png', 3000, '떡볶이와 같이 먹으면 꿀맛', 37),
	(76, '신전김밥', 'sinjeon4.png', 3000, '중독성 있는 김밥', 37),
	(77, '국물오뎅', 'sinjeon5.png', 3000, '뜨끈뜨끈한 국물오뎅', 37),
	(78, '신전토스트', 'sinjeon6.png', 2000, '치즈와 햄의 만남', 37),
	(79, '트러플 까르보나라 파스타 떡볶이', 'school1.png', 8500, '', 39),
	(80, '매운 까르보나라 파스타 떡볶이 ', 'school2.png', 8500, NULL, 39),
	(81, '1.7인분 국물떡볶이', 'school3.png', 8500, NULL, 39),
	(82, '길거리표 떡볶이', 'school4.png', 8500, NULL, 39),
	(83, '떡순이모둠', 'school5.png', 8500, NULL, 39),
	(84, '아메리카노', 'coffeebin1.png', 4500, NULL, 48),
	(87, '돈카츠모밀', 'japan7.png', 7000, NULL, 3),
	(88, 'RED냉모밀', 'japan8.png', 6500, NULL, 3),
	(89, '레드핫차슈덮밥', 'japan9.png', 7000, NULL, 3),
	(90, '청양초해물우동전골', 'japan10.png', 7500, NULL, 3),
	(91, '옛날식 달콤한 로스카츠', 'japan11.png', 8000, NULL, 3),
	(92, '돈카츠김치우동전골', 'japan12.png', 8500, NULL, 3),
	(93, '돈까스김밥', 'korean9.png', 4000, NULL, 49),
	(94, '떡갈비김밥', 'korean10.png', 4500, NULL, 49),
	(95, '킹소세지김밥', 'korean11.png', 4000, NULL, 49),
	(96, '호박죽', 'korean12.png', 5000, NULL, 49),
	(97, '소고기야채죽', 'korean13.png', 4500, NULL, 49),
	(98, '가츠동', 'korean14.png', 4500, NULL, 49),
	(99, '황태해장국', 'korean15.png', 6500, NULL, 49),
	(100, '순두부찌개', 'korean16.png', 5500, NULL, 49),
	(101, '된장찌개', 'korean17.png', 5500, NULL, 49),
	(102, '뚝배기불고기', 'korean18.png', 6000, NULL, 49),
	(103, '직화낙지덮밥', 'korean19.png', 6500, NULL, 49),
	(104, '유부우동', 'korean20.png', 5500, NULL, 49),
	(105, '한우사골떡만두국', 'korean21.png', 6000, NULL, 49),
	(106, '삼선짬뽕', 'sang12.png', 5000, NULL, 35),
	(107, '미니탕수육', 'sang15.png', 4000, NULL, 35),
	(108, '돈까스+짜장SET', 'sang13.png', 9000, NULL, 35),
	(109, '돈까스+짬뽕SET', 'sang14.png', 9000, NULL, 35),
	(110, '국대떡볶이', 'cookdae1.png', 5500, NULL, 4),
	(111, '국대라볶이', 'cookdae2.png', 5000, NULL, 4),
	(112, '국대 순대', 'cookdae3.png', 4000, NULL, 4),
	(113, '국대 오뎅', 'cookdae4.png', 4500, NULL, 4),
	(114, '핫도그', 'cookdae5.png', 3500, NULL, 4),
	(115, '아라비아타 펜네', 'lalieto13.png', 11000, '허브오일, 양파, 토마토소스에 매운맛을 가미한 파스타', 30),
	(116, '토마토 조개 스파게티', 'lalieto14.png', 10400, '토마토 소스에 신선한 조개로 맛을 낸 스파게티', 30),
	(117, '마일드 토마토 새우 스파게티', 'lalieto15.png', 12500, '토마토 소스에 고소한 크림이 조화를 이룬 새우 스파게티', 30),
	(118, '크림연어 스파게티', 'lalieto17.png', 12100, '버섯 훈제연어 크림의 맛이 어우러진 스파게티', 30),
	(119, '알프레도 스파게티', 'lalieto16.png', 12700, '베이컨, 새우, 크림의 알프레도 스파게티', 30);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- 테이블 letitgo.order 구조 내보내기
CREATE TABLE IF NOT EXISTS `order` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `cust_seq` int(11) NOT NULL,
  `seller_seq` int(11) NOT NULL,
  `menu_seq` int(11) NOT NULL,
  `num` int(11) NOT NULL DEFAULT 0,
  `time_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `time_take` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` varchar(500) DEFAULT NULL,
  `permit` int(2) DEFAULT 0,
  `total_price` int(20) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- 테이블 데이터 letitgo.order:~14 rows (대략적) 내보내기
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`seq`, `cust_seq`, `seller_seq`, `menu_seq`, `num`, `time_order`, `time_take`, `message`, `permit`, `total_price`) VALUES
	(65, 33, 30, 19, 1, '2018-03-20 18:00:47', '2018-03-20 18:00:47', '베이컨 많이 넣어주세요', 4, NULL),
	(66, 33, 30, 26, 1, '2018-03-20 18:00:47', '2018-03-20 18:00:47', NULL, 4, NULL),
	(67, 33, 30, 20, 1, '2018-03-20 18:00:47', '2018-03-20 18:00:47', NULL, 4, NULL),
	(68, 33, 1, 11, 1, '2018-03-20 21:23:40', '2018-03-20 21:23:40', NULL, 0, NULL),
	(69, 33, 31, 33, 1, '2018-01-20 21:23:40', '2018-01-20 21:23:40', NULL, 4, 2350000),
	(70, 33, 31, 34, 1, '2018-02-20 21:23:40', '2018-02-20 21:23:40', '냅킨 많이주세요', 4, 3420000),
	(71, 33, 31, 35, 1, '2018-03-20 21:23:40', '2018-03-20 21:23:40', '냅킨 많이주세요', 4, 2340000),
	(72, 33, 31, 34, 1, '2018-03-20 21:23:40', '2018-03-01 21:23:40', '냅킨 많이주세요', 4, 0),
	(73, 33, 31, 36, 1, '2018-03-20 21:23:40', '2018-03-01 21:23:40', '냅킨 많이주세요', 4, 0),
	(74, 33, 35, 106, 2, '2018-03-26 19:35:51', '2018-03-23 21:23:40', '냅킨 많이주세요', 4, 0),
	(75, 33, 35, 107, 1, '2018-03-25 19:35:51', '2018-03-23 21:23:40', '냅킨 많이주세요', 4, 0),
	(76, 33, 31, 36, 1, '2018-03-29 19:35:51', '2018-03-29 21:23:40', NULL, 4, 0),
	(103, 33, 31, 33, 1, '2018-03-29 03:01:05', '2018-03-29 03:01:05', '냅킨 많이주세요', 4, 12500),
	(105, 33, 31, 39, 1, '2018-03-29 03:01:38', '2018-03-29 03:01:38', '냅킨 많이주세요', 3, 13000),
	(123, 33, 31, 38, 3, '2018-03-30 05:08:15', '2018-03-30 05:08:15', '안녕 ', 4, 37800),
	(124, 33, 31, 35, 2, '2018-03-30 05:08:15', '2018-03-30 05:08:15', '안녕 ', 4, NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 테이블 letitgo.seller 구조 내보내기
CREATE TABLE IF NOT EXISTS `seller` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `regid` varchar(500) DEFAULT NULL,
  `webpage` varchar(200) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- 테이블 데이터 letitgo.seller:~72 rows (대략적) 내보내기
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` (`seq`, `type`, `name`, `phone`, `img`, `site`, `tel`, `address`, `regid`, `webpage`, `latitude`, `longitude`) VALUES
	(1, 6, '스타벅스', '+82105507817456\r\n', 'starbucks.png', '숙대점', '02-123-345', '(04313) 서울 용산구 청파동2가 청파로 47길 57', 'drTFhHDbeDc:APA91bFl32WdoLrM0xuBo4THPtIS--tW6cc_kSSkp_VptCeLADpWUCQMJjvLmrVfrMI0DpwZMp85wftgYkn8PDT5Lg2sBemBayYTpviPcSm82_nmSRPxYfAwvIsvT_AkAPHkh0949AJM', 'www.starbucks.com', 37.544787, 126.96716),
	(2, 1, '종로김밥', '013543170815114953', 'jongro.jpg', '숙대점', '02-715-3281', '(04312) 서울 용산구 청파로 47길 79', 'etTYvpdBKzw:APA91bEhf2IfHZo41drBWtt8H3RZ9pfQN1lH9VfLzqDHywoZp4FMYp__fpfhXPndqI_1STfkweCIP5n6n0evw0CmI0iCTn4ENRi_Vh7rBeifhKp9SV3GtMxVFBnXYO120RoavaGIQtat', 'www', 37.5464491, 126.9670841),
	(3, 3, '미소야', '013543170815114952', 'misoya.png', '충정로점', '02-312-1370', '(06267) 서울 중구 중림로 10', 'djmMY7_4aEg:APA91bHXhmWrfWO1FzQbWR8DE3VLClnE1HNWBQkzy1OgUbyyK7tCjR3qBOauQDUbT1aFQQWNTzS0F7OjbpXDkDvMdnNa-k9v-lKO1w0_NKg3Euze8JB0KGc2emMqut4TJkd7o_b0rDZs', '', 37.4852042, 127.0344078),
	(4, 5, '국대떡볶이', '02-124-2512', 'cookdae.png', '용산점', '02-3785-1282', '(04382) 서울특별시 용산구 한강로2가 71', NULL, NULL, 37.531197, 126.971587),
	(5, 6, '엔제리너스', '02-142-1251', 'cafe6.png', '서울역점', '02-122-1525', '(04509) 서울 중구 한강대로 405', NULL, NULL, 37.555892, 126.970024),
	(6, 6, '커피니', '02-885-2125', 'cafe7.png', '숙대점', '02-123-1245', '(04312) 서울 용산구 청파로47길 66', NULL, NULL, 37.54616, 126.967092),
	(7, 6, '탐앤탐스', '02-152-1251', 'cafe8.png', '서울역점', '02-12-1255', '(04323) 서울 용산구 후암로 107', NULL, NULL, 37.554452, 126.973178),
	(8, 6, '이디야', '02-123-1234', 'cafe4.png', '숙명여대점', '02-125-2415', '(04310) 서울 용산구 청파로47길 82', NULL, NULL, 37.546172, 126.965809),
	(9, 6, '할리스', '02-454-2535', 'hollys.png', '서울역점', '02-152-5136', '(04329) 서울 용산구 한강대로 405', NULL, NULL, 37.550327, 126.970497),
	(10, 6, '공차', '02-135-1241', 'gongcha.png', '강남본점', '02-124-1242', '(06614) 서울 서초구 강남대로 423', NULL, NULL, 37.501599, 127.025621),
	(11, 6, '요거프레소', '02-125-1252', 'yoger.png', '청담점', '02-125-2424', '(06070) 서울 강남구 도산대로92길 6', NULL, NULL, 37.525112, 127.050294),
	(12, 6, '커피에 반하다', '02-554-4353', 'coffeeban.png', '강남진흥상가점', '02-124-1241', '(06617) 서울 서초구 서초대로 389', NULL, NULL, 38.498045, 127.022402),
	(13, 6, '아마스빈', '02-125-2552', 'bean.png', '숙대점', '02-124-1253', '(04313) 서울 용산구 청파로47길 35', NULL, NULL, 37.545943, 126.968649),
	(14, 6, '폴바셋', '02-155-1256', 'paul.png', '청담점', '02-152-5212', '(06015) 서울 강남구 도산대로75길 22', NULL, NULL, 37.527182, 127.046171),
	(30, 4, '라리에또', '+82105507817', 'lalieto.png', '숙대점', '02-715-9241', '(04308) 서울특별시 용산구 청파동1가 60-1', NULL, 'www.lalietosd.fordining.kr', 37.549717, 126.967721),
	(31, 4, '카니발피자', '+821055078174', 'kanival.png', '숙대점', '02-706-7108', '(04309) 서울 용산구 청파로47길 34 2층', 'f4075V_6ygc:APA91bGNilZUL_njnuyzRNUQqNkmvcj_MGtUDZpHREBjy_7FsQHMRFqjVdN5e7Eq96VKg2ZhsubwvATS1RhQb9TNVDpT9MqkbQeL5PuIStKAuQduH1XxStDnrKliE0tqkj9jkGIQcklx', 'www.kanivalpizza.com', 37.545136, 126.968531),
	(32, 4, '뚝배기스파게티', '02-706-2209', 'pot.png', '숙대점', '02-706-2209', '(04313) 서울 용산구 청파로45길 36', NULL, NULL, 37.544839, 126.96852),
	(33, 4, '그린파스타', '232323', 'green.png', '숙대점', '02-701-3237', '(04313) 서울 용산구 청파로45길 13', NULL, '', 37.544471, 126.969827),
	(34, 2, '홍콩반점', '02-706-8369', 'hongkong.png', '숙대점', '02-706-8369', '(04313) 서울 용산구 청파로45길 12-1', NULL, 'www.zzambbong.com', 37.544471, 126.969827),
	(35, 2, '짬뽕상회', '02-815-0581', 'sang.png', '보라매역점', '02-815-0581', '(07055) 서울 동작구 여의대방로24길 7', NULL, NULL, 37.499582, 126.920828),
	(36, 2, '홍짜장', '02-776-0033', 'hong.png', '서울역점', '02-776-0033', '(04334) 서울 용산구 한강대로104가길 4', NULL, 'www.hongjjajang.com', 37.550679, 126.972706),
	(37, 5, '신전떡볶이', '02-749-8852', 'sinjeon.png', '이촌점', '02-749-8852', '(04423) 서울 용산구 이촌로75길 10-5', NULL, 'http://sinjeon.co.kr/', 37.521268, 126.974143),
	(38, 5, '아딸', '01354317081511123', 'dad.png', '이촌점', '02-790-2008', '(04425) 서울특별시 용산구 이촌동 300-10', 'fqVChvEIGCo:APA91bFLddBgFButrBGMlDqt3f_pi9P5BwCrig1r6UHumnKaaT1DMWBK67vkyJkno6BbebCw37DKYywn8C_9XfLSNhWYCXLqdlXg_8YGKwFF4GvcEyqqsZpc00eWsLMlJ6SOevrWi2kd', 'www.addal.co.kr', 37.520786, 126.978519),
	(39, 5, '스쿨푸드', '02-510-5005', 'school.png', '가로수길점', '02-510-5005', '(06036) 서울특별시 강남구 신사동 도산대로 139', NULL, 'www.brand.schoolfood.co.kr', 37.518366, 127.023704),
	(48, 6, '커피빈', '02-231-2314', 'cafe3.png', '신사점', '02-231-2314', '(06039) 서울특별시 강남구 논현동 4-2', NULL, NULL, 37.517816, 127.022569),
	(49, 1, '김밥천국', '02-121-2314', 'heaven.png', '역삼점', '02-124-2512', '(06235) 서울특별시 강남구 테헤란로20길 20', NULL, NULL, 37.499284, 127.03458),
	(51, 1, '올반', '02-111-1111', 'alban.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(52, 1, '비비고', '02-111-1111', 'bibigo.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(53, 1, '한촌설렁탕', '02-111-1111', 'hanchon.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(54, 1, '풀잎채', '02-111-1111', 'leaf.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(55, 1, '놀부부대찌개', '02-111-1111', 'nolbu.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(56, 1, '할머니국수', '02-111-1111', 'noodle.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(57, 1, '소박한식당', '02-111-1111', 'sobak.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(58, 1, '토마토김밥', '02-111-1111', 'tomato.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(59, 1, '원할머니보쌈', '02-111-1111', 'won.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(60, 1, '육쌈냉면', '02-111-1111', 'yook.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(61, 1, '지지고', '02-111-1111', 'zizi.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(62, 2, '차이나타운', '02-111-1111', 'busan.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(63, 2, '교동짬뽕', '02-111-1111', 'godong.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(64, 2, '홍짜장', '02-111-1111', 'hong.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(65, 2, 'JOE\'S SHANGHAI', '02-111-1111', 'joes.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(66, 2, '룽성', '02-111-1111', 'lung.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(67, 2, 'PANDA EXPRESS', '02-111-1111', 'panda.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(68, 2, '세찬왕만두', '02-111-1111', 'wang.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(70, 2, '얌차이나', '02-111-1111', 'yum2.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(71, 3, '북경초밥', '02-111-1111', 'book.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(72, 3, '스시코', '02-111-1111', 'co.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(73, 3, 'GINZO', '02-111-1111', 'ginzo.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(74, 3, '하코야', '02-111-1111', 'hakokya.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(75, 3, '스시히로바', '02-111-1111', 'hiro.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(76, 3, '이치고', '02-111-1111', 'ichigo.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(77, 3, '문스', '02-111-1111', 'moons.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(78, 3, '함다', '02-111-1111', 'ninja.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(79, 3, '닌자초밥', '02-111-1111', 'ninja2.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(80, 3, '서면스시', '02-111-1111', 'sumun.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(81, 3, 'SUSHI', '02-111-1111', 'sushi.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(82, 3, '우스시게', '02-111-1111', 'yoons.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(83, 3, '이야기라멘', '02-111-1111', 'story.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(84, 4, '부자피자', '02-111-1111', 'buzza.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(85, 4, '조니피자', '02-111-1111', 'jon.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(86, 4, '피제리아', '02-111-1111', 'pizzeria.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(87, 4, '델리피자', '02-111-1111', 'pizza.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(88, 4, '쉑쉑', '02-111-1111', 'shake.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(89, 4, '부자2피자', '02-111-1111', 'buzza2.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(90, 4, '우버펍', '02-111-1111', 'pub.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(91, 5, '국대떡볶이', '02-111-1111', 'dae.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(92, 5, '달그락', '02-111-1111', 'dal.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(93, 5, '바르다김선생', '02-111-1111', 'kim.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(94, 5, '죠떡볶이', '02-111-1111', 'jo.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(95, 5, '죠스떡볶이', '02-111-1111', 'jaws.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(96, 5, '고봉민김밥', '02-111-1111', 'min.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483),
	(97, 5, '얌샘김밥', '02-111-1111', 'sam.png', '강남점', '02-111-1111', '(48060) 부산광역시 해운대구 센텀3로 26 (우동, 센텀스퀘어)', NULL, NULL, 35.1674, 129.133483);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;