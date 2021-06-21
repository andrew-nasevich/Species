﻿/*SpeciesType*/


Insert into SpeciesTypes Values('Животные','')
Insert into SpeciesTypes Values('Растения','')

/*Classes*/

Insert into Classes Values('Пиявки','HIRUDINEA','', 1)
Insert into Classes Values('Максилопода', 'MAXILOPODA','', 1)
Insert into Classes Values('Высшие ракообразные', 'CRUSTACEA','', 1)

Insert into Classes Values('Плауновидные', 'LYCOPODIOPSIDA','', 2)
Insert into Classes Values('Полушниковидные', 'ISOЁTOPSIDA','', 2)
Insert into Classes Values('Хвощевидные', 'EQUISETOPSIDA','', 2)

select * from Classes

/*Orders*/

Insert into Orders Values('Бесхоботные пиявки', 'ARHYNCHOBDELLIDA','', 1)
Insert into Orders Values('Веслоногие', 'COPEPODA','', 2)
Insert into Orders Values('Мизиды', 'MYSIDACEA','', 3)
Insert into Orders Values('Плауны', 'LYCOPODIALES','', 4)
Insert into Orders Values('Полушники', 'ISOЁTALES','', 5)
Insert into Orders Values('Хвощи', 'EQUISETALES','', 6)

Insert into Orders Values('Бокоплавы', 'AMPHIPODA','', 3)


select * from Orders

/*Species*/

/*Животные*/
INSERT INTO Species VALUES('Медицинская пиявка', 'Hirudo medicinalis', 'Медычная п`яўка', 2,
'Медици́нская пия́вка — вид кольчатых червей из подкласса пиявок, наиболее часто применяемый в Европе и России с медицинскими целями. Паразит, питающийся кровью человека и животных, полезные свойства которого известны людям с древнейших времён', 'Hirudo medicinalis.webp',  1)
INSERT INTO Species VALUES('Длиннохвостый лимнокалянус', 'Limnocalanus macrurus', 'Доўгахвосты лiмнакалянус', 3,
'Один из крупных представителей планктонных пресноводных копепод. Длина тела взрослых особей в озерах Беларуси 1,6 -2,2 мм. Туловище состоит из 3 отделов: головного (цефалона), грудного (торакса), которые образуют головогрудь (цефалоторакс), и брюшного (абдомен). На конце абдомена две каудальные ветви с 5 оперенными щетинками. Головогрудь состоит из 5 сегментов, на которых размещены: одна пара длинных 25 -ти членистых антенн, 5 пар ротовых конечностей и 5 пар плавательных ног. Строение пятой пары плавательных ног служит основным признаком при определении вида. Абдомен намного уже головогруди и состоит из 3 -х сегментов у самки и пяти сегментов у самца. Каудальные ветви более чем в два раза длиннее последнего сегмента брюшка.','Limnocalanus macrurus.jpg', 2)
INSERT INTO Species VALUES('Озерная эвритемора', 'Eurytemora lacustris', 'Азёрная эўрытэмора', 4,
'Один из двух представителей семейства в фауне республики. Длина тела взрослых особей в водоемах Беларуси от 1,5 до 1,7 мм. Туловище состоит из 3 отделов: головного (цефалона), грудного (торакса), слитых в головогрудь (цефалоторакс), и брюшного (абдомен). На конце абдомена две каудальные ветви с 5 оперенными щетинками. Головогрудь состоит из 5 сегментов, на которых размещены: пара длинных 25 -тичленистых антеннул, 5 пар ротовых конечностей и 5 пар плавательных ног. По внешнему виду похожа на лимнокалянуса, но отличается строением пятой пары плавательных ног и прикрепленным к абдомену самки яйцевым мешком.', 'Eurytemora lacustris.jfif', 2)
INSERT INTO Species VALUES('Реликтовая мизида', 'Mysis relicta Loven', 'Рэлiктавая мiзiда', 4,
'По внешнему виду напоминает маленьких креветок. Тело вытянуто в длину, глаза на стебельках, голова и грудь покрыты хитиновым карапаксом, брюшко тонкое и заканчивается хвостовым веером, состоящим из пластинок тельсона, по краям которого расположены двуветвистые уроподы. Общая длина тела рачка 8 -16 мм.','Mysis relicta Loven.jpg', 3)
 


 /*Растения*/
 
INSERT INTO Species VALUES('Ликоподиелла заливаемая', 'Lycopodiella inundata (L.) Holub', 'Лiкападыела залiўная', 4,
'Плауно́к залива́емый, или Ликоподие́лла заливаемая, — многолетнее растение, вид рода Плаун семейства Плауновые', 'Lycopodiella inundata (L.) Holub.jpg', 4)
INSERT INTO Species VALUES('Баранец обыкновенный', 'Huperzia selago (L.) Bernh. ex Schrank et C. Mart.', 'Баранец звычайны', 4,
'Баране́ц обыкнове́нный, плау́н-баранец, или гупе́рция баранец, — травянистое растение; вид рода Баранец семейства Плауновые. Род Huperzia иногда выделяют в особое семейство Hyperziaceae Rothm','Lycopodium_selago.jpg', 4)

INSERT INTO Species VALUES('Полушник озёрный', 'Isoёtes lacustris L.', 'Палушнiк азёрны', 3,
'Многолетнее вечнозеленое водное разноспоровое растение с клубневидным корневищем, от которого пучком отходят многочисленные корни. Укороченный стебель скрыт в земле. Листья многочисленные, жесткие, тёмно-зелёные, шиловидные, разделяются на стерильные (внутренние) и фертильные (наружные с расширенным основанием, где находятся макро- и микроспорангии). Мегаспоры бугорчато-морщинистые. Сперматозоиды многожгутиковые.','Isoёtes lacustris L..jpg', 5)
INSERT INTO Species VALUES('Хвощ большой', 'Equisetum telmateia Ehrh.', 'Хвошч вялiкi', 1,
'Многолетнее споровое травянистое растение с длинным ветвистым ползучим корневищем и ребристым членистым стеблем высотой 25-120 см. Спороносные (весенние) стебли бурые, толстые, со стробилами длиной 3-8 см и влагалищами с 20-30 зубцами, неспороносные (летние) - зеленые, ветвистые, с большой центральной полостью; ветви простые, плотные, направленные косо вверх .', 'Equisetum telmateia Ehrh..jpg', 6)
 
 select * from Species

 INSERT INTO Roles VALUES('Admin', 'Администратор')
 INSERT INTO Accounts VALUES('a', 'a', 'a', 'a')
 INSERT INTO AccountRoles VALUES(2, 1)
 
 delete from Accounts
 /*test data*/	

 select * from AccountRoles

 
 select * from Accounts
 go
 INSERT INTO Observations VALUES(54.199362, 27.846251, GETDATE(), 'Здесь живет одно жывотное', 12, 1)
 INSERT INTO Observations VALUES(55.199362, 26.846251, GETDATE(), 'Хвощ', 15, 1)