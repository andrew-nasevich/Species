/*SpeciesType*/

Insert into SpeciesTypes Values('��������')
Insert into SpeciesTypes Values('��������')

/*Species*/

/*��������*/
INSERT INTO Species VALUES('�������������� �������� (����� ������ Hirudinea/����� ����������� ������ Arhynchobdellida)', '����������� ������', 'Hirudo medicinalis', '�������� �`����', 'II', 1)
INSERT INTO Species VALUES('����� ������������ Crustacea (����� ���������� Copepoda)', '������������� ������������', 'Limnocalanus macrurus', '���������� �i����������', 'III', 1)
INSERT INTO Species VALUES('����� ������������ Crustacea (����� ���������� Copepoda)', '������� ����������', 'Eurytemora lacustris', '������ ����������', 'III', 1)
INSERT INTO Species VALUES('����� ������ Mysidacea', '���������� ������', 'Mysis relicta Loven', '���i������ �i�i��', 'III', 1)
 
 /*��������*/

INSERT INTO Species VALUES('����� �������������� - Lycopodiophyta (��������� ��������� - Lycopodiaceae)', '������������ ����������', 'Lycopodiella inundata (L.) Holub', '�i��������� ���i����', 'IV', 2)
INSERT INTO Species VALUES('��������� ���������� - Huperziaceae', '������� ������������', 'Huperzia selago (L.) Bernh. ex Schrank et C. Mart.', '������� ��������', 'IV', 2)
INSERT INTO Species VALUES('��������� ������������ - Iso�taceae', '�������� ������', 'Iso�tes lacustris L.', '������i� �����', 'II', 2)
INSERT INTO Species VALUES('����� ������������� - Equisetophyta (��������� �������� - Equisetaceae)', '���� �������', 'Equisetum telmateia Ehrh.', '����� ���i�i', 'I', 2)
 
 /*�������� ������*/

 INSERT INTO Accounts VALUES('������', '�������', 'nasevichandrey@mail.ru', '123')
 select * from Accounts
 INSERT INTO Observations VALUES(54.199362, 27.846251, GETDATE(), '����� ����� ���� ��������', 1, 1)