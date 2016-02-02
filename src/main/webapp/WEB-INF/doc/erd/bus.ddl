/**********************************/
/* Table Name: �̿�ȳ� */
/**********************************/
CREATE TABLE information(
		reserve                       		VARCHAR		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '�����ǿ���',
		ticket                        		VARCHAR		 NOT NULL COMMENT 'ȨƼ��',
		cancel                        		VARCHAR		 NOT NULL COMMENT '���/������',
		infor                         		VARCHAR		 NOT NULL COMMENT '���Ǿȳ�'
) COMMENT='�̿�ȳ�';

/**********************************/
/* Table Name: ����� */
/**********************************/
CREATE TABLE start(
		start                         		VARCHAR		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '���'
) COMMENT='�����';

/**********************************/
/* Table Name: ���� */
/**********************************/
CREATE TABLE arrive(
		arrive                        		MEDIUMINT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '����'
) COMMENT='����';

/**********************************/
/* Table Name: �������� */
/**********************************/
CREATE TABLE bus_type(
		express                       		VARCHAR		 NOT NULL COMMENT '�Ϲݰ��',
		high_express                  		VARCHAR		 NOT NULL COMMENT '�����',
		night express                 		VARCHAR		 NOT NULL COMMENT '�ɾ߰��',
		night high_express            		VARCHAR(10)		 NOT NULL COMMENT '�ɾ߿��'
) COMMENT='��������';

/**********************************/
/* Table Name: �¼��� */
/**********************************/
CREATE TABLE seat_num(
		seat 28                       		MEDIUMINT(10)		 NOT NULL COMMENT '28��',
		seat 45                       		MEDIUMINT(10)		 NOT NULL COMMENT '45��'
) COMMENT='�¼���';

/**********************************/
/* Table Name: �������� */
/**********************************/
CREATE TABLE operation guide(
		start                         		VARCHAR		 NOT NULL COMMENT '�����',
		arrive                        		VARCHAR		 NOT NULL COMMENT '������',
		start_time                    		MEDIUMINT		 NOT NULL COMMENT '��߽ð�',
		bus_type                      		VARCHAR		 NOT NULL COMMENT '��������',
		all_seat                      		MEDIUMINT(10)		 NOT NULL COMMENT '�� �¼�',
		company                       		VARCHAR		 NOT NULL COMMENT '���ȸ��',
		time                          		MEDIUMINT(10)		 NOT NULL COMMENT '�ҿ�ð�',
		distance                      		MEDIUMINT(10)		 NOT NULL COMMENT '����Ÿ�',
		money                         		MEDIUMINT(10)		 NOT NULL COMMENT '���',
		date                          		DATE		 NOT NULL COMMENT '���� �Ͻ�',
		seat                          		MEDIUMINT(10)		 NOT NULL COMMENT '�ܿ��¼�',
  FOREIGN KEY (start) REFERENCES start (start),
  FOREIGN KEY (arrive) REFERENCES arrive (arrive),
  FOREIGN KEY () REFERENCES bus_type (),
  FOREIGN KEY () REFERENCES seat_num ()
) COMMENT='��������';

