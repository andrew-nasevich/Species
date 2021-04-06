/*SpeciesType*/

Insert into SpeciesTypes Values('Животные')
Insert into SpeciesTypes Values('Растения')

/*Species*/

/*Животные*/
INSERT INTO Species VALUES('Беспозвоночные животные (класс Пиявки Hirudinea/отряд Бесхоботные пиявки Arhynchobdellida)', 'Медицинская пиявка', 'Hirudo medicinalis', 'Медычная п`яўка', 2, 1)
INSERT INTO Species VALUES('Класс Ракообразные Crustacea (отряд Веслоногие Copepoda)', 'Длиннохвостый лимнокалянус', 'Limnocalanus macrurus', 'Доўгахвосты лiмнакалянус', 3, 1)
INSERT INTO Species VALUES('Класс Ракообразные Crustacea (отряд Веслоногие Copepoda)', 'Озерная эвритемора', 'Eurytemora lacustris', 'Азёрная эўрытэмора', 4, 1)
INSERT INTO Species VALUES('Отряд Мизиды Mysidacea', 'Реликтовая мизида', 'Mysis relicta Loven', 'Рэлiктавая мiзiда', 5, 1)
 
 /*Растения*/
INSERT INTO Species VALUES('Отдел Плаунообразные - Lycopodiophyta (семейство Плауновые - Lycopodiaceae)', 'Ликоподиелла заливаемая', 'Lycopodiella inundata (L.) Holub', 'Лiкападыела залiўная', 4, 2)
INSERT INTO Species VALUES('Семейство Баранцовые - Huperziaceae', 'Баранец обыкновенный', 'Huperzia selago (L.) Bernh. ex Schrank et C. Mart.', 'Баранец звычайны', 4, 2)
INSERT INTO Species VALUES('Семейство Полушниковые - Isoёtaceae', 'Полушник озёрный', 'Isoёtes lacustris L.', 'Палушнiк азёрны', 2, 2)
INSERT INTO Species VALUES('Отдел Хвощеобразные - Equisetophyta (семейство Хвощевые - Equisetaceae)', 'Хвощ большой', 'Equisetum telmateia Ehrh.', 'Хвошч вялiкi', 1, 2)
 
 /*Тестовые данные*/
 select * from Species

 INSERT INTO Accounts VALUES('Андрей', 'Насевич', 'nasevichandrey@mail.ru', '123')
 select * from Accounts
 INSERT INTO Observations VALUES(54.199362, 27.846251, GETDATE(), 'Здесь живет одно жывотное', 1, 1)
 INSERT INTO Observations VALUES(55.199362, 26.846251, GETDATE(), 'Хвощ', 8, 1)