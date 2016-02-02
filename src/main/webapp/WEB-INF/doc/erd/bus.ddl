/**********************************/
/* Table Name: 이용안내 */
/**********************************/
CREATE TABLE information(
		reserve                       		VARCHAR		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '승차권예약',
		ticket                        		VARCHAR		 NOT NULL COMMENT '홈티켓',
		cancel                        		VARCHAR		 NOT NULL COMMENT '취소/수수료',
		infor                         		VARCHAR		 NOT NULL COMMENT '문의안내'
) COMMENT='이용안내';

/**********************************/
/* Table Name: 출발지 */
/**********************************/
CREATE TABLE start(
		start                         		VARCHAR		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '출발'
) COMMENT='출발지';

/**********************************/
/* Table Name: 도착 */
/**********************************/
CREATE TABLE arrive(
		arrive                        		MEDIUMINT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '도착'
) COMMENT='도착';

/**********************************/
/* Table Name: 버스구분 */
/**********************************/
CREATE TABLE bus_type(
		express                       		VARCHAR		 NOT NULL COMMENT '일반고속',
		high_express                  		VARCHAR		 NOT NULL COMMENT '우등고속',
		night express                 		VARCHAR		 NOT NULL COMMENT '심야고속',
		night high_express            		VARCHAR(10)		 NOT NULL COMMENT '심야우등'
) COMMENT='버스구분';

/**********************************/
/* Table Name: 좌석수 */
/**********************************/
CREATE TABLE seat_num(
		seat 28                       		MEDIUMINT(10)		 NOT NULL COMMENT '28석',
		seat 45                       		MEDIUMINT(10)		 NOT NULL COMMENT '45석'
) COMMENT='좌석수';

/**********************************/
/* Table Name: 운행정보 */
/**********************************/
CREATE TABLE operation guide(
		start                         		VARCHAR		 NOT NULL COMMENT '출발지',
		arrive                        		VARCHAR		 NOT NULL COMMENT '도착지',
		start_time                    		MEDIUMINT		 NOT NULL COMMENT '출발시간',
		bus_type                      		VARCHAR		 NOT NULL COMMENT '버스구분',
		all_seat                      		MEDIUMINT(10)		 NOT NULL COMMENT '총 좌석',
		company                       		VARCHAR		 NOT NULL COMMENT '운수회사',
		time                          		MEDIUMINT(10)		 NOT NULL COMMENT '소요시간',
		distance                      		MEDIUMINT(10)		 NOT NULL COMMENT '운행거리',
		money                         		MEDIUMINT(10)		 NOT NULL COMMENT '요금',
		date                          		DATE		 NOT NULL COMMENT '가는 일시',
		seat                          		MEDIUMINT(10)		 NOT NULL COMMENT '잔여좌석',
  FOREIGN KEY (start) REFERENCES start (start),
  FOREIGN KEY (arrive) REFERENCES arrive (arrive),
  FOREIGN KEY () REFERENCES bus_type (),
  FOREIGN KEY () REFERENCES seat_num ()
) COMMENT='운행정보';

