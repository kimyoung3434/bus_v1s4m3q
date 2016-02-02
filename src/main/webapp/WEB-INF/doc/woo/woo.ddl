/**********************************/
/* Table Name: �ܿ��¼���ȸ */
/**********************************/
CREATE TABLE seat(
		seatno                        		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '��Ϲ�ȣ',
		road                          		VARCHAR		 NOT NULL COMMENT '�뼱',
		seatYN                        		VARCHAR		 NOT NULL COMMENT '��������',
		rdate                         		DATETIME		 NOT NULL COMMENT '��¥'
) COMMENT='�ܿ��¼���ȸ';

/**********************************/
/* Table Name: �����ϱ� */
/**********************************/
CREATE TABLE payment(
		payno                         		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '��ȣ',
		start                         		VARCHAR		 NOT NULL COMMENT '�����',
		final                         		VARCHAR		 NOT NULL COMMENT '������',
		rdate                         		DATETIME		 NOT NULL COMMENT '����Ͻ�',
		bus                           		VARCHAR		 NOT NULL COMMENT '���',
		pay                           		MEDIUMINT		 NOT NULL COMMENT '�ż�'
) COMMENT='�����ϱ�';

/**********************************/
/* Table Name: �����ǿ��� */
/**********************************/
CREATE TABLE reservation(
		reservationno                 		MEDIUMINT		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '��Ϲ�ȣ',
		road                          		VARCHAR		 NOT NULL COMMENT '�뼱',
		content                       		MEDIUMTEXT		 NOT NULL COMMENT '�����ϱ�',
		rdate                         		DATETIME		 NOT NULL COMMENT '��¥',
		cnt                           		MEDIUMINT		 NOT NULL COMMENT '��ȸ��',
		payno                         		MEDIUMINT		 NULL  COMMENT '��ȣ',
  FOREIGN KEY (payno) REFERENCES payment (payno)
) COMMENT='�����ǿ���';

