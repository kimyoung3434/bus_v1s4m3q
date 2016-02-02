/**********************************/
/* Table Name: 잔여좌석조회 */
/**********************************/
CREATE TABLE seat(
		seatno                        		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '목록번호',
		road                          		VARCHAR		 NOT NULL COMMENT '노선',
		seatYN                        		VARCHAR		 NOT NULL COMMENT '착석가능',
		rdate                         		DATETIME		 NOT NULL COMMENT '날짜'
) COMMENT='잔여좌석조회';

/**********************************/
/* Table Name: 예매하기 */
/**********************************/
CREATE TABLE payment(
		payno                         		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '번호',
		start                         		VARCHAR		 NOT NULL COMMENT '출발지',
		final                         		VARCHAR		 NOT NULL COMMENT '도착지',
		rdate                         		DATETIME		 NOT NULL COMMENT '출발일시',
		bus                           		VARCHAR		 NOT NULL COMMENT '등급',
		pay                           		MEDIUMINT		 NOT NULL COMMENT '매수'
) COMMENT='예매하기';

/**********************************/
/* Table Name: 승차권예매 */
/**********************************/
CREATE TABLE reservation(
		reservationno                 		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '목록번호',
		road                          		VARCHAR		 NOT NULL COMMENT '노선',
		content                       		MEDIUMTEXT		 NOT NULL COMMENT '예매하기',
		rdate                         		DATETIME		 NOT NULL COMMENT '날짜',
		cnt                           		MEDIUMINT		 NOT NULL COMMENT '조회수',
		payno                         		MEDIUMINT		 NULL  COMMENT '번호',
  FOREIGN KEY (payno) REFERENCES payment (payno)
) COMMENT='승차권예매';

