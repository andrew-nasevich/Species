/*SpeciesType*/

Insert into SpeciesTypes Values('��������')
Insert into SpeciesTypes Values('��������')

/*Species*/

/*��������*/
INSERT INTO Species VALUES('�������������� �������� (����� ������ Hirudinea/����� ����������� ������ Arhynchobdellida)', '����������� ������', 'Hirudo medicinalis', '�������� �`����', 2, 1)
INSERT INTO Species VALUES('����� ������������ Crustacea (����� ���������� Copepoda)', '������������� ������������', 'Limnocalanus macrurus', '���������� �i����������', 3, 1)
INSERT INTO Species VALUES('����� ������������ Crustacea (����� ���������� Copepoda)', '������� ����������', 'Eurytemora lacustris', '������ ����������', 4, 1)
INSERT INTO Species VALUES('����� ������ Mysidacea', '���������� ������', 'Mysis relicta Loven', '���i������ �i�i��', 5, 1)
 
 /*��������*/
INSERT INTO Species VALUES('����� �������������� - Lycopodiophyta (��������� ��������� - Lycopodiaceae)', '������������ ����������', 'Lycopodiella inundata (L.) Holub', '�i��������� ���i����', 4, 2)
INSERT INTO Species VALUES('��������� ���������� - Huperziaceae', '������� ������������', 'Huperzia selago (L.) Bernh. ex Schrank et C. Mart.', '������� ��������', 4, 2)
INSERT INTO Species VALUES('��������� ������������ - Iso�taceae', '�������� ������', 'Iso�tes lacustris L.', '������i� �����', 2, 2)
INSERT INTO Species VALUES('����� ������������� - Equisetophyta (��������� �������� - Equisetaceae)', '���� �������', 'Equisetum telmateia Ehrh.', '����� ���i�i', 1, 2)
 
 /*�������� ������*/
 select * from Species

 INSERT INTO Accounts VALUES('������', '�������', 'nasevichandrey@mail.ru', '123')
 select * from Accounts
 INSERT INTO Observations VALUES(54.199362, 27.846251, GETDATE(), '����� ����� ���� ��������', 1, 1)
 INSERT INTO Observations VALUES(55.199362, 26.846251, GETDATE(), '����', 8, 1)