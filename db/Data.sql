/*SpeciesType*/


Insert into SpeciesTypes Values('Животные','')
Insert into SpeciesTypes Values('Растения','')

/*Classes*/

/*Животные*/
Insert into Classes Values('Пиявки','Hirudinea','', 1)
Insert into Classes Values('Ракообразные', 'Crustacea','', 1)
Insert into Classes Values('Паукообразные', 'Arachnida','', 1)
Insert into Classes Values('Двупарноногие многоножки','Diplopoda','', 1)
Insert into Classes Values('Насекомые', 'Insecta','', 1)
Insert into Classes Values('Двустворчатые моллюски', 'Bivalvia','', 1)
Insert into Classes Values('Цефаласпидоморфы', 'Cephalaspidomorphi','', 1)
Insert into Classes Values('Лучеперые','Actinopterygii','', 1)
Insert into Classes Values('Амфибии', 'Amphibia','', 1)
Insert into Classes Values('Рептилии', 'Reptilia','', 1)
Insert into Classes Values('Птицы', 'Aves','', 1)
Insert into Classes Values('Млекопитающие', 'Mammalia','', 1)

 /*Растения*/
Insert into Classes Values('Плаунообразные', 'Lycopodiophyta','', 2)
Insert into Classes Values('Хвощеобразные', 'Equisetophyta','', 2)
Insert into Classes Values('Папоротникообразные', 'Polypodiophyta','', 2)
Insert into Classes Values('Голосеменные', 'Pinophyta (Gymnospermae)','', 2)
Insert into Classes Values('Покрытосеменных', 'Magnoliophyta (Angiospermae)','', 2)
Insert into Classes Values('Печеночники', 'Marchantiophyta','', 2)
Insert into Classes Values('Мхи', 'Briophyta','', 2)
Insert into Classes Values('Cине-зеленые водоросли', 'Cyanophyta','', 2)
Insert into Classes Values('Золотистые водоросли', 'Chrysophyta','', 2)
Insert into Classes Values('Диатомовые водоросли', 'Bacillariophyta','', 2)
Insert into Classes Values('Зеленые водоросли', 'Chlorophyta','', 2)
Insert into Classes Values('Харовые водоросли', 'Charophyta','', 2)
Insert into Classes Values('Красные  водоросли', 'Rhodophyta','', 2)
Insert into Classes Values('Лишайники', 'Lichenes','', 2)
Insert into Classes Values('Аскомикота', 'Ascomycota','', 2)
Insert into Classes Values('Базидиомикота', 'Basidiomycota','', 2)

select * from Classes

/*Orders*/

/*Животные*/
Insert into Orders Values('Бесхоботные пиявки', 'Arhynchobdellida','', 1)

Insert into Orders Values('Веслоногие', 'Copepoda','', 2)
Insert into Orders Values('Мизиды', 'Mysidacea','', 2)
Insert into Orders Values('Бокоплавы', 'Amphipoda','', 2)
Insert into Orders Values('Десятиногие', 'Decapoda','', 2)

Insert into Orders Values('Пауки', 'Araneae','', 3)

Insert into Orders Values('Гломериды', 'Glomerida','', 4)

Insert into Orders Values('Поденки', 'Ephemeroptera','', 5)
Insert into Orders Values('Стрекозы', 'Odonata','', 5)
Insert into Orders Values('Прямокрылые', 'Orthoptera','', 5)
Insert into Orders Values('Полужесткокрылые', 'Hemiptera','', 5)
Insert into Orders Values('Жесткокрылые', 'Coleoptera','', 5)
Insert into Orders Values('Бабочки', 'Lepidoptera','', 5)
Insert into Orders Values('Перепончатокрылые', 'Hymenoptera','', 5)

Insert into Orders Values('Перловицеподобные', 'Unionida','', 6)

Insert into Orders Values('Миногообразные', 'Petromyzontiformes','', 7)

Insert into Orders Values('Осетрообразные', 'Acipenseriformes','', 8)
Insert into Orders Values('Лососеобразные', 'Salmoniformes','', 8)
Insert into Orders Values('Корюшкообразные', 'Osmeriformes','', 8)
Insert into Orders Values('Карпообразные', 'Cypriniformes','', 8)

Insert into Orders Values('Хвостатые', 'Caudata','', 9)
Insert into Orders Values('Бесхвостые', 'Anura','', 9)

Insert into Orders Values('Черепахи', 'Testudines','', 10)
Insert into Orders Values('Чешуйчатые', 'Squamata','', 10)

Insert into Orders Values('Гусеобразные', 'Anseriformes','', 11)
Insert into Orders Values('Курообразные', 'Galliformes','', 11)
Insert into Orders Values('Гагарообразные', 'Gaviiformes','', 11)
Insert into Orders Values('Поганкообразные', 'Podicipediformes','', 11)
Insert into Orders Values('Аистообразные', 'Ciconiiformes','', 11)
Insert into Orders Values('Ястребообразные', 'Accipitriformes','', 11)
Insert into Orders Values('Соколообразные', 'Falconiformes','', 11)
Insert into Orders Values('Журавлеобразные', 'Gruiformes','', 11)
Insert into Orders Values('Ржанкообразные', 'Charadriiformes','', 11)
Insert into Orders Values('Совообразные', 'Strigiformes','', 11)
Insert into Orders Values('Ракшеобразные', 'Coraciiformes','', 11)
Insert into Orders Values('Дятлообразные', 'Piciformes','', 11)
Insert into Orders Values('Воробьинообразные', 'Passeriformes','', 11)

Insert into Orders Values('Рукокрылые', 'Chiroptera','', 12)
Insert into Orders Values('Хищные', 'Carnivora','', 12)
Insert into Orders Values('Грызуны', 'Rodentia','', 12)
Insert into Orders Values('Парнокопытные', 'Artiodactyla','', 12)

/*Растения*/
Insert into Orders Values('Плауновые', 'Lycopodiaceae','', 13)
Insert into Orders Values('Баранцовые', 'Huperziaceae','', 13)
Insert into Orders Values('Полушниковые', 'Isoёtaceae','', 13)

Insert into Orders Values('Хвощевые', 'Equisetaceae','', 14)

Insert into Orders Values('Ужовниковые', 'Ophioglossaceae','', 15)
Insert into Orders Values('Чистоустовые', 'Osmundaceae','', 15)
Insert into Orders Values('Многоножковые', 'Polypodiaceae','', 15)
Insert into Orders Values('Костенцовые', 'Aspleniaceae','', 15)
Insert into Orders Values('Пузырниковые', 'Cystopteridaceae','', 15)
Insert into Orders Values('Щитовниковые', 'Aspidiaceae','', 15)
Insert into Orders Values('Сальвиниевые', 'Salviniaceae','', 15)

Insert into Orders Values('Сосновые', 'Pinaceae','', 16)

Insert into Orders Values('Кувшинковые', 'Nymphaeaceae','', 17)
Insert into Orders Values('Лютиковые', 'Ranunculaceae','', 17)
Insert into Orders Values('Дымянковые', 'Fumariaceae','', 17)
Insert into Orders Values('Крапивные', 'Urticaceae','', 17)
Insert into Orders Values('Буковые', 'Fagaceae','', 17)
Insert into Orders Values('Березовые', 'Betulaceae','', 17)
Insert into Orders Values('Гвоздичные', 'Caryophyllaceae','', 17)
Insert into Orders Values('Зверобойные', 'Hypericaceae','', 17)
Insert into Orders Values('Повойничковые', 'Elatinaceae','', 17)
Insert into Orders Values('Фиалковые', 'Violaceae','', 17)
Insert into Orders Values('Крестоцветные', 'Brassicaceae (Cruciferae)','', 17)
Insert into Orders Values('Ивовые', 'Salicaceae','', 17)
Insert into Orders Values('Вересковые', 'Ericaceae','', 17)
Insert into Orders Values('Грушанковые', 'Pyrolaceae','', 17)
Insert into Orders Values('Ужовниковые', 'Ophioglossaceae','', 17)
Insert into Orders Values('Чистоустовые', 'Osmundaceae','', 17)
Insert into Orders Values('Многоножковые', 'Polypodiaceae','', 17)
Insert into Orders Values('Костенцовые', 'Aspleniaceae','', 17)
Insert into Orders Values('Пузырниковые', 'Cystopteridaceae','', 17)
Insert into Orders Values('Щитовниковые', 'Aspidiaceae','', 17)
Insert into Orders Values('Сальвиниевые', 'Salviniaceae','', 17)
Insert into Orders Values('Молочайные', 'Euphorbiaceae','', 17)
Insert into Orders Values('Волчеягодниковые', 'Thymelaeaceae','', 17)
Insert into Orders Values('Толстянковые', 'Crassulaceae','', 17)
Insert into Orders Values('Камнеломковые', 'Saxifragaceae','', 17)
Insert into Orders Values('Росянковые', 'Droseraceae','', 17)
Insert into Orders Values('Розоцветные', 'Rosaceae','', 17)
Insert into Orders Values('Бобовые', 'Fabaceae (Leguminosae)','', 17)
Insert into Orders Values('Рогульниковые', 'Trapaceae','', 17)
Insert into Orders Values('Аралиевые', 'Araliaceae','', 17)
Insert into Orders Values('Сельдереевые (Зонтичные)', 'Apiaceae (Umbelliferae)','', 17)
Insert into Orders Values('Санталовые', 'Santalaceae','', 17)
Insert into Orders Values('Ремнецветные', 'Loranthaceae','', 17)
Insert into Orders Values('Жимолостные', 'Caprifoliaceae','', 17)
Insert into Orders Values('Валериановые', 'Valerianaceae','', 17)
Insert into Orders Values('Ворсянковые', 'Dipsacaceae','', 17)
Insert into Orders Values('Горечавковые', 'Gentianaceae','', 17)
Insert into Orders Values('Вахтовые', 'Menyanthaceae','', 17)
Insert into Orders Values('Мареновые', 'Rubiaceae','', 17)
Insert into Orders Values('Бурачниковые', 'Boraginaceae','', 17)
Insert into Orders Values('Норичниковые', 'Scrophulariaceae','', 17)
Insert into Orders Values('Заразиховые', 'Orobanchaceae','', 17)
Insert into Orders Values('Пузырчатковые', 'Lentibulariaceae','', 17)
Insert into Orders Values('Подорожниковые', 'Plantaginaceae','', 17)
Insert into Orders Values('Яснотковые (Губоцветные)', 'Lamiaceae (Labiatae)','', 17)
Insert into Orders Values('Колокольчиковые', 'Campanulaceae','', 17)
Insert into Orders Values('Лобелиевые', 'Lobeliaceae','', 17)
Insert into Orders Values('Астровые (Сложноцветные)', 'Asteraceae (Compositae)','', 17)
Insert into Orders Values('Наядовые', 'Najadaceae','', 17)
Insert into Orders Values('Лилейные', 'Liliaceae','', 17)
Insert into Orders Values('Луковые', 'Alliaceae','', 17)
Insert into Orders Values('Орхидные', 'Orchidaceae','', 17)
Insert into Orders Values('Осоковые', 'Cyperaceae','', 17)


Insert into Orders Values('Паллавичиниевые', 'Pallaviciniaceae','', 18)
Insert into Orders Values('Юнгерманниевые', 'Jungermanniaceae','', 18)
Insert into Orders Values('Скапаниевые', 'Scapaniaceae','', 18)
Insert into Orders Values('Цефалозиевые', 'Cephaloziaceae','', 18)
Insert into Orders Values('Цефалозиелловые', 'Cephaloziellaceae','', 18)
Insert into Orders Values('Порелловые', 'Porellaceae','', 18)
Insert into Orders Values('Риччиевые', 'Ricciaceae','', 18)


Insert into Orders Values('Сфагновые', 'Sphagnaceae','', 19)
Insert into Orders Values('Андреевые', 'Andreaeaceae','', 19)
Insert into Orders Values('Левкобриевые', 'Leucobryaceae','', 19)
Insert into Orders Values('Дикрановые', 'Dicranaceae','', 19)
Insert into Orders Values('Поттиевые', 'Pottiaceae','', 19)
Insert into Orders Values('Цинклидотовые', 'Cinclidotaceae','', 19)
Insert into Orders Values('Меезиевые', 'Meesiaceae','', 19)
Insert into Orders Values('Ортотриховые', 'Orthotrichaceae','', 19)
Insert into Orders Values('Бриевые', 'Bryaceae','', 19)
Insert into Orders Values('Мниевые', 'Mniaceae','', 19)
Insert into Orders Values('Фонтиналисовые', 'Fontinalaceae','', 19)
Insert into Orders Values('Плагиотециевые', 'Plagiotheciaceae','', 19)
Insert into Orders Values('Энтодонтовые', 'Entodontaceae','', 19)
Insert into Orders Values('Неккеровые', 'Neckeraceae','', 19)
Insert into Orders Values('Брахитециевые', 'Brachytheciaceae','', 19)
Insert into Orders Values('Туидиевые', 'Thuidiaceae','', 19)
Insert into Orders Values('Амблистегиевые', 'Amblystegiaceae','', 19)

Insert into Orders Values('Ностоковые', 'Nostocaceae','', 20)

Insert into Orders Values('Динобриовые', 'Dinobryonaceae','', 21)

Insert into Orders Values('Фрагиляриевые', 'Fragillariaceae','', 22)
Insert into Orders Values('Навикуловые', 'Naviculaceae','', 22)
Insert into Orders Values('Цимбелловые', 'Cymbellaceae','', 22)
Insert into Orders Values('Сурирелловые', 'Surirellaceae','', 22)

Insert into Orders Values('Кладофоровые', 'Cladophoraceae','', 23)

Insert into Orders Values('Харовые', 'Characeae','', 24)
Insert into Orders Values('Нителловые', 'Nitellaceae','', 24)
Insert into Orders Values('Нителлопсиевые', 'Nitellopsidaceae Krassav.','', 24)

Insert into Orders Values('Порфиридиевые', 'Porphyridiaceae','', 25)
Insert into Orders Values('Батрахоспермовые', 'Batrachospermaceae','', 25)
Insert into Orders Values('Гильденбрандтиевые', 'Hildenbrandtiaceae','', 25)

Insert into Orders Values('Фисциевые', 'Physciaceae','', 26)
Insert into Orders Values('Кониоцибовые', 'Coniocybaceae','', 26)
Insert into Orders Values('Колемовые', 'Collemataceae','', 26)
Insert into Orders Values('Кладониевые', 'Cladoniaceae','', 26)
Insert into Orders Values('Пармелиевые', 'Parmeliaceae','', 26)
Insert into Orders Values('Рамалиновые', 'Ramalinaceae','', 26)
Insert into Orders Values('Умбиликариевые', 'Umbilicariaceae','', 26)
Insert into Orders Values('Ризокарповые', 'Rhizocarpaceae','', 26)
Insert into Orders Values('Лобариевые', 'Lobariaceae','', 26)
Insert into Orders Values('Пельтигеровые', 'Peltigeraceae','', 26)

Insert into Orders Values('Кудониевые', 'Cudoniaceae','', 27)
Insert into Orders Values('Дисциновые', 'Discinaceae','', 27)
Insert into Orders Values('Пиронематовые', 'Pyronemataceae','', 27)
Insert into Orders Values('Трюфелевые', 'Tuberaceae','', 27)
Insert into Orders Values('Анаморфные грибы', 'Аnamorphic fungi','', 27)

Insert into Orders Values('Агариковые', 'Аgaricaceae','', 28)
Insert into Orders Values('Гигрофоровые', 'Hygrophoraceae','', 28)
Insert into Orders Values('Лиофилловые', 'Lyophyllaceae','', 28)
Insert into Orders Values('Лисичковые', 'Cantherellaceae','', 28)
Insert into Orders Values('Паутинниковые', 'Cortinariaceae','', 28)
Insert into Orders Values('Клавариадельфовые', 'Clavariadelphaceae','', 28)
Insert into Orders Values('Спарассисовые', 'Sparassidaceae','', 28)
Insert into Orders Values('Фистулиновые (Печеночницевые)', 'Fistulinaceae','', 28)
Insert into Orders Values('Ганодермовые', 'Ganodermataceae','', 28)
Insert into Orders Values('Аурискальпиевые', 'Auriscalpiaceae','', 28)
Insert into Orders Values('Лахнокладиевые', 'Lachnocladiaceae','', 28)
Insert into Orders Values('Дождевиковые', 'Lycoperdaceae','', 28)
Insert into Orders Values('Геастровые', 'Geastraceae','', 28)
Insert into Orders Values('Мерипиловые', 'Meripilaceae','', 28)
Insert into Orders Values('Фомитопсисовые', 'Fomitopsidaceae','', 28)
Insert into Orders Values('Полипоровые', 'Polyporaceae','', 28)
Insert into Orders Values('Шизофилловые', 'Schizophyllaceae','', 28)
Insert into Orders Values('Ежовиковые', 'Hydnaceae','', 28)
Insert into Orders Values('Банкеровые', 'Bankeraceae','', 28)

select * from Orders

/*Species*/

/*Животные*/
INSERT INTO Species VALUES('Медицинская пиявка', 'Hirudo medicinalis', 'Медычная п`яўка', 2,
'Медициинская пияявка — вид кольчатых червей из подкласса пиявок, наиболее часто применяемый в Европе и России с медицинскими целями. Паразит, питающийся кровью человека и животных, полезные свойства которого известны людям с древнейших времён', 'Hirudo medicinalis.webp',  1)

INSERT INTO Species VALUES('Длиннохвостый лимнокалянус', 'Limnocalanus macrurus', 'Доўгахвосты лiмнакалянус', 3,
'Один из крупных представителей планктонных пресноводных копепод. Длина тела взрослых особей в озерах Беларуси 1,6 -2,2 мм. Туловище состоит из 3 отделов: головного (цефалона), грудного (торакса), которые образуют головогрудь (цефалоторакс), и брюшного (абдомен). На конце абдомена две каудальные ветви с 5 оперенными щетинками. Головогрудь состоит из 5 сегментов, на которых размещены: одна пара длинных 25 -ти членистых антенн, 5 пар ротовых конечностей и 5 пар плавательных ног. Строение пятой пары плавательных ног служит основным признаком при определении вида. Абдомен намного уже головогруди и состоит из 3 -х сегментов у самки и пяти сегментов у самца. Каудальные ветви более чем в два раза длиннее последнего сегмента брюшка.','Limnocalanus macrurus.jpg', 2)
INSERT INTO Species VALUES('Озерная эвритемора', 'Eurytemora lacustris', 'Азёрная эўрытэмора', 3,
'Один из двух представителей семейства в фауне республики. Длина тела взрослых особей в водоемах Беларуси от 1,5 до 1,7 мм. Туловище состоит из 3 отделов: головного (цефалона), грудного (торакса), слитых в головогрудь (цефалоторакс), и брюшного (абдомен). На конце абдомена две каудальные ветви с 5 оперенными щетинками. Головогрудь состоит из 5 сегментов, на которых размещены: пара длинных 25 -тичленистых антеннул, 5 пар ротовых конечностей и 5 пар плавательных ног. По внешнему виду похожа на лимнокалянуса, но отличается строением пятой пары плавательных ног и прикрепленным к абдомену самки яйцевым мешком.', 'Eurytemora lacustris.jfif', 2)

INSERT INTO Species VALUES('Реликтовая мизида', 'Mysis relicta Loven', 'Рэлiктавая мiзiда', 3,
'По внешнему виду напоминает маленьких креветок. Тело вытянуто в длину, глаза на стебельках, голова и грудь покрыты хитиновым карапаксом, брюшко тонкое и заканчивается хвостовым веером, состоящим из пластинок тельсона, по краям которого расположены двуветвистые уроподы. Общая длина тела рачка 8 -16 мм.','Mysis relicta Loven.jpg', 3)
 
INSERT INTO Species VALUES('Бокоплав Палласа', 'Pallassiola quadrispinosa', 'Бакаплаў Паласа', 3,
'Длина тела взрослых животных 10 -15 мм, сжато с боков и состоит из 18 сегментов, где различают 3 отдела: головной (цефалон), грудной (торакс) и брюшной (абдомен). На конце брюшного отдела расположена пластинка - тельсон. В отличие от понтопореи тельсон этого вида не расщеплен до основания, а имеет неглубокую выемку. На спинной стороне передних абдоминальных сегментов находятся 2 острых, направленных назад шипа.','Pallassiola quadrispinosa.jpg', 4)
INSERT INTO Species VALUES('Родственная понтопорея', 'Pontoporea affinis', 'Роднасная пантапарэя', 3,
'Длина рачка 8 -10 мм. Тело состоит из 18 сегментов: 4 головных и 14 туловищных и подразделяется на три отдела: головной, грудной и брюшной. Голова образована в результате слияния головных сегментов с первым грудным сегментом и несет ротовые придатки. На каждом сегменте груди и брюшка расположено по паре конечностей для удержания пищи, передвижения по поверхности грунта и в толще воды, а также дыхания. На заднем крае последнего сегмента расположена пластинка - тельсон, отличительной чертой которого является глубокая выемка, делящая его на 2 пластинки с 1 -3 шипиками на конце. Спинная сторона всех брюшных сегментов с короткими и тонкими волосками.','Pontoporea affinis.jpg', 4)

INSERT INTO Species VALUES('Широкопалый рак', 'Astacus astacus', 'Шыракапальцы рак', 3,
'вид десятиногих ракообразных из инфраотряда Astacidea. Распространён в пресных водоёмах на всей территории Европы. Начиная со второй половины XX века широкопалых раков вытесняет из естественных местообитаний другой вид пресноводных раков - Pacifastacus leniusculus, интродуцированный из Нового Света.','Astacus astacus.jpg', 5)

INSERT INTO Species VALUES('Паук сплавной большой', 'Dolomedes plantarius', 'Павук вялікі сплаўны', 3,
'Самцы достигают размеров 10—12 мм, самки — до 20 мм. У взрослых особей длина головогруди больше ее ширины. Головогрудь коричневая, с широкой желтой полосой вдоль боковых краев. Глаза расположены в два ряда: передний — в виде прямой, а задний — слабо изогнутой линии. Глаза заднего ряда значительно крупнее передних глаз. Хелицеры строго вертикальные с 4 зубцами. Брюшко овальное с 2 желтоватыми продольными линиями, расположенными с брюшной стороны. Длинные и толстые ноги с крупными шипами на бедрах, коленях, голенях и предлапках. Лапки и вершины предлапок снабжены скопулой (плотная щеточка волосков).','Dolomedes plantarius.jpg', 6)

INSERT INTO Species VALUES('Броненосец Связанный', 'Glomeris connexa', 'Браненосец звязаны', 4,
'Неморальный вид. В Беларуси единственный представитель рода. Тело покрыто 12 щитками с 17-19 парами ног. Длина тела 5-17 мм, ширина 2,5-8 мм, расцветка от светло- до темно-коричневой. На тергитах, за исключением первого и последнего, по 4 светлых пятна.','Glomeris connexa.jpg', 7)

INSERT INTO Species VALUES('Поденка щитовидная', 'Prosopistoma foliaceum', 'Аўсянік шчытападобны', 2,
'Поденки - одна из самых древних групп насекомых. Они появились более 300 млн. лет назад, в геологическую эпоху, называемую карбоном. Десятки отрядов животных возникли и вымерли за истекшие миллионы лет, а поденки сохранились. Они распространены на всем земном шаре, кроме немногих океанических островов.','Prosopistoma foliaceum.jpg', 8)

INSERT INTO Species VALUES('Булавобрюх кольчатый', 'Cordulegaster boltonii', 'Кардулегастр кольчаты', 2,
'Очень крупная стрекоза (длина брюшка 55 -60 мм): черная с ярко желтыми полосами и кольцами на груди и брюшке. Крылья прозрачные. Личинка красновато- коричневая со светлой головой. Длина тела 41 44 мм. Брюшко с мелкими черными пятнышками.','Cordulegaster boltonii.jpg', 9)
INSERT INTO Species VALUES('Дедка рогатый', 'Ophiogomphus cecilia', 'Дзедка рагаты', 4,
'Стрекоза средних размеров с длиной брюшка 37–39 мм. Глаза не соприкасаются друг с другом. Голова и грудь имеют жёлто-зелёную окраску с чёрными полосами. Брюшко чёрное с жёлтыми пятнами.','Ophiogomphus cecilia.jpg', 9)
INSERT INTO Species VALUES('Дозорщик-император', 'Anax imperator', 'Дазоршчык-імператар', 3,
'Грудь зелёная, с широкими чёрными полосами на швах. Крылья прозрачные, длиной 5 см. Крыловая пластинка контрастной серо-белой окраски. Ноги с длинными шипами, из которых в полёте складывается «корзиночка» для ловли насекомых. Брюшко у взрослого самца голубое, у самки зелёное или голубовато-зелёное, со сплошной чёрной зазубренной продольной полосой на спинной стороне. Глаза крупные, сине-зелёной окраски.','Anax imperator.jpg', 9)
INSERT INTO Species VALUES('Коромысло беловолосое', 'Brachytron pratense', 'Каромысел белавалосы', 3,
'Достаточно крупная стрекоза, пестрое тело которой покрыто густыми белыми волосами. Окраска самок этих насекомых состоит из синеватых пятен, расположенных на серовато – буром фоне окраски ее туловища, у самцов же эти пятна имеют ярко – желтый цвет. Эти стрекозы, длина тела которых доходит до 50 – 60 миллиметров, имеют характерное черное пятно в форме буквы «Т», расположенное в области их лба.','Brachytron pratense.jpg', 9)
INSERT INTO Species VALUES('Коромысло зеленое', 'Aeschna viridis', 'Каромысел зялёны', 3,
' стрекоза с Т-образным пятном на лбу. Ее бока окрашены в зеленый цвет, у самцов с двумя широкими зелеными полосами в передне-верхней части. Длина брюшка составляет 47-54 мм, крыльев 38-45 мм.','Aeschna viridis.jpg', 9)
INSERT INTO Species VALUES('Лютка сибирская', 'Sympecna paedisca', 'Лютка сібірская', 3,
'Лютка сибирская (Sympecma paedisca) обитает неподалёку от стоячих водоёмов. В апреле проходит спаривание. Самки откладывают яйца в листья водных растений. Развитие личинок длится три месяца. Питаются мелкими водными беспозвоночными. В году две генерации. Зимуют на стадии имаго.','Sympecna paedisca.jpg', 9)
INSERT INTO Species VALUES('Нехаления красивая', 'Nehalennia speciosa', 'Нехаленія прыгожая', 2,
'Самая маленькая стрекоза Беларуси (как и всего СНГ). Широкая голова, сверху вдвое шире своей длины. Лоб с острым поперечным краем спереди от антенн, в профиль выглядит заостренным. Затылок сверху темный, с узкой светлой дуговидной поперечной полосой, обычно голубой у обоих полов, но иногда желтоватой у самок.  Ноги черные или темно-серые. Брюшко сверху металлически блестящее, ярко-зеленое. Такого же цвета и грудь. Птеростигма узкая (равна 1 ячейке). Крылья прозрачные, с очень разреженным жилкованием, в покое держит сложенными. Крылья в покое не заходят на 5-й сегмент брюшка','Nehalennia speciosa.jpg', 9)
INSERT INTO Species VALUES('Стрелка зеленоватая', 'Coenagrion armatum', 'Стрэлка зеленаватая', 1,
'Широкая голова, сверху вдвое шире своей длины. Крылья прозрачные. Птеростигма узкая (равна 1 ячейке), светло-серая. Полосы на брюшке по бокам нет. Грудь снизу не черная. Задний край переднеспинки посредине вытянут назад. Лицо, глаза и доплечевая полоса зеленые или желтовато-зеленые. Ноги черные или темно-серые.','Coenagrion armatum.jpg', 9)

INSERT INTO Species VALUES('Зеленчук непарный', 'Chrysochraon dispar', 'Зелянчук няпарны', 3,
'Самец достигает 16-19 мм, а самка 22-30 мм в длину. Размах крыльев самца 9-11 мм, а самки 6,5-7 мм.','Chrysochraon dispar.jpg', 10)
INSERT INTO Species VALUES('Мечник короткокрылый', 'Conocephalus dorsalis', 'Мечнік караткакрылы', 4,
'Небольшой, стройный, с очень длинными усиками. Голова конусовидная, вершина темени широкая, лоб сильно скошен. Усики длиннее тела почти в 3 раза. Переднеспинка со слабой плечевой выемкой. Надкрылья и крылья короче брюшка (редко вполне развитые), чаще всего достигают лишь середины брюшка, очень редко более длинные. Вершина надкрыльев закругленная. Крылья значительно короче надкрылий. Пара отверстий тимпанального органа в форме узких щелей расположена в основании передних голеней. Церки самцов с сильным зубцом изнутри за серединой и со слегка загнутым вверх кончиком.','Conocephalus dorsalis.jpg', 10)
INSERT INTO Species VALUES('Мечник обыкновенный', 'Conocephalus discolor', 'Мечнік звычайны', 4,
'Небольшой, стройный, с очень длинными усиками, которые длиннее тела почти в 3 раза. Вершина темени широкая. Голова конусовидная, с сильно скошенным назад лбом. Переднеспинка с резкой плечевой выемкой. Надкрылья длиннее брюшка и имеют закругленную вершину, крылья длиннее надкрыльев (на 2-7 мм), заходят за задние бедра. Зеркальце правого надкрылья широкоовальное. Слуховые органы прикрытые, щелевидные','Conocephalus discolor.jpg', 10)

INSERT INTO Species VALUES('Водомерка сфагновая', 'Gerris sphagnetorum', 'Вадамер сфагнавы', 3,
'Обитает на поверхности водоемов. Хищник. Легко скользит по воде, чему способствуют густые щетинки, покрывающие кончики лапок. Зимует на суше. Предпочитает сфагновые болота.','Gerris sphagnetorum.jpg', 11)

INSERT INTO Species VALUES('Борос Шнейдера', 'Boros schneideri', 'Борас Шнэйдэра', 3,
'Развиваются под гнилой корой, реже — в легко отслаивающейся древесине как стоящих, так и упавших деревьев разных пород, особенно сосны, дуба и липы (3), живут также в берёзе, ольхе, иве, осине. Личинки бороса могут сопутствовать личинкам жуков-дровосеков и других подкоровых насекомых, но питаются преимущественно различными разлагающимися органическими остатками и грибами, растущими под корой деревьев. Цикл развития, скорее, 2-летний. Жуки отрождаются обычно в июле-августе, зимуют в щелях и трещинах коры. Зимуют жуки и личинки. В ЛОД вид найден под корой сосны в июне.','Boros schneideri.jpg', 12)
INSERT INTO Species VALUES('Бронзовка большая зеленая', 'Potosia aeruginosa', 'Бронзаўка вялікая зялёная', 4,
' Для многих видов данной группы характерна яркая окраска с металлическим блеском. Отличительным признаком являются вырезы по бокам надкрылий, через которые во время полёта выпускаются крылья, тогда как сами надкрылья остаются сложенными. Большинство видов распространено в тропиках. Жуки питаются цветками растений или вытекающими древесными соками, перезревшими и забродившими фруктами, могут выступать в роли опылителей','Potosia aeruginosa.jpg', 12)
INSERT INTO Species VALUES('Бронзовка мраморная', 'Liocola marmorata', 'Бронзаўка мармуровая', 4,
'Тело жуков преимущественно короткое или умеренно продолговато, окраска очень разнообразная, может быть с металлическим блеском. В ряде случаев окраска создаётся особыми выделениями, совершенно скрывающими основной фон. К металлическим окраскам (блестящим, матово-блестящим и жирно-блестящим) относят: зелёную различных оттенков (очень широко распространена среди представителей группы), синюю, фиолетовую, медно-красную, пурпурную, бронзовую и чёрную с металлическими оттенками.','Liocola marmorata.jpg', 12)
INSERT INTO Species VALUES('Бронзовка Фибера', 'Protaecia fieberi', 'Бронзаўка Фібера', 4,
'Длина тела 15—25 мм. Верх тела бронзового цвета с медным отливом, пигидий, нижняя сторона тела и ноги медно-красные, часто с синим или фиолетовым отливом, надкрылья несут на себе белые пятна. Тело не широкое, умеренно выпуклое, несколько суженное назад, надкрылья продолговатые. Голова в крупных точках. Переднеспинка поперечная, наиболее широкая у основания, суживающаяся кпереди','Protaecia fieberi.jpg', 12)
INSERT INTO Species VALUES('Восковик-отшельник', 'Osmoderma coriarium', 'Васкавік-пустэльнік', 3,
'Обыкновенный (пахучий) отшельник, или, как у нас принято его называть, восковик-отшельник, широко распространен в Европе, хотя и редок. Это повсеместно охраняемый реликт, дошедший из доледниковой эпохи. Восточная граница его ареала проходит по территории европейской части России. Здесь он встречается в центральных и южных областях, доходя до Волги.','Osmoderma coriarium.jpg', 12)
INSERT INTO Species VALUES('Восковик-пестряк изменчивый', 'Gnorimus variabilis', 'Васкавік-стракач зменлівы', 3,
'Вид приурочен к старым дубравам неморального типа. Встречается также в пойменных зарослях чёрной ольхи. Жуки найдены в условиях умеренного или сильного увлажнения. Личинка развивается в мертвой древесине лиственных пород, иногда - достаточно плотной. В лабораторных условиях личинки последнего возраста успешно кормились на пораженной бурой гнилью древесине дуба. Довольно крупные (длина 17-22 мм) жуки с широким телом. Жуки активны днем. ','Gnorimus variabilis.jpg', 12)
INSERT INTO Species VALUES('Жужелица блестящая', 'Carabus nitens', 'Жужаль бліскучы', 3,
'Вид жуков-жужелиц из подсемейства собственно жужелиц. Распространён в России и Европе (Австрии, Белоруссии, Бельгии, Великобритании, Германии, Дании, Ирландии, Латвии, Литве, Люксембурге, Молдавии, Нидерландах, Норвегии, Польше, Румынии, Украине, Финляндии, Франции, Чехии, Швеции, Швейцарии и Эстонии)[1]. Длина тела взрослых насекомых 12—16 мм','Carabus nitens.jpg', 12)
INSERT INTO Species VALUES('Жужелица замечательная', 'Carabus excellens', 'Жужаль цудоўны', 3,
'Отдельные таксоны, преимущественно на уровне подсемейств и триб, имеют характерную для них форму тела. Иногда форма тела сильно отличается от обычной для жужелиц: виды рода Omophron, обитающие на песчаных пляжах, своей округлой формой напоминают божьих коровок или некоторых чернотелок; живущие на стеблях трав представители родов Drypta, Demetrius и Odacantha имеют удлинённую, стеблевидную форму тела; для роющих видов из подсемейства Scaritinae, а также некоторых других групп, характерна шеевидная перевязка между переднетульем и задней частью тела, а также широкие, снабжённые зубцами передние голени. Своеобразна форма тела у видов из родов Cicindela, Elaphrus, Notiophilus и некоторые другие','Carabus excellens.jpg', 12)
INSERT INTO Species VALUES('Жужелица золотистоямчатая', 'Carabus clathratus', 'Жужаль залацістаямчаты', 3,
'Золотистоямчатая жужелица — крупная жужелица с длиной тела 21-36 мм. Окраска чёрная, верх с зеленоватым блеском. Надкрылья слабовыпуклые, с тремя рядами крупных золотистых ямок. В промежутках между рядами ямок высокие продольные кили. Боковой край надкрыльев вырезан перед вершиной ','Carabus clathratus.jpg', 12)
INSERT INTO Species VALUES('Жужелица Менетрие', 'Carabus menetriesi', 'Жужаль Ментрыё', 3,
'Длина тела 16-24 мм. Тело и ноги чёрные, голова, переднеспинка и надкрылья бронзовые или бронзово-черные, иногда с зелёным отливом. Антенны самца едва заходят вершиной за основание надкрылий. Переднеспинка уплощенная, посередине рассеянно-точечная. Надкрылья с выпуклыми, прерванными на цепочки бугорков первичными промежутками; третичные промежутки слабо заметны, представлены рядами мелких зернышек; тонкий киль между швом и первой цепочкой бугорков отсутствует, или имеется лишь его короткий зачаток на основании надкрылий','Carabus menetriesi.jpg', 12)
INSERT INTO Species VALUES('Жужелица окаймленная', 'Carabus marginalis', 'Жужаль аблямаваны', 2,
'Длина тела 20—26 мм. Надкрылья мелкозернистые, тёмно-фиолетового или сине-черного цвета с яркой золотисто-зелёной, реже огненно-красной краевой полоской, которая проходит и на переднеспинке. Переднеспинка с уплощёнными и отогнутыми боковыми краями и выступающими за основание в виде лопастей задними углами.','Carabus marginalis.jpg', 12)
INSERT INTO Species VALUES('Жужелица путаная', 'Carabus intricatus', 'Жужаль блытаны', 3,
'Длина жука 20—34 мм. Окраска черно-синяя или фиолетовая, края надкрылий с яркой синей, зелёной или медно-красной окантовкой.','Carabus intricatus.jpg', 12)
INSERT INTO Species VALUES('Жужелица фиолетовая', 'Carabus violaceus', 'Жужаль фіялетавы', 4,
'Взрослые насекомые длиной 20—34 мм. Взрослые жуки не летают. На надкрыльях имеются мелкие зёрнышки и синяя, фиолетовая или пурпурная каёмка.','Carabus violaceus.jpg', 12)
INSERT INTO Species VALUES('Жужелица шагреневая', 'Carabus coriaceus', 'Жужаль шчыгрынавы', 4,
'Длина тела взрослых насекомых 30—40 мм. Взрослые жуки имеют одноцветную чёрную окраску, матовые, их надкрылья в грубых морщинках.','Carabus coriaceus.jpg', 12)
INSERT INTO Species VALUES('Жук-олень', 'Lucanus cervus', 'Жук-алень', 2,
'Крупный жук из рода Lucanus в составе семейства рогачей. Является самым крупным жуком, обитающим на территории Европы: отдельные особи самцов номинативного подвида могут достигать длины до 86—91 мм при средней длине самцов 70—74 мм.','Lucanus cervus.jpg', 12)
INSERT INTO Species VALUES('Ильник неизвестный', 'Rhantus incognitos', 'Глейнік невядомы', 3,
'Один из 9 видов рода, зарегистрированных в Беларуси. Тело жука (10-11 мм) широкоовальное, кпереди и кзади одинаково сильно суженное, блестящее, красновато-желтое, низ тела желто-бурый. Усики и ноги красновато-желтые. Черные крапинки надкрылий широкие, сливающиеся. Основание переднеспинки прямое, или самое большее, со слабыми выемками у задних углов. Боковой рубчик на переднеспинке толстый. Голова с зачерненным теменем. Верх тела личинки желто-коричневый, с явственным рисунком.','Rhantus incognitos.jpg', 12)
INSERT INTO Species VALUES('Красотел бронзовый', 'Calosoma inquisitor', 'Красацел бронзавы', 4,
'Жук длиной 16—28 мм. Окраска верха тёмно-бронзовая или чёрно-зелёная, иногда медно-зелёная или синяя, всегда с металлическим отливом. Боковые края переднеспинки и надкрылий обычно более яркие. Ноги длинные, чёрные.','Calosoma inquisitor.jpg', 12)
INSERT INTO Species VALUES('Пестряк зеленый', 'Gnorimus nobilis', 'Стракач зялёны', 3,
'Жук длиной 14—20 мм с относительно суженной назад переднеспинкой и относительно широкими, с закругленными боками надкрыльями. Окраска верхней стороны очень изменчивая: от металлически-синего, зелёного до тёмно-медного цвета. Нижняя сторона от светло-коричневого до чёрного цвета. (К). Переднеспинка без белых пятен либо с 2—4 маленькими белыми пятнышками. ','Gnorimus nobilis.jpg', 12)
INSERT INTO Species VALUES('Плавунец широчайший', 'Dytiscus latissimus', 'Плывунец найшырэйшы', 3,
'Длина тела взрослых насекомых 36—45 мм. Главным отличительным признаком от других представителей своего рода является очень широкое и плоское тело оливкового цвета, с широкой жёлтой каймой по бокам переднеспинки и надкрылий.','Dytiscus latissimus.jpg', 12)
INSERT INTO Species VALUES('Плоскотелка красная', 'Cucujus cinnaberinus', 'Пласкацел чырвоны', 4,
'Вид жуков-плоскотелок. Длина тела взрослого насекомого (имаго) 11—15 мм. Тело красное. Мандибулы, усики, узкий боковой край переднеспинки, большая часть грудной стороны тела и ноги чёрные. Живут под корой дуба (особенно) и клёна, реже хвойных.','Cucujus cinnaberinus.jpg', 12)
INSERT INTO Species VALUES('Поводень двухполосный', 'Graphoderus bilineatus', 'Павадзень двухпалосны', 3,
'','Graphoderus bilineatus.jpg', 12)
INSERT INTO Species VALUES('Ризод желобчатый', 'Rhysodes sulcatus', 'Рызодэс лотакны', 2,
'','Rhysodes sulcatus.jpg', 12)
INSERT INTO Species VALUES('Рогачик скромный', 'Ceruchus chrysomelinus', 'Рагачык сціплы', 4,
'Сапроксилофаг. Характерно обитание вида только в ненарушенных или очень слабо нарушенных, перестойных лесных массивах. Жуки живут сообществами, при этом в бревнах, где они развиваются, одновременно можно найти личинок различных возрастов и имаго. Личинка развивается 2-3 года в упавших, пораженных красно-бурой или белой гнилью стволах хвойных или лиственных пород деревьев','Ceruchus chrysomelinus.jpg', 12)
INSERT INTO Species VALUES('Слизнеед бороздчатый', 'Chlaenius sulcicollis', 'Слімажэр баразнаваты', 2,
'Длина жука 13-15 мм. Верх черный со свинцовым блеском. Голова без зеленого блеска. Усики и ноги черные. Переднеспинка по бокам валикообразно окаймлена, с тремя широкими продольными вдавлениями, из которых боковые кпереди укорочены. Отросток переднегруди не окаймлен, пунктирован. Все промежутки надкрылий более или менее одинаково густо точечные и покрыты тонкими волосками, шов не приподнят и не блестящий.','Chlaenius sulcicollis.jpg', 12)
INSERT INTO Species VALUES('Слизнеед ребристый', 'Chlaenius costulatus', 'Слімажэр рабрысты', 2,
'Длина жука 11-12,5 мм. Верх металлически-зеленый, бронзовый или медный, блестящий. Усики и ноги черные. Переднеспинка по бокам валикообразно окаймлена, с 3 гладкими продольными килями, промежутки между ними матовые. Надкрылья с 3 гладкими выпуклыми ребрами каждое.','Chlaenius costulatus.jpg', 12)
INSERT INTO Species VALUES('Слизнеед четырехбороздчатый', 'Chlaenius quadrisulcatus', 'Слімажэр чатырохбаразнаваты', 1,
'','Chlaenius quadrisulcatus.jpg', 12)
INSERT INTO Species VALUES('Стафилин волосатый', 'Emus hirtus', 'Стафілін валасаты', 4,
'Длина тела жука достигает до 28 мм. Тело жуков сверху чёрное, густо и явственно пунтированное, покрыто густым волосяным покровом; низ тела и крылья фиолетовые. Волоски оранжевого, рыже-золотистого или буро-золотистого цвета покрывают голову, грудь (кроме заднего края) и последние три брюшных сегмента. Надкрылья покрыты короткими серебристыми волосками, кроме основания надкрылий; иногда надкрылья бывают с двумя или тремя чёрными точками, образующими прерывистую линию. Остальные отделы тела менее густо покрыты волосками.','Emus hirtus.jpg', 12)
INSERT INTO Species VALUES('Усач дубовый большой', 'Cerambyx cerdo', 'Вусач дубовы вялікі', 3,
'Длина тела 35—55 мм. Жук смоляно блестящий. Окраска тела чёрно-коричневая с более светлыми и красноватыми вершинами надкрылий. Низ и ноги в коротких сероватых волосках. Переднеспинка в грубых морщинках с острыми боковыми буграми. Надкрылья шагренированы. Усики у самцов в 1,4—1,7 раза длиннее тела, у самок равны ему.','Cerambyx cerdo.jpg', 12)
INSERT INTO Species VALUES('Усач Келера', 'Purpuricenus kaehleri', 'Вусач Келера', 4,
'Длина тела 9 — 22 мм. Переднеспинка в очень редких волосках, почти голая, покрыта грубой пунктировкой, имеет хорошо развитый острый бугорок по боковому краю. Тело черное. Надкрылья красные с большим черным пятном. Вершина надкрылий обычно красная, в плоской и довольно правильной пунктировке, промежутки между точками образуют здесь довольно правильную ячеистую сеть морщин; черное пятно надкрылий, по крайней мере в своей задней половине, матовое.','Purpuricenus kaehleri.jpg', 12)
INSERT INTO Species VALUES('Усач косматогрудый', 'Tragosoma depsarium', 'Вусач калматагруды', 2,
'Вид жуков-усачей из подсемейства Prioninae. Личинки развиваются около трёх лет в поваленных стволах хвойных деревьев (сосен и елей), питаясь разлагающейся древесиной. Взрослые насекомые длиной 16—35 мм встречаются с июня по август.','Tragosoma depsarium.jpg', 12)
INSERT INTO Species VALUES('Усач-плотник', 'Ergater faber', 'Вусач-цясляр', 4,
'Длина тела 23—60 мм. Тело смоляно-бурое (самец) или красновато-бурое (самка), слегка блестящее. Усики у самцов несколько длиннее тела, у самки более или менее заходят за середину надкрылий. 1-й членик очень короткий, но не достигает основания переднеспинки по длине равен 4-му и 5-му вместе. Голова крупно и густо морщинистая, верхние челюсти у самца изогнуты несколько сильнее, их внутренний зубец развит сильнее, чем у самки.','Ergater faber.jpg', 12)

INSERT INTO Species VALUES('Аполлон черный', 'Parnassius mnemosine', 'Апалон чорны', 3,
'Средних размеров, размах крыльев 50—60 мм. Крылья белые с черными пятнами. Внешний край переднего крыла с довольно широкой полупрозрачной полосой. Внутренние края задних крыльев черные.','Parnassius mnemosine.jpg', 13)
INSERT INTO Species VALUES('Бархатница ахине', 'Lopinga achine', 'Краявочка прыдарожная', 3,
'Длина переднего крыла 19—29 мм. Размах крыльев бабочки от 45 до 55 миллиметров. Крылья сверху и снизу серо-коричневые, с круглыми разного размера тёмным пятнами в жёлтых ободках на внешнем поле. Снизу крыльев вдоль внешнего края жёлтые линии с чёрной между ними. Половой диморфизм слабо выражен.','Lopinga achine.jpg', 13)
INSERT INTO Species VALUES('Бархатница петербуржская', 'Lasiommata petropolitana', 'Краявочка пецярбургская', 1,
' Переднее крыло сверху буро-коричневое, с крупным глазчатым пятном на желтовато-охристом поле у вершины; иногда рядом с этим пятном располагаются 1—2 мелких добавочных глазка. Андрокониальное поле слабо выделяется на тёмном поле крыла. Вдоль внешнего края крыла у некоторых экземпляров располагается несколько нечётких, слабо контрастирующих с фоном ржаво-коричневых пятен. Заднее крыло сверху коричнево-бурое, с 3—4 глазчатыми пятнами в коричневой оторочке и тонкой, изломанной тёмной постдискальной линией, идущей поперёк жилок; такие же тёмные линии можно рассмотреть в дискальной области переднего крыла сверху.','Lasiommata petropolitana.jpg', 13)
INSERT INTO Species VALUES('Бархатница ютта', 'Oeneis jutta', 'Сатыр тундравы', 4,
'Длина переднего крыла 23—32 мм. Размах крыльев 45—60 мм. Крылья сверху бурые, на внешнем поле сверху чёрные глазки-точки в желтоватых ободках, которые иногда расплываются и сливаются, на передних крыльях три — четыре глазка, на задних — 1—2 или их нет совсем. В ячейке M2—M3 глазок отсутствует, редко здесь находится небольшая точка.','Oeneis jutta.jpg', 13)
INSERT INTO Species VALUES('Бражник прозерпина', 'Proserpinus proserpina', 'Бражнік празэрпіна', 2,
'Размер 17–22 мм. Крылья серо-охристые или светло-коричневые. Передние крылья с тёмной дискальной перевязью; внешний край с тремя глубокими вырезками. Задние крылья желтоватые, с тёмной каймой.','Proserpinus proserpina.jpg', 13)
INSERT INTO Species VALUES('Голубянка Алексис', 'Glaucopsyche alexis', 'Блакітніца Алексіс', 3,
'Длина переднего крыла 13-15 мм. Крылья самца сверху фиолетово-синие с узкой тёмной внешней каймой, у самки бурые. С нижней стороны в средней части задних крыльев — изогнутый ряд мелких чёрных пятен (иногда редуцированный), в прикорневой половине задних крыльев напыление из блестящих зеленовато-голубых чешуек ','Glaucopsyche alexis.jpg', 13)
INSERT INTO Species VALUES('Голубянка Алькон', 'Maculinea alcon', 'Блакітніца Алькон', 3,
'Длина переднего крыла — 18-21 мм. Особенности окраски — крылья самца сверху фиолетово-синие без тёмных пятен, самки — буро-коричневые без тёмных пятен.','Maculinea alcon.jpg', 13)
INSERT INTO Species VALUES('Голубянка донниковая', 'Polyommatus dorylas', 'Блакітніца баркунавая', 1,
'Bид бабочек из семейства голубянки. Размах крыльев 28-36 мм.','Polyommatus dorylas.jpg', 13)
INSERT INTO Species VALUES('Голубянка Телей', 'Phengaris teleius', 'Блакітніца Тэлей', 3,
'Длина переднего крыла 17-20 мм. Крылья самца сверху синие с довольно широкой тёмной каймой по внешнему краю и рядом мелких чёрных пятен; крылья самки сильно затемнены. Нижняя сторона крыльев сероватая с изогнутым рядом чёрных пятен в светлых ободках.','Phengaris teleius.jpg', 13)
INSERT INTO Species VALUES('Голубянка черноватая', 'Phengaris nausithous', 'Блакітніца чарнаватая', 3,
'Длина передних крыльев 15 — 19 мм. Крылья сверху бурые, с фиолетовым налетом и рядом тёмных пятен, располагающемся у самца на переднем и заднем крыльях, у самки — лишь на переднем. Снизу крылья коричневато-бурые с изогнутым рядом дискальных чёрных пятен в белых ободках. Бахромка крыльев тёмная.','Phengaris nausithous.jpg', 13)
INSERT INTO Species VALUES('Голубянка эроидес', 'Polyommatus eroides', 'Блакітніца эроідэс', 1,
'Голова с глазами, которые густо покрыты торчащими волосками. Булава усиков состоит из 13—14 члеников. Бахрома крыльев белая или бурая. Половой диморфизм выражен у всех представителей рода (сверху самцы синие, самки бурые или сине-бурые). В центральной ячейке с нижней стороны крыльев у большинства представителей рода есть одно простое пятно. Чёрные пятна субмаргинального ряда на исподе задних крыльев пятен без серебристых чешуек.','Polyommatus eroides.jpg', 13)
INSERT INTO Species VALUES('Дриада', 'Minois dryas', 'Матыль-дрыяда', 4,
'','Minois dryas.jpg', 13)
INSERT INTO Species VALUES('Зеринтия обыкновенная', 'Zerynthia polyxena', 'Зарынція звычайная', 1,
'Размах крыльев достигает 46-50 мм. Основной цвет палевый, реже охристый. Наружный край преимущественно черный, прерывается двумя рядами дуговых пятен. У взрослых бабочек рисунок очень индивидуален и практически не повторяется. Чаще всего на верхней части первой пары крыльев располагаются заметные красные и белые пятна. Красных пятен может быть от трех до пяти. По их форме и количеству определяются 11 известных на сегодняшний день подвидов.','Zerynthia polyxena.jpg', 13)
INSERT INTO Species VALUES('Желтушка ракитниковая', 'Colias myrmidone', 'Жаўтушка зяноўная', 4,
'Длина переднего крыла 23—28 мм. Размах крыльев 45—55 мм. Основной фон крыльев оранжевый либо тёмно-жёлтый. Нижняя сторона крыльев у самца — ярко-жёлтый, у самки — жёлтый. Передние крылья на вершине дискальной ячейки с одиночными чёрными пятнышками. Задние крылья самца имеют фиолетовый отлив. У обоих полов по краю крыльев проходит чёрная кайма, у самки — более широкая и несущая желтые прикраевые пятнышки.','Colias myrmidone.jpg', 13)
INSERT INTO Species VALUES('Желтушка торфяниковая', 'Colias palaeno', 'Жаўтушка тарфянікавая', 4,
'Длина переднего крыла 20—28 мм. Размах крыльев 40—50 мм. Окраска крыльев самцов ярко-жёлтая, с насыщенной чёрной каймой. Окраска самки белесая с серо-чёрной каймой, не разделенной светлыми пятнами. На задних крыльях сверху одинарное, плохо выраженное на общем фоне беловатое дисковидное пятно. Дискальное пятно передних крыльев плохо или вообще не выражено, часто просветлено.','Colias palaeno.jpg', 13)
INSERT INTO Species VALUES('Медведица Геба', 'Ammobiota hebe', 'Мядзведзіца Геба', 1,
'Длина переднего крыла 19—24 мм. Размах крыльев 45-60 мм. Передние крыла обрамлены красно-коричневым поперечными белыми или желтоватыми полосками, внешние две из которых образуют подобие буквы «Н». Задние крылья самцов розовой окраски, самок — карминно-красные с чёрной окантовкой, и двумя крупными чёрными пятнами вдоль внешнего края и несколькими гораздо более мелкими чёрными пятнами в центре. Окраска крыльев является весьма изменчивой. Голова и грудь чёрного цвета, тыльный край «воротничка» красный. Брюшко массивное, красной окраски, на верхней стороне с одной чёрной, расширяющейся к его концу линией. Последние сегменты брюшка чёрной окраски.','Ammobiota hebe.jpg', 13)
INSERT INTO Species VALUES('Медведица Метельки', 'Rhyparioides metelkana', 'Мядзведзіца Мяцелькі', 1,
'Длина переднего крыла 17-22 мм. Передние крылья самца желтые с продольным коричневым булавовидным штрихом по задней жилке центральной ячейки и несколькими черными точками на внешнем поле и ближе к основанию. Передние крылья самки - как у самца, но жилки опылены коричневыми чешуйками. Задние крылья обоих полов розовые или красные, с черными пятнами на внешнем поле, поперечной жилке, а иногда и по жилкам, ограничивающим центральную ячейку. Тело сверху желтое, брюшко сверху и по бокам с продольными рядами черных точек. Усики самца двугребенчатые, самки - двузубчатые.','Rhyparioides metelkana.jpg', 13)
INSERT INTO Species VALUES('Медведица сельская', 'Arctia villica', 'Мядзведзіца вясковая', 2,
'Размах крыльев 50—65 мм. Длина переднего крыла 25—30 мм. Окраска верхней стороны крыльев чёрно-белая с неправильным извилистым рисунком, отличающийся большой вариабельностью. Верхняя сторона задних крыльев жёлтая с черными пятнами. Голова и грудь тёмные, красно-бурые, брюшко красное, с чёрными точками по центру. Бабочкам свойствен полиморфизм.','Arctia villica.jpg', 13)
INSERT INTO Species VALUES('Медведица-хозяйка', 'Pericallia matronula', 'Мядзведзіца-гаспадыня', 4,
'Длина переднего крыла 37—43 мм. Размах крыльев 65—86 мм[4]. Окраска крыльев изменчива. Передние крылья темно-буро-коричневые или тёмно-оливково-бурые с цепочкой из 4—5 больших и маленьких угловатых бледно-жёлтых или жёлтых пятен вдоль переднего края крыла. Такого же цвета не большое пятно обычно располагается также во внутреннем углу крыла. Задние крылья оранжевого, светло-оранжевого или жёлтого цвета с двумя рядами крупных черных пятен, часто сливающихся и образующих две перевязи. Голова сверху коричневого цвета, снизу — красного.','Pericallia matronula.jpg', 13)
INSERT INTO Species VALUES('Металловидка кровохлебковая', 'Diachrysia zosimi', 'Металавідка крывасмокавая', 3,
'Размах крыльев составляет 32-35 мм. Верх передних крыльев металлически-блестящий, зеленовато-золотистый с шелковисто-серыми краями, полосками и пятнами. Задние крылья серые, одноцветные, со светлой срединной полоской. Бахромка серая, одноцветная. Брюшко серое. Усики нитевидные. Бабочки ведут сумеречный образ жизни.','Diachrysia zosimi.jpg', 13)
INSERT INTO Species VALUES('Многоглазка голубоватая', 'Lycaena helle', 'Мнагавочка блакітнаватая', 2,
'Бабочки с длиной передних крыльев 12-15 мм. Окраска верхней стороны крыльев самца рыжеватая с ярким фиолетовым блеском, у самки — рыжеватая с черными точками и синеватой перевязью по краю. Нижняя сторона задних крыльев темно-коричневая с рядом оранжевых пятен, в субмаргинальной области доходящих до вершины крыла, и ровным рядом черных точек параллельно краю. Основной цвет нижней стороны передних крыльев ярко-рыжий. Снизу передних и задних крыльев черные предкраевые точки окаймлены резкой белой оторочкой, часто слитой в единую полосу, а на задних крыльях — представленной белыми скобочками.','Lycaena helle.jpg', 13)
INSERT INTO Species VALUES('Орденская лента розовая', 'Catocala pacta', 'Стужачніца ружовая', 4,
'Передние крылья 23–28 мм, пепельно-серые, без тёмного штриха у корня. Задние крылья ярко-розовые, с широкой чёрной внешней каймой и дуговидно изогнутой дискальной перевязью. От других орденских лент легко отличается розовым цветом брюшка.','Catocala pacta.jpg', 13)
INSERT INTO Species VALUES('Перламутровка альпийская', 'Clossiana thore', 'Перламутраўка альпійская', 1,
'Один из наиболее крупных представителей рода. Длина переднего крыла 18-25 мм. Верхняя сторона крыльев охристо-оранжевая с контрастными чёрными жилками, поперечными чёрными перевязями в прикорневой части крыльев и рядами округлых пятен чёрного цвета на внешней половине. Нижняя сторона передних крыльев имеет сходную окраску, но с гораздо менее выраженным чёрным рисунком. Нижняя сторона задних крыльев желтовато-рыжая со срединной охристо-жёлтой перевязью и не полным рядом белёсых пятен кнаружи от нее. Наружная половина крыльев имеет два ряда бурых пятен. Пятна в прикраевом ряду имеют округлую форму, краевого — лунчатые с голубыми разводами снаружи.','Clossiana thore.jpg', 13)
INSERT INTO Species VALUES('Перламутровка фрейя', 'Clossiana freja', 'Перламутраўка фрэя', 1,
'бабочка из семейства Nymphalidae с циркумбореальным распространением. Она населяет верховые болота и тундру. Её ареал включает Северную Европу к северу от 60° с. ш., иногда и более южные местонахождения на Урале, в Сибири, на Дальнем Востоке России, в горах Северной Монголии и Хоккайдо, а также Северную Америку, где ареал этого вида в Скалистых горах доходит до 35° с.ш.','Clossiana freja.jpg', 13)
INSERT INTO Species VALUES('Перламутровка фригга', 'Clossiana frigga', 'Перламутраўка фрыга', 1,
'Длина переднего крыла 18 — 26 мм. Размах крыльев 34—37 мм. Основной тон окраски красновато-охристый. На нём находятся поперечные ряды небольших круглых чёрных пятен, вдоль края крыльев и в прикорневой части ломаные линии, тёмные участки. Снизу передние крылья светлее, задние крылья красно-коричневые в прикорневой части, с ломаной перевязью из белых и жёлтых пятен посередине. На внешней части крыльев широкая охристая перевязь с розовато-фиолетовым отливом и рядом слабо выраженных пятен в ячейках.','Clossiana frigga.jpg', 13)
INSERT INTO Species VALUES('Пеструшка таволговая', 'Neptis rivularis', 'Стракатка вятроўнікавая', 3,
'Длина переднего крыла имаго — 18—29 мм. Верх крыльев от темно-коричневого до черного, со множеством крупных и более мелких белых пятен. Испод коричневый, с белыми пятнами. Самки крупнее самцов и несут на крыльях более широкие белые перевязи.','Neptis rivularis.jpg', 13)
INSERT INTO Species VALUES('Пяденица красивая', 'Chariaspilates formosaria', 'Пядзенік прыгожы', 3,
'Длина переднего крыла 18—22 мм. Размах крыльев самцов 31—37 мм, самок — 38—43 мм. Основной фон верхней стороны передних крыльев золотисто-желтого цвета, с мелкими коричневатыми точками. От вершины к середине нижнего края проходит тёмная косая линия, отороченная коричневатым напылением по всей длине снаружи и серебристым напылением изнутри. Передний и наружный края переднего крыла с серовато-серебристым напылением.','Chariaspilates formosaria.jpg', 13)
INSERT INTO Species VALUES('Пяденица стрельчатая', 'Gagiodes sagittata', 'Пядзенік стрэлкавы', 2,
'Длина переднего крыла 12—15 мм. Размах крыльев 26—34 мм. Тело коричневого цвета. Основной тон верхней стороны переднего крыла может варьировать от красновато-коричневого до темно-коричневого со имеющимися светлыми разводами. Поперек крыла проходит чёрная, обрамленная белым цветом с чёткими краями, выгнутая полоска, внешний край которой ближе к центру образует острый зубец. Напротив данного зубца у края крыла имеется беловатый штрих. Прикорневая часть крыла чёрного цвета. Задние крылья серого цвета с тёмной поперечной дугообразной линией и срединной точкой. Бахрома крыльев с тёмными точками.','Gagiodes sagittata.jpg', 13)
INSERT INTO Species VALUES('Сатир железный', 'Hipparchia statilinus', 'Сатыр жалезны', 4,
'Длина переднего крыла 23—30 мм. Размах крыльев 43—48 мм. Верхняя сторона крыльев тускло-коричневая, у самцов порой почти до черной. На переднем крыле с каждой стороны два глазчатых пятна, между которыми находятся две маленькие белые точки. Глазчатых пятна самок обычно с белыми «зрачками», у самцов они обычно отсутствуют. Нижняя сторона задних крыльев порой без рисунка.','Hipparchia statilinus.jpg', 13)
INSERT INTO Species VALUES('Сенница луговая', 'Coenonympha oedippus', 'Сенніца лугавая', 3,
'Переднее крыло сверху тёмное, в центральной области ржаво-коричневое, с широким коричнево-бурым затемнением по внешнему краю. Заднее крыло сверху коричнево-бурое, однообразно окрашенное по всей поверхности, иногда с 1—3 мелкими глазчатыми пятнышками. В анальной половине внешнего края проходит более-менее заметный узкий охристый штрих. Нижняя сторона переднего крыла светлая, охристо-коричневая, с широкой белесовато-серой расплывчатой каймой по внешнему краю, заднего крыла — коричневато-серая с 1—2 чисто белыми пятнами неправильной формы и 5—6 мелкими глазчатыми пятнами, центрированными блестящими чешуями.','Coenonympha oedippus.jpg', 13)
INSERT INTO Species VALUES('Совка мышастая', 'Arytrura musculus', 'Соўка мышастая', 2,
'Бабочки преимущественно средних размеров. Размах крыльев в среднем в пределах 25—45 мм, самые мелкие — 8—10 мм.','Arytrura musculus.jpg', 13)
INSERT INTO Species VALUES('Чернушка эфиопка', 'Erebia aethiops', 'Чарнушка-эфіёпка', 2,
'У самца длина переднего крыла 22—26 мм. Усики булавовидные, равны половине длины кастального края переднего крыла, снизу белесоватые. Крылья сверху тёмно-коричневые, каждое с широким коричнево-красным постдискальным полем, на котором расположены чёрные, центрированные белым, глазчатые пятна (3—4 на переднем и 4—5 на заднем крыле).','Erebia aethiops.jpg', 13)
INSERT INTO Species VALUES('Шашечница авриния', 'Euphydryas aurinia', 'Шашачніца аўрынія', 3,
'Длина передних крыльев до 4,6 см. Верхняя сторона крыльев коричневая с тёмными или чёрными полосами. По краю задних крыльев небольшие светлые или белые пятна. Рисунок, образующийся сочетанием тёмных и светлых участков, характерен для вида. Нижняя сторона крыльев более светлая чем верхняя со светлыми пятнами, расположенными характерным для вида рисунком.','Euphydryas aurinia.jpg', 13)
INSERT INTO Species VALUES('Шашечница большая', 'Euphydryas maturna', 'Шашачніца вялікая', 4,
'Длина переднего крыла 17—24 мм, размах крыльев 35—42 мм.','Euphydryas maturna.jpg', 13)

INSERT INTO Species VALUES('Парнопес крупный', 'Parnopes grandior', 'Парнопэс буйны', 3,
'Среднего размера и крупные блестянки (8—14 мм). Тело удлиненное, брюшко (задняя часть) без металлического блеска, красновато-рыжее. Первый тергит, а также голова и грудь металлически блестящие, сине-зеленые. Крыловые крышечки грубо пунктированные, большие. Обладают длинным хоботком. Голова, грудь и почти весь первый тергит брюшка сине-зеленые металлически блестящие.','Parnopes grandior.jpg', 14)
INSERT INTO Species VALUES('Пчела мохноногая серебристая', 'Dasypoda argentata', 'Пчала калашматая срабрыстая', 3,
'Гнездится в колониях вместе с другими видами дазипод, в супесчаной почве, заселяя готовые полости. Норка глубиной 30—50 см. От главного хода отходят боковые ходы, заканчивающиеся ячейкой. Ячейка 20—23 мм в длину и 10—12 мм в ширину. Стенками вполне готовой ячейки служат непосредственно своды самой полости. Никаких специальных выстилок пчела не делает. Такую ячейку дазипода снабжает провизией (смесью пыльцы и нектара) для питания своей личинки.','Dasypoda argentata.jpg', 14)
INSERT INTO Species VALUES('Пчела-плотник обыкновенная', 'Xylocopa valga', 'Пчала-цясляр звычайная', 2,
'Крупные (длина тела 30—35 мм) одиночные пчёлы. Голова, грудь, брюшко и ноги чёрные, блестящие, в редких чёрных волосках. Крылья тёмные, с сине-фиолетовым блеском. Усики сверху чёрные, снизу рыжеватые. Лёт имаго с конца мая по сентябрь.','Xylocopa valga.jpg', 14)
INSERT INTO Species VALUES('Сколия-гигант', 'Megascolia maculate', 'Сколія-гігант', 3,
'Крупное перепончатокрылое насекомое. Длина тела самок достигает 32—55 мм , самцов — 26—32 мм в длину. Основной фон окраски тела чёрный. Крылья широкие, желтовато-бурого цвета, с ярким фиолетовым отливом. Их длина несколько меньше длины брюшка. Передняя часть переднеспинки, а также 4 -6 сегменты брюшка покрыты ярко-рыжими волосками. Остальные части тела покрыты редкими, но длинными чёрными волосками.','Megascolia maculate.jpg', 14)
INSERT INTO Species VALUES('Сфекс погребальный', 'Sphex funerarius', 'Сфэкс пахавальны', 3,
'Крупная одиночная оса, длина тела до 25 мм. Тело чёрное, брюшко на тонком стебель­ке, у основания красновато-жёлтое. Голени ног и лапки — красноватые. Отстоящие волоски лба, налич­ника и груди серебристо-серые. Концы крыльев затемнённые.','Sphex funerarius.jpg', 14)
INSERT INTO Species VALUES('Шмель моховой', 'Bombus muscorum', 'Чмель мохавы', 3,
'Самки имеют длину 18—22 мм, рабочие — 10—15 мм и самцы — 12—15 мм. По окраске похож на шмеля Шренка, но спинка и тергиты брюшка в одноцветных рыжеватых или охристых волосках, без примеси чёрных.','Bombus muscorum.jpg', 14)
INSERT INTO Species VALUES('Шмель-чесальщик', 'Bombus distinguendus', 'Чмель-часальшчык', 3,
'Длина около 2 см. Основная окраска опушения жёлто-коричневая и частично чёрная. Встречается на опушках леса, полянах и лугах.','Bombus distinguendus.jpg', 14)
INSERT INTO Species VALUES('Шмель Шрэнка', 'Bombus schrenckii', 'Чмель Шрэнка', 3,
'Спинка в рыжих или желтых волосках, иногда с примесью черных. Третий тергит брюшка отчасти в черных волосках. Длина щек в 1,1—1,3 раза больше ширины оснований жвал. Первая половина 5-го тергита брюшка также в черных волосках','Bombus schrenckii.jpg', 14)


INSERT INTO Species VALUES('Беззубка узкая', 'Pseudanodonta complanata', 'Бяззубка вузкая', 2,
'Раковина узкой беззубки - удлиненно-овальная (высота составляет 0,5 длины), мало выпуклая, очень тонкостенная, грубо концентрически исчерченная, с густо размещенными, местами шероховатыми линиями приостановки роста. Эпидермис гладкий, блестящий, коричневато-зеленоватых тонов, с узкими радиальными лучами, расходящимися от верхушки к переднему и заднему концам раковины.','Pseudanodonta complanata.jpg', 15)
INSERT INTO Species VALUES('Перловица толстая', 'Unio crassus', 'Перламутраўка тоўстая', 3,
'Высота раковины толстой перловицы до 3,6, длина до 7,2 см. Она имеет коротко-яйцевидную форму, раковина толстостенная, её внешняя поверхность гладкая. На раковине видны очень тонкие годичные зоны роста.','Unio crassus.jpg', 15)

INSERT INTO Species VALUES('Речная минога', 'Lampetra fluviatilis', 'Рачная мiнога', 1,
'Хищная минога имеет анадромные и жилые популяции. Отличается от близкого вида ручьевой миноги Lampetra planeri прежде всего более крупными размерами тела и острыми зубами (тупые во время нереста), более мелкой икрой и тем, что кишечник у взрослых рыб функционирует. По краям верхнечелюстной пластинки по 1 зубу, на нижнечелюстной обычно 7 зубов. Верхние губные зубы числом от 4 до 13 разбросаны в беспорядке.','Lampetra fluviatilis.jpg', 16)

INSERT INTO Species VALUES('Стерлядь', 'Acipenser ruthenus', 'Сцерлядзь', 1,
'Взрослые особи обычно достигают длины 40—60 см и массы 0,5—2 кг, иногда встречаются экземпляры массой 6—7 кг и даже до 16 кг. Взрослые особи питаются преимущественно личинками хирономид, мелкими моллюсками и другими беспозвоночными (мизиды, гаммариды). Осенью, в сентябре, собирается на глубоких участках рек (ямах), где проводит всю зиму в малоподвижном состоянии, не питаясь. Зарегулирование рек обычно улучшает условия откорма стерляди, но ухудшает условия её воспроизводства.','Acipenser ruthenus.jpg', 17)

INSERT INTO Species VALUES('Атлантический лосось', 'Salmo salar', 'Ласось', 1,
'Может достигать длины 1,5 м и массы 43 кг. Максимальная продолжительность жизни 13 лет.','Salmo salar.jpg', 18)
INSERT INTO Species VALUES('Кумжа', 'Salmo trutta', 'Кумжа', 1,
'Обычные размеры взрослых особей кумжи варьируют в зависимости от подвида — до 30—70 см длины и 1—5 кг веса, некоторые подвиды достигают массы 24 кг[3], а длины до 117 см','Salmo trutta.jpg', 18)
INSERT INTO Species VALUES('Ручьевая форель', 'Salmo trutta morpha fario', 'Стронга ручаёвая', 2,
'Длина тела 25 — 55 см, масса 0,2 — 2 кг и больше, в возрасте 12 — 13 лет — до 10 — 12 кг. Тело стройное, торпедообразное, покрыто мелкой, но очень плотной чешуей (вдоль боковой линии 115 — 130 чешуек). Все плавники относительно небольшие, в спинном — 3 — 5 неветвистых и 9 — 11 ветвистых лучей, в анальном соответственно 2 — 4 и 7 — 9 лучей. За спинным находится небольшой жировой плавник в виде вытянутой кожной складки. Большой рот усажен многочисленными зубами.','Salmo trutta morpha fario.jpg', 18)

INSERT INTO Species VALUES('Ручьевая форель', 'Salmo trutta morpha fario', 'Стронга ручаёвая', 2,
'Длина тела 25 — 55 см, масса 0,2 — 2 кг и больше, в возрасте 12 — 13 лет — до 10 — 12 кг. Тело стройное, торпедообразное, покрыто мелкой, но очень плотной чешуей (вдоль боковой линии 115 — 130 чешуек). Все плавники относительно небольшие, в спинном — 3 — 5 неветвистых и 9 — 11 ветвистых лучей, в анальном соответственно 2 — 4 и 7 — 9 лучей. За спинным находится небольшой жировой плавник в виде вытянутой кожной складки. Большой рот усажен многочисленными зубами.','Salmo trutta morpha fario.jpg', 18)

INSERT INTO Species VALUES('Европейская корюшка', 'Osmerus eperlanus', 'Стынка', 4,
'Тело удлинённое, со сравнительно крупной чешуей, которая может легко опадать. Рот большой с сильными зубами. Бока тела серебристые, спина буро-зелёная, плавники бесцветные. На время нереста плавники и голова покрываются бугорками. Питается зоопланктоном, молодью и икрой рыб. Свежая корюшка издаёт характерный запах свежих огурцов.','Osmerus eperlanus.jpg', 19)

INSERT INTO Species VALUES('Озерный гольян', 'Phoxinus percnurus', 'Гальян азерны', 3,
'Длина тела 6-8, иногда до 10 см. Тело толстое, высокое, по форме отдалённо напоминает тело линя. Рот небольшой, конечный, слегка приподнятый вверх. Глоточные зубы двухрядные, слегка сжатые с боков, на верхней части образуют гребень с крючком наверху. На первой жаберной дуге 8-9 жаберных тычинок. Плавники относительно короткие, на вершине закруглённые, хвостовой плавник слабовыемчатый. Спинной плавник начинается чуть позади основания брюшных и содержит 3 неветвистых и 6-8 ветвистых лучей. В анальном плавнике 3 неветвистых и 7 ветвистых лучей. Чешуя крупнее, чем у гольяна обыкновенного, плотная, на брюхе и горле более мелкая. Боковая линия прерывистая, доходит до конца основания анального плавника. Вдоль средней линии расположено 70-82 чешуйки.','Phoxinus percnurus.jpg', 20)
INSERT INTO Species VALUES('Обыкновенный усач', 'Barbus barbus', 'Мiрон', 3,
'Длина тела до 85 см, масса 4—6 кг, в исключительных случаях до 12. Спинной плавник высокий. Окраска тела ровная серебристая, редко с мелкими буроватыми пятнышками. Половозрелыми становятся в возрасте 3—5 лет при длине тела около 30—35 см. Предельный возраст этой рыбы — 15 лет. Нерест в мае — июне при температуре более 15 °C. Плодовитость самок от 15 до 100 тысяч икринок. Питается усач в основном донными организмами: моллюсками, червями, личинками и ракообразными, а также кормами растительного происхождения. Отличительной чертой этой рыбы являются две пары усов по углам рта и головы, которые служат для поиска пищи на дне реки.','Barbus barbus.jpg', 20)

INSERT INTO Species VALUES('Гребенчатый тритон', 'Triturus cristatus', 'Грабенчаты трытон', 4,
'Своё название данный вид тритонов получил благодаря высокому гребню вдоль спины и хвоста, который появляется у самцов в брачный период. Высота гребня может достигать 1,5 см, в районе основания хвоста гребень имеет ярко выраженный перешеек. Часть гребня, проходящая от основания головы до начала хвоста, имеет ярко выраженные зубцы, оставшаяся хвостовая часть гребня более ровная. В обычное время гребень у самцов малозаметен.
Самцы гребенчатого тритона достигают 18 см в длину, размеры самок немного меньше — от 11 до 20 см максимум.','Triturus cristatus.jpg', 21)

INSERT INTO Species VALUES('Камышовая жаба', 'Bufo calamita', 'Чаротавая рапуха', 3,
'Длина тела до 80 мм. Окраска верхней стороны тела серовато-оливковая, буроватая или песочного цвета, с тёмными или зеленоватыми пятнами. Желтоватая узкая полоса проходит вдоль спины. Нижняя сторона тела серо-белого цвета. Кожа покрыта бугорками, но без шипиков. Сочленовные бугорки на пальцах двойные. Имеется продольная складка на предплюсне. Самцы с хорошо развитым горловым резонатором.','Bufo calamita.jpg', 22)

INSERT INTO Species VALUES('Болотная черепаха', 'Emys orbicularis', 'Балотная чарапаха', 3,
'Панцирь овальный, невысокий и слегка выпуклый, гладкий, подвижно соединён с пластроном неширокой эластичной связкой. Карапакс молодых черепах округлый, со слабым срединным килем в задней части. Задняя часть пластрона закругленная, без заметной выемки[4]. Конечности снабжены длинными острыми когтями. Между пальцами развиты небольшие перепонки. Хвост очень длинный, у взрослых черепах его длина составляет до 3/4 длины панциря, а у детёнышей хвост относительно ещё длиннее. Такой хвост может играть роль дополнительного руля при плавании (эту функцию выполняют в основном задние конечности).','Emys orbicularis.jpg', 23)

INSERT INTO Species VALUES('Медянка', 'Coronella austriaca', 'Мядзянка', 3,
'Медянки — некрупные змеи (менее 1 метра длиной) с заметно приплюснутой и относительно ограниченной от туловища головой, округлыми зрачками, гладкой чешуёй с 1—2 апикальными порами и парными подхвостовыми щитками. Верхнечелюстные зубы у них постепенно увеличиваются в размере по направлению к углу рта, причём два последних (наиболее крупных) зуба не отделены диастемой от остальных.','Coronella austriaca.jpg', 24)

INSERT INTO Species VALUES('Большой крохаль', 'Mergus merganser', 'Вялiкi савук', 3,
'Длина тела большого крохаля 58-66 см, размах крыльев 82-97 см, вес 898-2160 г. У самца в брачном наряде голова и верхняя часть шеи чёрные с тёмно-зелёным металлическим отливом; передняя часть спины чёрная, надхвостье и хвост тёмно-серые, остальная часть туловища белая с розовым налётом. У летящих птиц обоего пола при взгляде сверху выделяется крупное белое пятно на сером фоне — «зеркало»; у самца оно может занимать почти всю поверхность крыла. Клюв у крохалей ярко-красный с тёмным концом, радужная оболочка красная. У самки рыжевато-бурые голова и шея, беловатое горло, пепельно-серый верх, белый низ, тёмно-коричневая радужная оболочка.','Mergus merganser.jpg', 25)
INSERT INTO Species VALUES('Белоглазая чернеть', 'Aythya nyroca', 'Белавокi нырок', 1,
'Белоглазый нырок — некрупная утка массой от 0,4 до 0,65 кг. Окрас взрослых птиц равномерно коричневый. В брачном наряде у самца белые брюхо и подбородок, бока коричнево-рыжие, верхняя сторона тела, а также ошейник в основании шеи бурые. На крыле белое зеркальце. Самка же более бледная, и радужина глаза у неё коричневая.','Aythya nyroca.jpg', 25)
INSERT INTO Species VALUES('Луток', 'Mergellus albellus', 'Савук-луток', 1,
'Мелкая, хорошо узнаваемая утка плотного телосложения, имеющая много общего с крохалями и часто объединяемая с ними в один род. Среди общих признаков — хохолок удлинённых перьев на голове и узкий короткий клюв, края которого покрыты зубцами. Размером несколько крупнее чирка-свистунка: длина тела 38—44 см, вес самца 510—935 г, вес самки 500—680 г.','Mergellus albellus.jpg', 25)

INSERT INTO Species VALUES('Белая куропатка', 'Lagopus lagopus', 'Пардва', 1,
'Длина тела 35—38 см; весит 400—700 г.','Lagopus lagopus.jpg', 26)

INSERT INTO Species VALUES('Чернозобая гагара', 'Gavia arctica', 'Чорнаваллёвы гагач', 2,
'Гагара среднего размера (крупнее краснозобой, но заметно мельче белоклювой и темноклювой). Общая длина 58—75 см, размах крыльев 110—140 см. Вес самцов 2400—3349 г, самок 1800—2354 г. Цевка чёрная, пальцы серые, перепонка серая или розоватая. Радужная оболочка глаз у молодых птиц коричневая, у взрослых тёмно-красная. Окраска, как и у других гагар, двухцветная: верх тёмный, низ белый.','Gavia arctica.jpg', 27)

INSERT INTO Species VALUES('Серощекая поганка', 'Podiceps grisegena', 'Шэрашчокая коўра', 4,
'Серощёкую поганку по размеру можно сравнить со средней величины уткой, такой как свиязь или шилохвость. Это довольно крупный представитель семейства поганковых, несколько уступающий размерами в Евразии чомге, в Северной Америке западноамериканской поганке и поганке Кларка. В сравнении с чомгой у серощёкой поганки более короткая и массивная шея, на затылке часто развит короткий, прямо срезанный хохолок, хорошо заметный при сильном возбуждении птицы. Взрослая поганка номинативного подвида достигает в длину 40—50 см, размаха крыльев 77—85 см, массы 692—925 г.','Podiceps grisegena.jpg', 28)

INSERT INTO Species VALUES('Черный аист', 'Ciconia nigra', 'Чорны бусел', 3,
'Для верхней части туловища характерно наличие черных перьев с зеленоватым и насыщенным красным переливами. В нижней части тела окрас перьев представлен белым цветом. Взрослая птица отличается довольно крупными, внушительными размерами. Средняя высота черного аиста составляет 1,0-1,1 м при массе тела в 2,8-3,0 кг. Размах крыльев у пернатого может варьировать в пределах 1,50-1,55 м.','Ciconia nigra.jpg', 29)
INSERT INTO Species VALUES('Малая выпь', 'Ixobrychus minutus', 'Чапля-лазянiк', 2,
'Рост малой выпи достигает всего 36 см. Вес 136—145 г, длина крыла около 15 см. Малая выпь — единственный представитель отряда аистообразных, у которого самец и самка отличаются окраской. Самец малой выпи имеет чёрные с зелёным отливом шапочку на голове, крылья и спину, голова и шея кремово-белые, брюхо охристое с беловатыми окончаниями перьев. Клюв жёлто-зеленоватый. Самка со спины бурая с пестринами, живот, голова и шея охристые. Клюв у самки жёлтый с бурым концом.','Ixobrychus minutus.jpg', 29)

INSERT INTO Species VALUES('Беркут', 'Aquila chrysaetos', 'Арол-маркут', 1,
'Очень крупный и сильный орёл — длина тела 76—93 см, размах крыльев 180—240 см. Самки значительно крупнее самцов, их вес варьирует в пределах от 3,8 до 6,7 кг, в то время как у самцов от 2,8 до 4,6 кг. Клюв — типично орлиный: высокий и сжатый с боков, крючкообразно загнут вниз. Перья на зашейке несколько удлинённые — признак, также встречающийся у могильника. Крылья длинные и широкие, несколько сужены в основании и на заднем пальце, так что при парении задний край крыла выглядит изогнутым в виде латинской буквы S; эта характерная особенность наиболее ярко выражена у молодых птиц.','Aquila chrysaetos.jpg', 30)
INSERT INTO Species VALUES('Большой подорлик', 'Aquila clanga', 'Вялiкi арлец', 1,
'Некрупный орёл, очень похожий на степного, но заметно мельче его. Длина тела 60–74 см, размах крыльев 153–182 см, масса 1,5–3,2 кг. Самка заметно крупнее самца, половых различий в окраске нет. Относительно высоконогий хищник, «штаны» на голенях хорошо развиты. Концы сложенных крыльев у сидящей птицы обычно достигают обреза хвоста или чуть выдаются за него. Разрез рта широкий, как и у степного орла, желтоватые валики углов рта заходят далеко к глазу.','Aquila clanga.jpg', 30)
INSERT INTO Species VALUES('Змееяд', 'Circaetus gallicus', 'Арол-вужаед', 3,
'Змееяда часто называют орлом, однако внешне эти птицы мало похожи. Змееяд – крупный хищник с длиной тела около 70 см, размахом крыльев от 170 до 190 см, масса взрослых особей достигает 2 кг. Самки, как правило, по размерам немного больше, чем самцы, но не отличаются от последних по окрасу оперения. Спина у змееяда серо-бурого цвета. Горло бурое. Брюхо белого цвета с многочисленными темными пестринами. По крыльям и хвосту заметны темные полосы. Молодые особи темнее в окрасе, чем взрослые птицы.','Circaetus gallicus.jpg', 30)
INSERT INTO Species VALUES('Скопа', 'Pandion haliaetus', 'Скапа', 2,
'Крупная хищная птица длиной 55—58 см, с размахом крыльев 145—170 см. Длинные крылья характерно изогнуты в районе запястного сустава. Перья верхней стороны тела бурого цвета; темя, затылок и нижняя сторона тела — белые; в районе запястного сустава имеются тёмно-коричневые пятна, а вокруг шеи крапчатое ожерелье. С боковой стороны головы имеется бурая полоска, проходящая от клюва через глаз и шею. Восковица и ноги свинцового цвета, клюв чёрный. Молодые особи почти не отличаются от взрослых птиц, но выглядят несколько пятнистыми из-за светло-коричневых кончиков перьев на внешней стороне крыльев и хвоста. Их пятнистое ожерелье менее ярко выражено, а радужная оболочка глаза оранжево-красная, тогда как у взрослых птиц она жёлтого цвета. Взрослая окраска молодой скопы появляется к 18-му месяцу','Pandion haliaetus.jpg', 30)	

INSERT INTO Species VALUES('Чеглок', 'Falco subbuteo', 'Сокал-кабец', 4,
'Сокол величиной с голубя (длина тела самцов — до 28 см, масса 180–240 г, у самок тело длиной до 38 см, массой до 340 г). Крылья длинные, хвост относительно короткий. Верх туловища темно-серый, низ туловища светлый с четкими продольными пестринами, подхвостье и «штаны» рыжие. Крылья и хвост снизу светлые, с частыми поперечными полосами и рядами пестрин. Голова черная, горло белое, на нем хорошо заметные черные «усы». Белые щеки. Клюв черный, желтый у основания. Молодые птицы имеют буроватый верх, охристые каемки перьев на голове и более пестрый желтовато-охристый низ. В полете характером силуэта чеглок напоминает стрижа: концы узких и острых крыльев обычно направлены назад, хвост сложенный.','Falco subbuteo.jpg', 31)
INSERT INTO Species VALUES('Сапсан', 'Falco peregrinus', 'Сокал-падарожнiк', 1,
'Сапсан — крупный сокол: его длина составляет 34-50 см, размах крыльев 80-120 см. Как и у большинства других хищных птиц, самки сапсанов заметно крупнее самцов: они весят в пределах 910—1500 г, тогда как самцы примерно на треть меньше и их вес составляет 440—750 г. В окрасе половой диморфизм не выражен (исключение — редкий подвид F. p. madens), — самцы и самки выглядят одинаково.','Falco peregrinus.jpg', 31)

INSERT INTO Species VALUES('Коростель', 'Crex crex', 'Драч', 3,
'Размерами сравним с дроздом или перепёлкой, телосложением несколько напоминает подросшего цыплёнка домашней курицы. Ведёт скрытный образ жизни, почти не показывается из зарослей высокой травы. Летает неохотно и только при крайней необходимости, однако во время миграции легко преодолевает тысячи километров, в том числе над морем и пустынями. Присутствие коростеля на гнездовом участке хорошо выдаёт территориальный крик самца, в безветренную погоду слышный на расстоянии до 1,5 км. Кричат птицы в мае и первой половине лета, в остальное время ведут себя бесшумно, особенно на зимовках.','Crex crex.jpg', 32)
INSERT INTO Species VALUES('Серый журавль', 'Grus grus', 'Шэры журавель', 3,
'Это крупная птица: высота около 115 см, размах крыльев 180—200 см; вес самца до 6 кг, самки до 5 кг 900 г. Оперение большей части тела синевато-серое, что позволяет птице маскироваться от врагов среди лесистой местности. Спина и подхвостье несколько темнее, а крылья и брюхо более светлые. Окончания крыльев чёрные. Передняя часть головы, подбородок, верхняя часть шеи и уздечка чёрные либо тёмно-серые. Затылок синевато-серый. По бокам головы имеется белая широкая полоса, начинающаяся под глазами и далее уходящая вниз вдоль шеи. На темени перья почти отсутствуют, а участок голой кожи выглядит красной шапочкой. Клюв светлый от 20—30 см. Ноги чёрные. У молодых журавлей перья на голове и шее серые с рыжими окончаниями.','Grus grus.jpg', 32)

INSERT INTO Species VALUES('Галстучник', 'Charadrius hiaticula', 'Вялiкi зуёк', 2,
'Перепончатопалый галстучник достигает длины от 17 до 19 см. Размах крыльев составляет от 43 до 52 см. Вес варьирует от 45 до 65 г[2].
Перепончатопалый галстучник внешне едва отличим от галстучника. У него такая же бурая спина и белая нижняя часть тела. Лоб белый, окружён чёрной маской, которая тянется до пятен уха. Верх головы и затылок бурые. Вторая, чёрная полоса переходит спереди в чёрную переднюю часть груди. Клюв короткий. Вершина клюва чёрная, остальная часть оранжево-жёлтая.','Charadrius hiaticula.jpg', 33)
INSERT INTO Species VALUES('Золотистая ржанка', 'Pluvialis apricaria', 'Залацiстая сеўка', 3,
'Золотистая ржанка имеет величину от 26 до 29 см и весит от 150 до 220 г. Её размах крыльев составляет от 67 до 76 см. Золотистые ржанки — немного неуклюже выглядящие птицы. У них круглая голова и серо-коричневая пёстрая верхняя сторона. Самцы весной и во время брачного периода ходят с чёрным брюшком и чёрным горлышком, окаймлённым белой полоской, и их нельзя с кем-либо спутать. Самки на нижней стороне также окрашены в более тёмный цвет, однако не с таким контрастом, как самцы.','Pluvialis apricaria.jpg', 33)
INSERT INTO Species VALUES('Малая чайка', 'Larus minutus', 'Малая чайка', 3,
'Грациозная и очень маленькая чайка — её длина 24—28 см, размах крыльев 62—69 см, вес около 100 г. Помимо размера, выделяется лёгким порхающим, непрямолинейным полётом, напоминающим движения скорее болотных крачек (Chlidonias), нежели чаек. В целом имеет сходство с озёрной чайкой, но примерно на треть меньше её и во взрослом оперении отличается полностью чёрной головой. Кроме того, начиная с 2-х летнего возраста, у птиц нижние кроющие крыльев дымчато-серые с белой каймой, в результате чего в полёте низ крыла выглядит почти чёрным — по этому признаку малых чаек легко выделить среди других близких видов. Имеет трёх-годовой цикл оперения — окончательный взрослый вид приобретает в возрасте трёх лет.','Larus minutus.jpg', 33)
INSERT INTO Species VALUES('Средний кроншнеп', 'Numenius phaeopus', 'Сярэднi кулён', 3,
'Длина тела составляет от 40 до 46 см. Размах крыльев — 80 см, вес самцов — 268—550 г, самок — от 315 до 600 г. Отличается от большого кроншнепа тем, что чёрно-бурое темя у него разделено посередине светлой продольной полосой и окаймлено светлыми бровями, клюв короче, окраска серая, с пестринами по всему телу. Лапы голубовато-серые, когти тёмно-серые. Крик напоминает трель.','Numenius phaeopus.jpg', 33)
INSERT INTO Species VALUES('Турухтан', 'Philomachus pugnax', 'Баталён', 3,
'Среднего размера кулик, крупнее чернозобика. Определение в полевых условиях обычно не вызывает затруднений. Необычно маленькая голова на фоне упитанного туловища, вытянутая шея и узкий, слегка изогнутый книзу клюв хорошо выделяют турухтана среди других куликов, в том числе схожих по окрасу и образу жизни. В сравнении с другими некрупными куликами, в полёте турухтан делает более медленные и глубокие взмахи крыльями, подолгу парит. Кроме того, он хорошо узнаётся по белой размытой полосе по верхнему краю крыла и белым пятнам по краям хвоста. Крылья заострённые и несколько уже, чем у других куликов, хвост слегка закруглённый. Между основаниями среднего и внешнего пальцев развита небольшая перепонка. Ноги довольно длинные; у взрослых птиц оранжевые либо почти красные, у двухлетних серовато-жёлтые (иногда с серыми пятнами), у более молодых бурые, зеленовато- или тёмно-серые.','Philomachus pugnax.jpg', 33)

INSERT INTO Species VALUES('Бородатая неясыть', 'Strix nebulosa', 'Барадатая кугакаўка', 2,
'Длина тела птицы достигает 80 см, размах крыльев — 1,5 м. Голова совы визуально кажется очень крупной, окраска дымчато-серая без рыжих тонов. Глаза жёлтые с тёмными концентрическими полосами вокруг. Чёрное пятно под клювом похоже на бороду, за что этот вид и получил своё название. Перьевые ушки отсутствуют. На шее спереди виден белый воротник. Нижняя сторона крыла полосатая.','Strix nebulosa.jpg', 34)
INSERT INTO Species VALUES('Длиннохвостая неясыть', 'Strix uralensis', 'Даўгахвостая кугакаўка', 3,
'Это одна из самых крупных неясытей. Её длина достигает 70 см, размах крыльев около 115 см, длина крыла примерно 35–40 см, хвоста 30 см. Главный отличительный признак вида – длинный, клиновидный, с темными полосами хвост: когда сова сидит на дереве, хвост далеко выступает из-под сложенных крыльев. Общая окраска спинной стороны беловато-охристая с бурым продольным рисунком и слабыми поперечными отметинами на больших перьях. Маховые и рулевые перья буровато-охристые, с тёмно-бурым поперечным рисунком. Брюшная сторона беловато-охристая или чисто белая с четкими бурыми продольными пятнами. Лицевой диск светлый, окаймленный мелкими пестрыми перышками. Перьевых «ушей» нет. Пальцы оперены до когтей. Радужина глаз тёмно-бурая, клюв жёлтый, когти черные.','Strix uralensis.jpg', 34)
INSERT INTO Species VALUES('Сипуха', 'Tyto alba', 'Сiпуха', 2,
'Хищная птица размером с галку, её длина составляет 33—39 см, размах крыльев 80—95 см. Вес птиц варьирует в широких пределах от 187 до 700 г, и во многих случаях он не является географической характеристикой, а зависит от каждой конкретной особи. Однако в целом островные птицы более мелкие. Среднего размера птица, со стройным телосложением и длинными ногами. Оперение очень мягкое, пушистое. Верхняя часть тела обычно охристо-рыжая, с поперечными пепельно-серыми пестринами и многочисленными мелкими тёмными полосками и крапинами.','Tyto alba.jpg', 34)
INSERT INTO Species VALUES('Филин', 'Bubo bubo', 'Пугач', 2,
'Крупная хищная птица, размерами уступает беркуту, но немного крупнее белой совы. Ряд источников называют его самым крупным представителем совообразных птиц, однако это не совсем верно: рыбный филин в среднем несколько массивнее обыкновенного, а бородатая неясыть немного длиннее. По данным российских источников, длина птицы составляет 60—75 см, размах крыльев 160—190 см, масса самцов 2,1—2,7 кг, масса самок 3,0—3,2 кг. Для сравнения, у занимающего аналогичную экологическую нишу в Северной Америке виргинского филина масса наиболее крупных подвидов не превышает 2 кг. В соответствии с правилом Бергмана, размеры тела особей в популяциях уменьшаются с севера на юг: например, масса птиц, обитающих в Африке и на Ближнем Востоке, примерно на 20 % меньше массы птиц, распространённых в Северной и Западной Европе.','Bubo bubo.jpg', 34)

INSERT INTO Species VALUES('Сизоворонка', 'Coracias garrulus', 'Сiнi сiваграк', 1,
'Длина крыла сизоворонки 18—20 см, длина полностью — около 34 см, весит 180—200 г. Оперение жёсткое, зеленовато-голубое с переливами, спина и верх крыльев ржаво-коричневого цвета. Клюв прямой, сильный, сжатый с боков, у вершины крючковатый, тёмно-бурый, ноги крепкие. У основания клюва имеются жёсткие щетиноподобные вибриссы.','Coracias garrulus.jpg', 35)

INSERT INTO Species VALUES('Трехпалый дятел', 'Picoides tridactylus', 'Жоўтагаловы дзяцел', 4,
'Небольшая птица с довольно крупной головой и острым клювом; чуть мельче большого пёстрого дятла, однако в половину крупнее малого пёстрого. Длина 21—24 см, размах крыльев 33—37 см, масса 50—90 г. Оперение чёрно-белое, но со стороны выглядит скорее тёмным из-за преимущественно чёрных боков и крыльев. Красные отметины на голове и подхвостье, характерные для других дятлов, отсутствуют. Вместо них у самца и молодых птиц обоего пола на темени развита лимонно-жёлтая, у самки серебристо-серая шапочка с тёмными пестринами. По бокам головы чередование чёрных и белых полос, одна из которых образует узкие «усы» от угла клюва, а вторая тянется от глаза и опускается вдоль боковой части шеи. Вдоль спины от зашейка до надхвостья проходит белая полоса — отчётливо различимая у большинства форм и слабо развитая у подвида alpinus, населяющего горы Центральной Европы. Нижняя часть беловатая с тёмными отметинами продольной, поперечной либо V-образной формы; интенсивность этих отметин уменьшается с запада на восток и с севера на юг. На ноге 3 пальца — два направлены вперёд и один назад. Четвёртый палец редуцирован. Полёт быстрый и прямолинейный.','Picoides tridactylus.jpg', 36)
INSERT INTO Species VALUES('Зеленый дятел', 'Picus viridis', 'Зялёная жаўна', 3,
'Среднего размера дятел, заметно крупнее седого дятла. Длина 33—36 см, размах крыльев 40—44 см, вес 150—250 г. Оперение верхней части туловища и крыльев оливково-зелёное, нижней более бледное — зеленовато-серое либо светло-зелёное с тёмными поперечными пестринами. По бокам головы и шеи перья также зелёные, более тёмные сзади и светлые спереди. В верхней части головы и на затылке имеется узкая шапочка ярко-красных перьев. Передняя часть головы, включая окаймление вокруг глаз, чёрная и выглядит контрастной «чёрной маской» на фоне красного верха и зелёных щёк. Под клювом имеется полоска перьев в виде «усов», у самцов она красная с чёрной каёмкой, а у самок чёрная. Радужина желтовато-белая. Клюв свинцово-серый, в основании подклювья жёлтый. Надхвостье жёлто-зеленое. Половой диморфизм выражен слабо, самцы и самки различаются главным образом по окраске «усов». У молодых птиц, не достигших половой зрелости, оперение с частыми тёмными пестринами, «усы» не развиты.','Picus viridis.jpg', 36)

INSERT INTO Species VALUES('Вертлявая камышевка', 'Acrocephalus paludicola', 'Вяртлявая чаротаўка', 1,
'Представляет собой небольшую, размером с воробья птичку. Размер крыльев составляет около 6,5 сантиметров, хвоста — около 5 сантиметров, клюва — чуть более сантиметра. Хвост ступенчатый с немного заострёнными концами рулевых перьев. Размеры самцов и самок одинаковые.','Acrocephalus paludicola.jpg', 37)
INSERT INTO Species VALUES('Полевой конек', 'Anthus campestris', 'Палявы свiрстун', 4,
'Чуть меньше воробья, приблизительно с лесного конька, более длинноклювый, несколько более стройного телосложения и с более длинными ногами. Длина тела 16–19 см, размах крыльев 26–30 см, масса 18–27 г. Отличается от других коньков светлой однотонной окраской и почти полным отсутствием пестрин. По земле передвигается шагом или бегом, иногда немного покачивает хвостом вверх и вниз. Характерна манера при осматривании вытягивать всё тело вертикально вверх. Коготь заднего пальца слабо изогнут, по длине примерно равен пальцу или немного длиннее.','Anthus campestris.jpg', 37)
INSERT INTO Species VALUES('Садовая овсянка', 'Emberiza hortulana', 'Садовая стрынатка', 2,
'Распространена в большинстве стран Европы и Западной Азии. Осенью мигрирует в тропическую часть Африки, возвращаясь на родину в конце апреля—начале мая. Их места обитания различаются в разных областях своего ареала. Так, во Франции садовые овсянки предпочитают проживать в районах с виноградниками, в то время как в других странах их ни разу не встречали в таких районах. Ареал простирается далеко на север до Скандинавии и за Северный полярный круг, где птица питается на кукурузных полях и их окрестностях.','Emberiza hortulana.jpg', 37)
INSERT INTO Species VALUES('Чернолобый сорокопут', 'Lanius minor', 'Чарналобы грычун', 2,
'Среднего размера сорокопут с округлой головой, сравнительно коротким хвостом и коротким массивным клювом. По своим размерам занимает промежуточное положение между красноголовым и серым сорокопутами, и значительно крупнее жулана. Длина 21—24 см, размах крыльев 34—39 см, масса около 40—60 г. В окрасе преобладание чёрно-белых тонов, лишь на светлом фоне брюха выделяется розоватый налёт. Верх взрослой птицы, включая темя, светло-серый; горло беловатое, крылья чёрные с белыми «зеркалами», хвост чёрный с белыми каёмками. От кроющих ушей через лоб проходит широкая чёрная полоса — так называемая «маска», которая у самки спереди размыта и имеет буроватый оттенок. Остальные детали оперения у самцов и самок заметных отличий не имеют, разве что окраска последних немного более тусклая.','Lanius minor.jpg', 37)


INSERT INTO Species VALUES('Европейская широкоушка', 'Barbastella barbastellus', 'Еўрапейская шыракавушка', 2,
'Мелкая и тёмно окрашенная летучая мышь. Её верхняя сторона немного темнее нижней. Масса 6-15 г. Длина тела 45—58 мм, хвоста 38—52 мм. Длина предплечья 35-42 мм, размах крыльев 26-31 см. Передний край уха с неглубокой выемкой, задний - с небольшой лопастью. Шерсть на спине тёмная, от тёмного шоколадно-бурого до почти чёрного, с характерной мелкой рябью, образованной белыми концами волос, но иногда встречаются серебристо—седая, брюшко серо—бурое.','Barbastella barbastellus.jpg', 38)
INSERT INTO Species VALUES('Прудовая ночница', 'Myotis dasycneme', 'Сажалкавая начнiца', 2,
'Перелетный вид, на Прикарпатье живёт оседло. На местах зимовки — с сентября. Зимует обычно поодиночке. Еду добывает с наступлением сумерок и перед рассветом; полет сильный, медленный и ровный. Питается преимущественно мелкими бабочками, жуками, однодневками и двукрылыми, которых ловит над водой на высоте 5—20 см. Размножается раз в год. Самка во 2-й половине июня рождает одного малыша. Враги — совы.','Myotis dasycneme.jpg', 38)
INSERT INTO Species VALUES('Серый ушан', 'Plecotus austriacus', 'Шэры вушан', 4,
'Эхолокационные сигналы низкой интенсивности в диапазоне 18—45 кГц, с максимальной амплитудой около 28 кГц, продолжительность — около 5,8 мс.','Plecotus austriacus.jpg', 38)
INSERT INTO Species VALUES('Ночница Брандта', 'Myotis brandti', 'Начнiца Брандта', 3,
'Ухо средней длины, сужающееся к концу, с вырезкой на заднем крае. Маска покрыта тёмными волосами. Ступня с когтями примерно равна половине голени. Крыловая перепонка крепится к основанию внешнего пальца ступни. Эпиблема неразвита. Мех густой, длинный, слегка всклокоченный. Волосы с тёмными основаниями, окрас спины от рыжевато- до тёмно-бурого, брюха — от серовато- до палево-белёсого.','Myotis brandti.jpg', 38)


INSERT INTO Species VALUES('Барсук', 'Meles meles', 'Барсук', 2,
'Длина тела — 60—90 см, хвоста — 20—24 см; масса — до 24 кг, осенью, перед спячкой — до 34 кг. Форма массивного тела своеобразна, представляет собой как бы обращённый вперед клин, который резко сужается к концу вытянутой тонкой морды. Шея короткая, почти незаметная. Ноги короткие, массивные, опирающиеся на землю всей ступнёй. На пальцах — длинные тупые когти, приспособленные к рытью.','Meles meles.jpg', 39)
INSERT INTO Species VALUES('Бурый медведь', 'Ursus arctos', 'Буры мядзведзь', 1,
'Бурый медведь образует несколько подвидов (географических рас), отличающихся размерами и окраской. Самые крупные бурые медведи в мире водятся на юге Аляски, а в Евразии — на Дальнем Востоке (в первую очередь на Сахалине и на Камчатке). Средние показатели массы и длины тела медведей на Камчатке составили 268,7 кг и 216,7 см для взрослых самцов (старше 7 лет) и 174,9 кг и 194,5 см для взрослых самок соответственно, что выше, чем в других регионах Евразии (кроме, возможно, Приморья, где считается, что бурые медведи достигают похожих размеров). Учитывая, что взвешивание проводилось в основном в начале лета, осенняя масса камчатских медведей должна быть ещё больше. В исследовании в Южно-Камчатском заказнике отмечен крупный самец в возрасте 8 лет, масса которого составила 410 кг, длина тела — 249 см, обхват груди — 155 см. Учитывая то, что он был отловлен в начале июня, когда жировые запасы невелики, в осенний период данный медведь мог весить свыше 450 кг.','Ursus arctos.jpg', 39)
INSERT INTO Species VALUES('Горностай', 'Mustela erminea', 'Гарнастай', 2,
'Горностай — небольшой зверёк типичного куньего облика с длинным телом на коротких ногах, длинной шеей и треугольной головой с небольшими округлыми ушами. Длина тела самца — 17—38 см (самки примерно вдвое меньше), длина хвоста составляет около 35 % от длины тела — 6—12 см; масса тела — от 70 до 260 г. Похож на обыкновенную ласку, но несколько больше её по размерам и имеет чёрный окрас распушённого кончика более длинного хвоста. Более схожа с длиннохвостой лаской, но мельче её. У основания хвоста имеются анальные железы, выделяющие жидкость с неприятным запахом.','Mustela erminea.jpg', 39)
INSERT INTO Species VALUES('Европейская рысь', 'Lynx lynx', 'Еўрапейская рысь', 2,
'Крупный представитель семейства кошачьих, длина тела составляет до 110 см, высота в холке – 61-68 см, средняя масса тела взрослых самцов – 20-28 кг, а максимальная – 32 кг; самки несколько меньше: длина тела до 100 см, высота в холке – 52-61 см, масса – 18-22 кг, максимальная – 24 кг. Рысь имеет достаточно плотное телосложение, туловище относительно короткое, высокие мускулистые ноги, хвост короткий, как бы обрубленный, уши стоячие, с кисточками на концах. У взрослых зверей, особенно у старых самцов, развиты “бакенбарды”. Окраска меха может быть весьма разнообразной, различают несколько типов окраски: пепельно-голубой, тёмно-серый, красно-рыжий. Встречаются звери и с сильно выраженной пятнистостью, но, как правило, пятна присутствуют только на передней части туловища и на ногах.','Lynx lynx.jpg', 39)
INSERT INTO Species VALUES('Европейская норка', 'Mustela lutreola', 'Еўрапейская норка', 1,
'Это небольшое млекопитающее, чьи размеры не превышают полуметра, а вес не достигает и килограмма. У норки удлинённое гибкое тело, короткие лапы и недлинный хвост. В среднем, её длина составляет от 28 до 43 см, а вес — от 550 до 800 грамм. Длина хвоста у европейской норки может достигать почти 20 см. Благодаря тому, что это животное ведёт полуводный образ жизни, её шерсть не намокает даже во время длительного нахождения в воде. Она довольно короткая, плотная и очень густая, снабжённая богатым подшёрстком, который, как и ость, обладает водоотталкивающими свойствами. Мех у этого пушного зверя всегда одинаково густой и пушистый: смена времён года почти не влияет на его качество.','Mustela lutreola.jpg', 39)

INSERT INTO Species VALUES('Крапчатый суслик', 'Spermophilus suslicus', 'Рабы суслiк', 3,
'Один из самых мелких (длина тела 17—26 см) и короткохвостых (хвост 2,9—5,5 см, менее 1/4 длины тела) сусликов. Весит до 500 г. Самцы несколько крупнее самок. Голова довольно крупная, с большими глазами. Ушная раковина редуцирована до кожного валика. Лапы короткие, с длинными подвижными пальцами. Волосяной покров короткий и довольно редкий, прилегающий; только на хвосте волосы длинные и распушенные. Окраска спины яркая и пёстрая: на основном серо-буроватом или коричневом фоне разбросаны крупные (до 6 мм), беловатые или желтоватые, чётко очерченные крапины, на затылке сливающиеся в рябь. У молодых зверьков крапины могут располагаться рядами. Верх головы одной окраски со спиной, иногда чуть темнее. Глаза окружены светлым кольцом; под глазами коричневые пятна. Горло и голова снизу белые. Брюхо от светло-серого до охристо-желтого. Хвост двухцветный со светлым окаймлением. В пределах ареала общий тон окраски светлеет и тускнеет по направлению к югу.','Spermophilus suslicus.jpg', 40)
INSERT INTO Species VALUES('Обыкновенная летяга', 'Pteromys volans', 'Звычайная палятуха', 3,
'Размеры у неё небольшие, чуть мельче белки: длина тела 12‒22,8 см, хвоста — 11‒13 см, ступни — 3‒3,9 см, уха — 1,5‒2,1 см; масса до 170 г. Голова округлая, тупоносая, с большими и выпуклыми, в связи с сумеречным и ночным образом жизни, чёрными глазами. Уши закруглённые, без кисточек. Конечности довольно короткие, задние длиннее передних. Когти короткие, сильно изогнутые, острые. Сосков 4 пары.','Pteromys volans.jpg', 40)
INSERT INTO Species VALUES('Обыкновенный хомяк', 'Cricetus cricetus', 'Звычайны хамяк', 3,
'Самый крупный представитель подсемейства хомяков. Длина тела у взрослых самцов 27—34 см, хвоста 3—8 см, масса тела в среднем 700 г. Хвост толстый в основании, быстро утончается к концу, покрыт короткими и жёсткими волосами. Морда умеренной длины. Ушные раковины довольно короткие, покрыты тонкими, темноватыми волосами. Кисть и стопа широкие, а на пальцах хорошо развитые когти.','Cricetus cricetus.jpg', 40)

INSERT INTO Species VALUES('Европейский зубр', 'Bison bonasus', 'Еўрапейскi зубр', 3,
'Зубр является самым тяжёлым и крупным наземным млекопитающим Европы, но в то же время, уже в конце XIX века отмечалась тенденция к уменьшению размеров европейского зубра. Ещё в первой половине XX века встречались взрослые самцы беловежского подвида, достигавшие массы 1200 килограммов. Взрослые быки кавказского подвида были несколько легче — их масса в среднем составляла 480 кг, не превышая 700 килограммов у самых крупных животных. Современные зубры уступают в размерах как своим предкам (и их сохранившимся чучелам), жившим век назад, так и одному из подвидов американских бизонов — лесному бизону (Bison bison athabascae). Масса современных взрослых самцов беловежского подвида колеблется от 400 до 920 кг. В справочниках, впрочем, до настоящего времени указывается масса до 1000 кг. Выраженная разница в массе самцов и самок становится заметна к трём годам и сохраняется на протяжении всей жизни. Тёлочки при рождении в среднем весят около 24 кг против 28 кг у бычков. В первые три месяца жизни они удваивают свою массу, а к концу первого года она, в среднем, составляет 175 кг у коров и 190 килограммов у быков. К четырём годам быки весят в среднем около 467 кг против 341 кг у коров, а к 6 годам — быки в среднем весят 634 кг (от 436 до 840 кг), а коровы — 424 (от 340 до 540 кг).','Bison bonasus.jpg', 41)

/*Растения*/


INSERT INTO Species VALUES('Ликоподиелла заливаемая', 'Lycopodiella inundata (L.) Holub', 'Лiкападыела залiўная', 4,
'Плауно́к залива́емый, или Ликоподие́лла заливаемая, — многолетнее растение, вид рода Плаун семейства Плауновые', 'Lycopodiella inundata (L.) Holub.jpg', 42)

INSERT INTO Species VALUES('Баранец обыкновенный', 'Huperzia selago (L.) Bernh. ex Schrank et C. Mart.', 'Баранец звычайны', 4,
'Баране́ц обыкнове́нный, плау́н-баранец, или гупе́рция баранец, — травянистое растение; вид рода Баранец семейства Плауновые. Род Huperzia иногда выделяют в особое семейство Hyperziaceae Rothm','Lycopodium_selago.jpg', 43)

INSERT INTO Species VALUES('Полушник озёрный', 'Isoёtes lacustris L.', 'Палушнiк азёрны', 2,
'Многолетнее вечнозеленое водное разноспоровое растение с клубневидным корневищем, от которого пучком отходят многочисленные корни. Укороченный стебель скрыт в земле. Листья многочисленные, жесткие, тёмно-зелёные, шиловидные, разделяются на стерильные (внутренние) и фертильные (наружные с расширенным основанием, где находятся макро- и микроспорангии). Мегаспоры бугорчато-морщинистые. Сперматозоиды многожгутиковые.','Isoёtes lacustris L..jpg', 44)

INSERT INTO Species VALUES('Хвощ большой', 'Equisetum telmateia Ehrh.', 'Хвошч вялiкi', 1,
'Многолетнее споровое травянистое растение с длинным ветвистым ползучим корневищем и ребристым членистым стеблем высотой 25-120 см. Спороносные (весенние) стебли бурые, толстые, со стробилами длиной 3-8 см и влагалищами с 20-30 зубцами, неспороносные (летние) - зеленые, ветвистые, с большой центральной полостью; ветви простые, плотные, направленные косо вверх .', 'Equisetum telmateia Ehrh..jpg', 45)
 
INSERT INTO Species VALUES('Гроздовник многораздельный', 'Botrychium multifidum (S.G.Gmel.) Rupr.', 'Граздоўнік многараздзельны', 3,
'Многолетнее растение. Папоротник высотой от 5 до 25 см, с коротким корневищем и с пучком многочисленных шнуровидных придаточных корней и двумя вайями.','Botrychium multifidum (S.G.Gmel.) Rupr..jpg', 46)
INSERT INTO Species VALUES('Гроздовник простой', 'Botrychium simplex E. Hitchc', 'Граздоўнiк просты', 1,
'Многолетнее растение. Папоротник высотой от 5 до 25 см, с коротким корневищем и с пучком многочисленных шнуровидных придаточных корней и двумя вайями.','Botrychium simplex E. Hitchc.jpg', 46)

INSERT INTO Species VALUES('Чистоуст величавый', 'Osmunda regalis L.', 'Чыставуст каралеўскі', 1,
'Вайи высокие, широко-овальные, почти кожистые, без опушения, двояко перистые. Черешки желобчатые. Сегменты продолговатые (второго порядка иногда продолговато-ланцетные). Сегменты первого порядка почти супротивные. Сегменты второго порядка иногда оттянутые к верхушке, по краю густо мозолисто-зубчатые, иногда цельнокрайние или более менее зазубренные. Верхние сегменты собраны в конечную метёлку, плодущие, по всей поверхности покрыты сорусами. Жилки бесплодных сегментов входят в вырез между зубчиками','Osmunda regalis L..jpg', 47)

INSERT INTO Species VALUES('Многоножка обыкновенная', 'Polypodium vulgare L.', 'Мнаганожка звычайная', 4,
'Корневища включены в фармакопею Нидерландов, их используют в гомеопатии; в народной медицине применяют как мягчительное, отхаркивающее, аналгезирующее — при головной боли, подагре, гастралгии, артралгиях, ушибах (в виде компрессов); противовоспалительное, антисептическое, диуретическое, желчегонное (желчегонное действие подтверждено экспериментально), потогонное, слабительное. В Болгарии корневища используют при бронхопневмонии, в Великобритании — при эпилепсии.','Polypodium vulgare L..jpg', 48)

INSERT INTO Species VALUES('Костенец чёрный', 'Asplenium adiantum-nigrum L.', 'Касцянец чорны', 1,
'Вайи зимующие, вырастают до 30—40 см, их пластинки дважды или трижды перисторассечённые, ланцетные или овальные, заострённые, кожистые, более или менее блестящие, с удалёнными друг от друга и направленными вверх сегментами. Сегменты последнего порядка яйцевидные или обратнояйцевидные, отдалённые, по краям зубчатые. Черешок равен пластинке или длиннее её, в нижней части блестящий, чёрно-бурый.','Asplenium adiantum-nigrum L..jpg', 49)

INSERT INTO Species VALUES('Пузырник судетский', 'Cystopteris sudetica A. Br. et Milde', 'Пузырнік судэцкі', 1,
'Многолетнее  растение до 35–40 см высотой, с длинным,  тонким, ползучим, вильчато  ветвящимся корневищем  и  одиночными листьями  (вайями) на  концах   разветвлений. Черешок длиннее или  равен пластинке, тонкий, с чешуями у основания. Пластинка вайи трижды- перисторассеченная, широкоовальная или треугольно-яйцевидная. Нижние  перья продолговато-ланцетовидные, к основанию сужающиеся, на черешочках. Перышки последнего порядка продолговатые, островато- зубчатые. Сорусы округлые, мелкие; покрывальца округлые, железистые.','Cystopteris sudetica A. Br. et Milde.jpg', 50)

INSERT INTO Species VALUES('Многорядник Брауна', 'Polystichum braunii (Spenn.) Fée', 'Шматраднiк Браўна', 1,
'Многолетнее растение с часто зимующими листьями (вайями). Розетка отходит от косорастущего короткого толстого корневища. Вайи до 70 (100) см длиной, кожистые, блестящие, тёмно-зелёные, с обеих сторон покрытые волосками, оканчивающиеся длинными беловатыми щетинками, вдоль жилок и по стержню пластинки густо покрыты бурыми плёнками.','Polystichum braunii (Spenn.) Fée.jpg', 51)

INSERT INTO Species VALUES('Сальвиния плавающая', 'Salvinia natans (L.) All.', 'Сальвінія плаваючая', 4,
'Однолетнее растение с плавающим на поверхности воды тонким стеблем длиной до 15 см, на каждом узле которого находятся мутовки из трёх листьев. Два листа цельные, яйцевидно-эллиптической формы, со слегка сердцевидным основанием. Сверху они покрыты бородавочками, на верхушках которых находится пучок коротких толстых волосков, а нижняя поверхность густо покрыта бурыми волосками, удерживающими пузырьки воздуха, что позволяет сальвинии держаться на воде, Третий лист — подводный, он рассечён на нитевидные доли, покрытые волосками, очень похож на корни и выполняет их функции: всасывание воды и питательных веществ, а также стабилизацию растения.','Salvinia natans (L.) All..jpg', 52)

INSERT INTO Species VALUES('Пихта белая', 'Abies alba Mill.', 'Піхта белая', 1,
'Вечнозелёное дерево до 30—65 м высотой, со стволом диаметром до 2 метров.','Abies alba Mill..jpg', 53)

INSERT INTO Species VALUES('Кубышка малая', 'Nuphar pumila (Timm) DC.', 'Гарлачык малы', 2,
'Пластинки плавающих листьев до 17 см длиной, снизу коротковолосистые, черешки в верхней части почти плоские. Ширина листовой пластинки 6,3—10 см. Число главных жилок 9—14','Nuphar pumila (Timm) DC..jpg', 54)

INSERT INTO Species VALUES('Борец обыкновенный', 'Aconitum lycoctomum L.', 'Боцікі звычайныя', 1,
'Листья длиной до 15 и шириной до 25 см, сердцевидно и почковидно округлые, глубокопальчатораздельные, пушистые, особенно по краям и на нижней стороне по нервам.','Aconitum lycoctomum L..jpg', 55)

INSERT INTO Species VALUES('Хохлатка промежуточная', 'Corydalis intermedia (L.) Merat', 'Чубатка прамежкавая', 2,
'Многолетнее травянистое растение, весенний клубневой эфемероид. Клубень шаровидный, 8—15 мм в диаметре. Стебли обычно с плёнчатым листом в основании, прямостоячие, 5—15 см в высоту. Листья нежные, сизовато-зелёного цвета, в числе 2, длинночерешковые, дважды тройчатые, сегменты первого порядка на черешочках, их доли суженно-обратнояйцевидные, надрезанные на крупные тупые продолговато-линейные лопасти.','Corydalis intermedia (L.) Merat.jpg', 56)

INSERT INTO Species VALUES('Крапива киевская', 'Urtica kioviensis Rogow.', 'Крапіва кіеўская', 2	,
'Листья супротивные, цельные, продолговато-яйцевидной формы, с редкими жгучими волосками. Прилистники широкотреугольные, до 0,8 см шириной','Urtica kioviensis Rogow..jpg', 57)

INSERT INTO Species VALUES('Дуб скальный', 'Quercus petraea (Mattuschka) Liebl.', 'Дуб скальны', 2,
'Дуб скальный — большое листопадное дерево 20—(30)40 м высотой, со стволом, одетым такой же корой, как и у дуба черешчатого, и с такой же мощной шатровидной кроной. Характеризуется, по данным Ю. Н. Попа (2011), корневой системой с несколькими стержневыми корнями, проникающими, в зависимости от почвенно-гидрологических условий, на глубину от 0,01 м на каменистой поверхности до 38 м на серой лесной глубоко дренированной почве, что позволяет лучше адаптироваться к условиям по сравнению с дубом черешчатым, имеющим обычно один чётко выраженный стержневой корень.','Quercus petraea (Mattuschka) Liebl..jpg', 58)

INSERT INTO Species VALUES('Береза карликовая', 'Betula nana L.', 'Бяроза карлікавая', 2,
'Цветки мелкие, невзрачные, однополые. Тычиночные серёжки сидячие, прямостоячие, длиной 5—15 (до 20) мм, диаметром 1,5—2 мм, с жёлтыми пыльниками. Пестичные — на коротких опушённых ножках, овальные или удлинённо-яйцевидные, светло-коричневые, длиной 5—8 (при плодах до 12) мм, диаметром 3—5 (при плодах до 6) мм. Прицветные чешуйки длиной 2,5—3 мм, с тремя вверх направленными, линейно-продолговатыми, слабо реснитчатыми долями.','Betula nana L..jpg', 59)

INSERT INTO Species VALUES('Звездчатка толстолистная', 'Stellaria crassifolia Ehrh.', 'Зоркаўка таўсталістая', 2,
'Цветки, обоеполые, актиноморфные, до 20 мм в диаметре, в рыхлых дихазиальных соцветиях или одиночные в пазухах листьев. Прицветники перепончатые или травянистые (листовидные). Чашелистиков четыре — пять, они ланцетные или ланцетно-яйцевидные, голые, редко более или менее волосистые, сохраняющееся при плодах. Лепестков четыре — пять, белых, почти до основания или середины разделённых, реже едва надрезанных. Тычинок три — десять. Столбиков два — три. Завязь одногнёздная с многочисленными семязачатками.','Stellaria crassifolia Ehrh..jpg', 60)

INSERT INTO Species VALUES('Зверобой волосистый', 'Hypericum hirsutum L.', 'Святаяннік валасісты', 1,
'Многолетнее травянистое растение высотой 50-100 см. Стебли округлые, без продольных борозд, вместе с листьями и цветоножками мягко курчаво-пушистые от рыжевато-белых волосков. Листья продолговато-яйцевидные или эллиптические, длиной 1,7-6 см и шириной 1-2,7 см, тупые, без черных железок по краю, с укороченными черешками. Цветки многочисленные, собраны в неширокие метелки. Чашечка 4-5 мм длиной, глубоко раздельная, в 2-3 раза короче венчика; чашелистики голые, островатые. Лепестки желтые или бледно-желтые, неравнобокие, в верхней части с черными железками. Коробочка яйцевидная или продолговато-яйцевидная, коричневая, продольно-бороздчатая. Семена мелкие, длиной до 1 мм.','Hypericum hirsutum L..jpg', 61)

INSERT INTO Species VALUES('Повойничек водяной перец', 'Elatine hydropiper L.', 'Павойнічак вадзяны перац', 2,
'Небольшое растение с укореняющимися в узлах стеблями и мелкими лопатчатыми, суженными в длинный черешок листьями. Размножается вегетативно и семенами. Цветки пазушные, одиночные, мелкие. Семена буроватые, подковообразные, в шаровидной четырёхгнездной коробочке.','Elatine hydropiper L..jpg', 62)

INSERT INTO Species VALUES('Фиалка горная', 'Viola montana L.', 'Фіялка горная', 1,
'Травянистый многолетник с разветвленным подземным корневищем. Розеточные побеги высотой 5–15 см. Листья до 10 мм шириной и 65 мм длиной, длинночерешковые, яйцевидные или продолговато эллиптические, по краю городчатые, с 2–5 плоскими зубцами на каждой стороне; прилистники 2–3 см длиной, перистонадрезанные на 1–3 лопасти до 0.5 см длиной, рассеянно или густо волосистые. Цветоносы пазушные, голые, чашелистики продолговато-ланцетные, 0.8–1.3 см длиной, венчик диаметром 2–4 см, желтый или фиолетовый, реже белый или голубой, шпорец 4–9 мм длиной. Плод – коробочка, до 1 см длиной.','Viola montana L..jpg', 63)

INSERT INTO Species VALUES('Зубянка клубненосная', 'Dentaria bulbifera L.', 'Зубніца клубняносная', 4,
'Многолетнее травянистое растение высотой 40-60 см с прямостоячим стеблем и длинным разветвленным горизонтальным корневищем. Нижние стеблевые листья непарноперисторассеченные с 2-3 парами зубчатых листочков, самые верхние цельные. Соцветие - верхушечная кисть; цветки лилово-розовые или светло-фиолетовые, редко белые, диаметром 1,5-2,0 см. В пазухах листьев находятся фиолетово-бурые, черноватые или темно-зеленые луковички. Плоды – узкие стручочки длиной до 3 см.','Dentaria bulbifera L..jpg', 64)

INSERT INTO Species VALUES('Ива черничная', 'Salix myrtilloides L.', 'Вярба чарнічная', 3,
'Низкий прямостоящий кустарник, высота 30—80 см, иногда может достигать высоты 2 м, диаметр ствола до 3 см. Кора серого цвета снизу ствола. Молодые побеги голые, к одному году жизни приобретают желтовато-бурую или красновато-бурую окраску. Почки яйцевидной формы, тупые, оголённые. Побеги голые, желтовато-бурого или красновато-бурого цвета.','Salix myrtilloides L..jpg', 65)

INSERT INTO Species VALUES('Рододендрон желтый', 'Rhododendron luteum Sweet', 'Рададэндран жоўты', 3,
'Цветки на цветоножках длиной 1—2 см, собраны в 7—12-цветковые зонтиковидные щитки. Чашечка маленькая, с железисто-реснитчатыми долями длиной 2—5 мм; венчик оранжевый или жёлтый, снаружи железистый, длиной от 3 до 5 см, диаметром около 5 см, воронковидный, трубка венчика узкоцилиндрическая, наверху расширенная, доли продолговатые. Тычинок 5, изогнутых, превышающих венчик, нити их опушены от основания до половины; завязь железистая; столбик тонкий, длиннее тычинок.','Rhododendron luteum Sweet.jpg', 66)

INSERT INTO Species VALUES('Одноцветка одноцветковая', 'Moneses uniflora (L.) A.Gray', 'Аднацветка аднакветкавая', 3,
'Цветок поникающий, душистый, на длинной цветоножке, до 2 см в поперечнике, одиночный (с этим связано русское национальное название). Венчик белый, широко раскрытый, плоский, до 25 мм в поперечнике, лепестки простёртые, прямые или отогнутые. Чашечка зеленоватая. Лепестки белые, раскинуты в стороны. Пыльники с рожками. Пестик с толстым звёздчатым рыльцем. Цветёт в июне — июле.','Moneses uniflora (L.) A.Gray.jpg', 67)

INSERT INTO Species VALUES('Молочай мохнатый', 'Euphorbia villosa Waldst. et Kit.', 'Малачай махнаты', 1,
'Верхушечные цветоносы скученные, в числе 3(5), 0,3—8 см длиной, на конце коротко-трёхраздельные, после чего ещё двухраздельные. Листочки обёртки яйцевидные или продолговатые или обратнояйцевидные, (1,5)2—5,5 см длиной, по длине вначале равные лучам, 0,8—2,6 см шириной, тупые, более-менее волосистые, светло-жёлтые, в период цветения — оранжевые; листочки обёрточек из округлённого или суженного основания продолговато-яйцевидные или эллиптические, тупые или выемчатые, голые, во время цветения жёлтые, нижние по три равной величины, (1,2)1,5—3,5 см длиной, (0,5)0,9—2,1 см шириной, верхушечные по два уменьшенные; бокальчик колокольчатый, 1,5—2 мм длиной, 2—5,5 мм в диаметре, плёнчатый, голый, с равными ему яйцевидными, усечёнными, слегка выемчатыми долями. Нектарники обыкновенно в числе 3, поперечно-эллиптические, восково-жёлтые. Столбики 0,5—0,8 мм длиной, наполовину слившиеся, толсто двулопастные. Цветёт в мае 30―35 дней.','Euphorbia villosa Waldst. et Kit..jpg', 75)

INSERT INTO Species VALUES('Волчник боровой', 'Daphne cneorum L.', 'Воўчнік баравы', 1,
'Полувечнозеленый кустарник 15-40 см выс. с кожистыми многолетними листьями, в отдельные годы опадающими на зиму. Цветет с конца марта до мая. Осенью иногда наблюдается вторичное цветение. Размножается семенами и вегетативно. Живет более 200 лет.','Daphne cneorum L..jpg', 76)

INSERT INTO Species VALUES('Молодило русское', 'Sempervivum ruthenicum Schnittsp. et C.B.Lehm.', 'Скочкі рускія', 1,
'Многолетнее травянистое растение с утолщенным веретеновидным корневищем. Стебель прямостоячий, высотой 20-35 см, бороздчатый, с редким опушением из коротких железистых волосков. Все листья суккулентные, прикорневые собраны в плотные полушаровидные розетки, обратнояйцевидные, расширенные в верхней трети, заостренные, с обеих сторон железисто-волосистые; стеблевые листья очередные, расставленные, продолговато-ланцетные, опушенные. Соцветия рыхлые, щитковидные, чашечка из 10-14 сросшихся при основании чашелистиков, лепестки зеленовато-желтые, в числе 10-14, линейные, снаружи длинно- железистые. Плодики – листовки, многосемянные, продолговато-яйцевидные, с длинным прямым носиком. Цветёт в июле-августе. Энтомофил. Семена созревают во второй половине августа-сентябре. В естественных популяциях размножается преимущественно вегетативно (за счет боковых розеток, формирующихся на ползучих побегах), реже семенами. Анемохор и, возможно, мирмекохор.','Sempervivum ruthenicum Schnittsp. et C.B.Lehm..jpg', 77)

INSERT INTO Species VALUES('Камнеломка болотная', 'Saxifraga hirculus L.', '', 1,
'Многолетнее травянистое растение, 5—30 см высотой. Корневища короткие, тонкие, иногда с нитевидными столонами. Листья очерёдные, ланцетные, цельнокрайные, прикорневые — сужены в черешок, розеточные, остальные — сидячие.','Saxifraga hirculus L..jpg', 78)

INSERT INTO Species VALUES('Альдрованда пузырчатая', 'Aldrovanda vesiculosa L.', 'Альдраванда пухіраватая', 2,
'','Aldrovanda vesiculosa L..jpg', 79)

INSERT INTO Species VALUES('Кизильник черноплодный', 'Cotoneaster melanocarpus Fisch. ex Blytt', 'Кізільнік чарнаплодны', 2,
'Листопадный кустарник с раскидистой кроной, и ветвями шероховатыми от пробковых наростов. При хорошем освещении и увлажнении достигает 4 м в высоту и обильно цветет, образуя многоцветковые соцветия. И, напротив, на северном пределе распространения или на сухих открытых склонах он не достигает и 1 м в высоту или вообще имеет форму кустарничка с небольшим количеством цветков.','Cotoneaster melanocarpus Fisch. ex Blytt.jpg', 80)

INSERT INTO Species VALUES('Горошек гороховидный', 'Vicia pisiformis L.', 'Гарошак гарохападобны', 1,
'Многолетнее травянистое растение со слабым ребристым лазящим стеблем длиной 60-200 (310) см. Листья парноперистосложные, с 3-5 парами листочков, оканчиваются ветвистым усиком. Листочки широкояйцевидные, на конце тупые или усеченные, коротко заострены, длиной 2-4 см и шириной 1-3,5 см, нижняя пара крупнее остальных и приближена к основанию листа. Прилистники длиной до 11 мм. Цветки длиной около 1,5 см, собраны в рыхлые пазушные кисти из 10-15 цветков. Венчик бледно-желтый, позднее буреющий. Бобы продолговато-линейные, длиной до 3,5 см. Семена шаровидные. Цветёт в июне-июле (начале августа). Энтомофил. Семена созревают в августе. Автомеханохор. Размножение семенное.','Vicia pisiformis L..jpg', 81)

INSERT INTO Species VALUES('Водяной орех плавающий', 'Trapa natans L.s.l.', 'Вадзяны арэх плаваючы', 3,
'Растение имеет два типа листьев: первый тип — подводные — супротивные, линейные, расположены вдоль стебля выше корней, находятся в толще воды; второй — плавающие на поверхности. Плавающие листья находятся на конце стебля, образуют розетку. Листовые пластинки овальной или ромбической формы, кожистые, неравнозубчатые по краям, 2—3 см длиной, располагаются на вздутых ко времени созревания плодов черешках 5—9 см длиной, обеспечивающих им дополнительную плавучесть.','Trapa natans L.s.l..jpg', 82)

INSERT INTO Species VALUES('Плющ обыкновенный', 'Hedera helix L.', 'Плюшч звычайны', 2,
'Листья имеет кожистые, голые, блестящие, на бесплодных побегах сердцевидные, на цветоносных ветках — цельные ромбовидно-яйцевидные.','Hedera helix L..jpg', 83)

INSERT INTO Species VALUES('Астранция большая', 'Astrantia major L.', '	Астранцыя вялікая', 1,
'','Astrantia major L..jpg', 84)

INSERT INTO Species VALUES('Ленец бесприцветничковый', 'Thesium ebracteatum Hayne', 'Ядранец беспрыкветнiкавы', 4,
'Цветки обоеполые, зеленоватые, с четырёхдольчатым или пятидольчатым, не разделённым на чашечку и венчик, околоцветником. Располагаются на концах коротких цветоносов или непосредственно в пазухах верхних листьев (прицветников). Тычинки обычно в числе 5, приросшие к основанию долей околоцветника, с продолговатыми пыльниками. Пестик состоит из тонкого столбика и обычно трёхдольчатого рыльца.','Thesium ebracteatum Hayne.jpg', 85)

INSERT INTO Species VALUES('Омела австрийская', 'Viscum austriacum Wiesb.', 'Амела аўстрыйская', 2,
'','Viscum austriacum Wiesb..jpg', 86)

INSERT INTO Species VALUES('Линнея северная', 'Linnaea borealis L.', 'Лінея паўночная', 3,
'','Linnaea borealis L..jpg', 87)

INSERT INTO Species VALUES('Валериана двудомная', 'Valeriana dioica L.', 'Валер’ян двухдомны', 1,
'','Valeriana dioica L..jpg', 88)

INSERT INTO Species VALUES('Скабиоза голубиная', 'Scabiosa columbaria L.', 'Скабіёза галубковая', 1,
'','Scabiosa columbaria L..jpg', 89)

INSERT INTO Species VALUES('Сверция многолетняя', 'Swertia perennis L.', 'Сверцыя шматгадовая', 1,
'','Swertia perennis L..jpg', 90)

INSERT INTO Species VALUES('Болотноцветник щитолистный', 'Nymphoides peltata (S.G.Gmel.) O.Kuntze', 'Балатнакветнік шчыталісты', 1,
'','Nymphoides peltata (S.G.Gmel.) O.Kuntze.jpg', 91)

INSERT INTO Species VALUES('Подмаренник трехцветковый', 'Galium triflorum Michx.', 'Павіліца трохкветкавая', 1,
'','Galium triflorum Michx..jpg', 92)

INSERT INTO Species VALUES('Воробейник лекарственный', 'Lithospermum officinale L.', 'Верабейнік лекавы', 3,
'','Lithospermum officinale L..jpg', 93)

INSERT INTO Species VALUES('Мытник Кауфмана', 'Pedicularis kaufmannii Pinzg.', 'Увярэднік Каўфмана', 1,
'','Pedicularis kaufmannii Pinzg..jpg', 94)

INSERT INTO Species VALUES('Заразиха сетчатая', 'Orobanche reticulata Wallir.', 'Заразіха cеткаватая', 1,
'','Orobanche reticulata Wallir..jpg', 95)

INSERT INTO Species VALUES('Жирянка обыкновенная', 'Pinguicula vulgaris L.', 'Тлушчанка звычайная', 1,
'','Pinguicula vulgaris L..jpg', 96)

INSERT INTO Species VALUES('Прибрежница одноцветковая', 'Littorella uniflora (L.) Aschers.', 'Прыбярэжнік аднакветкавы', 1,
'','Littorella uniflora (L.) Aschers..jpg', 97)

INSERT INTO Species VALUES('Живучка пирамидальная', 'Ajuga pyramidalis L.', 'Гарлянка пірамідальная', 4,
'','Ajuga pyramidalis L..jpg', 98)

INSERT INTO Species VALUES('Кольник черный', 'Phyteuma nigrum F.W.Schmidt', 'Кольнік чорны', 1,
'','Phyteuma nigrum F.W.Schmidt.jpg', 99)

INSERT INTO Species VALUES('Лобелия Дортманна', 'Lobelia dortmanna L.', 'Лабелія Дортмана', 1,
'','Lobelia dortmanna L..jpg', 100)

INSERT INTO Species VALUES('Арника горная', 'Arnica montana L.', 'Арнiк горны', 4,
'','Arnica montana L..jpg', 101	)

INSERT INTO Species VALUES('Каулиния гибкая', 'Caulinia flexilis Willd.', 'Каўлінія гнуткая', 1,
'','Caulinia flexilis Willd..jpg', 102)

INSERT INTO Species VALUES('Лилия кудреватая', 'Lilium martagon L.', 'Лілея кучаравая', 4,
'','Lilium martagon L..jpg', 103)

INSERT INTO Species VALUES('Лук скорода', 'Allium schoenoprasum L.', 'Цыбуля скарада', 2,
'','Allium schoenoprasum L..jpg', 104)

INSERT INTO Species VALUES('Венерин башмачок настоящий', 'Cypripedium calceolus L.', 'Венерын чаравічак сапраўдны', 3,
'','Cypripedium calceolus L..jpg', 105)

INSERT INTO Species VALUES('Осока корневищная', 'Carex rhizina Blytt ex Lindbl.', 'Асака карэнішчавая', 4,
'','Carex rhizina Blytt ex Lindbl..jpg', 106)

INSERT INTO Species VALUES('Меркия ирландская', 'Moerckia hibernica (Hook.) Gott.', 'Меркія ірландская', 1,
'','Moerckia hibernica (Hook.) Gott..jpg', 107)

INSERT INTO Species VALUES('Гимноколея вздутая', 'Gymnocolea inflata (Huds.) Dum.', 'Гімнакалея ўздутая', 2,
'','Gymnocolea inflata (Huds.) Dum..jpg', 108)

INSERT INTO Species VALUES('Скапания заостренная', 'Scapania apiculata Spruce', 'Скапанія завостраная', 2,
'','Scapania apiculata Spruce.jpg', 109)

INSERT INTO Species VALUES('Цефалозия ленточная', 'Cephalozia catenulata (Hueb.) Lindb.', 'Цэфалозія стужкавая', 3,
'','Cephalozia catenulata (Hueb.) Lindb..jpg', 110)

INSERT INTO Species VALUES('Цефалозиелла нежненькая', 'Cephaloziella elachista (Jack ex Gott. et Rabenh.) Schiffn.', 'Цэфалазiелла пяшчотненькая', 2,
'','Cephaloziella elachista (Jack ex Gott. et Rabenh.) Schiffn..jpg', 111)

INSERT INTO Species VALUES('Порелла плосколистная', 'Porella platyphylla (L.) Preiff.', 'Парэла пласкалістая', 3,
'','Porella platyphylla (L.) Preiff..jpg', 112)

INSERT INTO Species VALUES('Риччия желобчатая', 'Riccia canaliculata Hoffm.', 'Рычыя жалабатая', 3,
'','Riccia canaliculata Hoffm..jpg', 113)

INSERT INTO Species VALUES('Сфагнум мягкий', 'Sphagnum molle Sull.', 'Сфагнум мяккі', 3,
'','Sphagnum molle Sull..jpg', 114)

INSERT INTO Species VALUES('Андрея скальная', 'Andreaea rupestris Hedw.', 'Андрэя скальная', 1,
'','Andreaea rupestris Hedw..jpg', 115)

INSERT INTO Species VALUES('Кампилопус извилистый', 'Campylopus flexuosus (Hedw.) Brid.', 'Кампiлопус звiлiсты', 1,
'','Campylopus flexuosus (Hedw.) Brid..jpg', 116)

INSERT INTO Species VALUES('Дикранум зеленый', 'Dicranum viride (Sull. et Lesq. in Sull.) Lindb.', 'Дыкранум зялёны', 3,
'','Dicranum viride (Sull. et Lesq. in Sull.) Lindb..jpg', 117)

INSERT INTO Species VALUES('Тортелла извилистая', 'Tortella tortuosa (Hedw.) Limpr.', 'Тартэла звілістая', 2,
'','Tortella tortuosa (Hedw.) Limpr..jpg', 118)

INSERT INTO Species VALUES('Цинклидотус дунайский', 'Cinclidotus danubicus Schiffn. et Baumb.', 'Цынклідотус дунайскі', 1,
'','Cinclidotus danubicus Schiffn. et Baumb..jpg', 119)

INSERT INTO Species VALUES('Меезия трехгранная', 'Meesia triquetra (Jolycl.) Aongstr.', 'Меезія трохгранная', 2,
'','Meesia triquetra (Jolycl.) Aongstr..jpg', 120)

INSERT INTO Species VALUES('Ортотрихум Лайеля', 'Orthotrichum lyellii Hook. et Tayl.', 'Артотрыхум Лайеля', 2,
'','Orthotrichum lyellii Hook. et Tayl..jpg', 121)

INSERT INTO Species VALUES('Бриум Шлейхера', 'Bryum schleicheri DC.', 'Брыум Шлейхера', 2,
'','Bryum schleicheri DC..jpg', 122)

INSERT INTO Species VALUES('Псевдобриум цинклидиевидный', 'Pseudobryum cinclidioides (Hueb.) T.J. Kop.', 'Псеўдабрыум цынклідыяпадобны', 3,
'','Pseudobryum cinclidioides (Hueb.) T.J. Kop..jpg', 123)

INSERT INTO Species VALUES('Дихелима серповидная', 'Dichelyma falcatum (Hedw.) Myr.', 'Дыхелiна серпападобная', 1,
'','Dichelyma falcatum (Hedw.) Myr..jpg', 124)

INSERT INTO Species VALUES('Плагиотециум волнистый', 'Plagiothecium undulatum (Hedw.) Bruch et al.', 'Плагiятэцыум хвалiсты', 1,
'','Plagiothecium undulatum (Hedw.) Bruch et al..jpg', 125)

INSERT INTO Species VALUES('Птеригинандрум нитевидный', 'Pterigynandrum filiforme Hedw.', 'Птэрыгінандрум ніткападобны', 2,
'','Pterigynandrum filiforme Hedw..jpg', 126)

INSERT INTO Species VALUES('Неккера перистая', 'Neckera pennata Hedw.', 'Някера перыстая', 4,
'','Neckera pennata Hedw..jpg', 127)

INSERT INTO Species VALUES('Ринхостегиум стенной', 'Rhynchostegium murale (Hedw.) Bruch et al.', 'Рынхастэгіум сцянны', 1,
'','Rhynchostegium murale (Hedw.) Bruch et al..jpg', 128)

INSERT INTO Species VALUES('Гаплокладиум мелколистный', 'Haplocladium microphyllum (Hedw.) Broth.', 'Гаплакладыум дробналісты', 3,
'','Haplocladium microphyllum (Hedw.) Broth..jpg', 129)

INSERT INTO Species VALUES('Псевдокаллиергон плауновидный', 'Pseudocalliergon lycopodioides (Brid.) Warnst.', 'Псеўдакаліергон дзеразападобны', 2,
'','Pseudocalliergon lycopodioides (Brid.) Warnst..jpg', 130)

INSERT INTO Species VALUES('Носток сливовидный', 'Nostoc pruniforme Agardh C. A.', 'Насток слівападобны', 3,
'','Nostoc pruniforme Agardh C. A..jpg', 131)

INSERT INTO Species VALUES('Хризоликос планктонный', 'Chrysolykos planktonicus var. recticollis Nauwerck A.', 'Хрызалікас планктонны', 1,
'','Chrysolykos planktonicus var. recticollis Nauwerck A..jpg', 132)

INSERT INTO Species VALUES('Фрагилярия аркообразная', 'Fragilaria arcus (Ehrenberg) Cleve', 'Фрагілярыя аркападобная', 3,
'','Fragilaria arcus (Ehrenberg) Cleve.jpg', 133)

INSERT INTO Species VALUES('Пиннулария полионка', 'Pinnularia polyonca (Brébisson) W. Smith', 'Піннуларыя паліёнка', 1,
'','Pinnularia polyonca (Brébisson) W. Smith.jpg', 134)

INSERT INTO Species VALUES('Цимбелла изогнутая', 'Cymbella ancyli Cleve', 'Цымбела выгнутая', 1,
'','Cymbella ancyli Cleve.jpg', 135)

INSERT INTO Species VALUES('Стеноптеробия нежнейшая', 'Stenopterobia delicatissima (Lewis) Brébisson ex Van Heurck', 'Стэнаптэробія пяшчотненькая', 2,
'','Stenopterobia delicatissima (Lewis) Brébisson ex Van Heurck.jpg', 136)

INSERT INTO Species VALUES('Кладофора эгагропильная', 'Cladophora aegagropila (Linnaeus) Rabenhorst', 'Кладофара эгаграпільная', 3,
'','Cladophora aegagropila (Linnaeus) Rabenhorst.jpg', 137)

INSERT INTO Species VALUES('Хара войлочная', 'Chara tomentosa Linnaeus C.', 'Хара лямцавая', 3,
'','Chara tomentosa Linnaeus C..jpg', 138)

INSERT INTO Species VALUES('Нителла грациозная', 'Nitella gracilis (Smith J. E.) Agardh C. A.', 'Нітэла грацыёзная', 3,
'','Nitella gracilis (Smith J. E.) Agardh C. A..jpg', 139)

INSERT INTO Species VALUES('Нителлопсис притупленный', 'Nitellopsis obtusa (Desvaux A.N.) Groves J.', 'Нітэлопсіс прытуплены', 3,
'','Nitellopsis obtusa (Desvaux A.N.) Groves J..jpg', 140)

INSERT INTO Species VALUES('Порфиридиум багряный', 'Porphyridium purpureum (Bory) Drew et Ross', 'Парфірыдзіум чырвоны', 3,
'','Porphyridium purpureum (Bory) Drew et Ross.jpg', 141)

INSERT INTO Species VALUES('Батрахоспермум четковидный', 'Batrachospermum moniliforme Roth A. W.', 'Батрахаспермум ружанцападобны', 2,
'','Batrachospermum moniliforme Roth A. W..jpg', 142)

INSERT INTO Species VALUES('Гильденбрандтия речная', 'Hildenbrandtia rivularis (Liebm.) Agardh J.', 'Гільдэнбрандтыя рачная', 3,
'','Hildenbrandtia rivularis (Liebm.) Agardh J..jpg', 143)

INSERT INTO Species VALUES('Калициум усыпанный', 'Calicium adspersum Pers.', 'Каліцыум абсыпаны', 2,
'','Calicium adspersum Pers..jpg', 144)

INSERT INTO Species VALUES('Хенотека зеленоватая', 'Chaenotheca chlorella (Ach.) Müll. Arg.', 'Хенатэка зеленаватая', 2,
'','Chaenotheca chlorella (Ach.) Müll. Arg..jpg', 145)

INSERT INTO Species VALUES('Лептогиум лишайниковидный', 'Leptogium lichenoides (L.) Zahlbr.', 'Лептогіум лішайнікападобны', 2,
'','Leptogium lichenoides (L.) Zahlbr..jpg', 146)

INSERT INTO Species VALUES('Кладония листоватая', 'Cladonia foliacea (Huds.) Willd.', 'Кладонія ліставатая', 2,
'','Cladonia foliacea (Huds.) Willd..jpg', 147)

INSERT INTO Species VALUES('Гипотрахина отогнутая', 'Hypotrachyna revoluta (Flörke) Hale', 'Гіпатрахіна адагнутая', 3,
'','Hypotrachyna revoluta (Flörke) Hale.jpg', 148)

INSERT INTO Species VALUES('Рамалина трауста', 'Ramalina thrausta (Ach.) Nyl.', 'Рамаліна трауста', 2,
'','Ramalina thrausta (Ach.) Nyl..jpg', 149)

INSERT INTO Species VALUES('Умбиликария обугленная', 'Umbilicaria deusta (L.) Baumg.', 'Умбілікарыя апаленая', 1,
'','Umbilicaria deusta (L.) Baumg..jpg', 150)

INSERT INTO Species VALUES('Ризокарпон географический', 'Rhizocarpon geographicum (L.) DC.', 'Рызакарпан геаграфiчны', 2,
'','Rhizocarpon geographicum (L.) DC..jpg', 151)

INSERT INTO Species VALUES('Лобария легочная', 'Lobaria pulmonaria (L.) Hoffm.', 'Лабарыя лёгачная', 3,
'','Lobaria pulmonaria (L.) Hoffm..jpg', 152)

INSERT INTO Species VALUES('Пельтигера горизонтальная', 'Peltigera horizontalis (Huds.) Baumg.', 'Пельтыгера гарызантальная', 2,
'','Peltigera horizontalis (Huds.) Baumg..jpg', 153)

INSERT INTO Species VALUES('Спатулярия булавовидная', 'Spathularia flavida Pers.', 'Спатулярыя булавападобная', 2,
'','Spathularia flavida Pers..jpg', 154)

INSERT INTO Species VALUES('Гиднотрия Тюляна', 'Hydnotrya tulasnei (Berk.) Berk. & Broome', 'Гіднотрыя Цюляна', 2,
'','Hydnotrya tulasnei (Berk.) Berk. & Broome.jpg', 155)

INSERT INTO Species VALUES('Стефензия атласная', 'Stephensia bombycina (Vittad.) Tul.', 'Стэфензія атласная', 2,
'','Stephensia bombycina (Vittad.) Tul..jpg', 156)

INSERT INTO Species VALUES('Трюфель Борха', 'Tuber borchii Vittad.', 'Труфля Борха', 2,
'','Tuber borchii Vittad..jpg', 157)

INSERT INTO Species VALUES('Ожибвайя красивая', 'Ojibwaya perpuchra B. Sutton.', 'Ажыбвайя прыгожая', 2,
'','Ojibwaya perpuchra B. Sutton..jpg', 158)

INSERT INTO Species VALUES('Гриб-зонтик девичий', 'Leucoagaricus nympharum (Kalchbr.) Bon', 'Грыб-парасонік дзявочы', 2,
'','Leucoagaricus nympharum (Kalchbr.) Bon.jpg', 159)

INSERT INTO Species VALUES('Гигрофор дубравный', 'Hygrophorus nemoreus (Pers.) Fr.', 'Гіграфор дубраўны', 2,
'','Hygrophorus nemoreus (Pers.) Fr..jpg', 160)

INSERT INTO Species VALUES('Калоцибе фиалковая', 'Rugosomyces ionides (Bull.) Bon', 'Калоцыбе фіялкавая', 3,
'','Rugosomyces ionides (Bull.) Bon.jpg', 161)

INSERT INTO Species VALUES('Лисичка серая', 'Cantharellus cinereus (Pers.) Fr.', 'Лісічка шэрая', 3,
'','Cantharellus cinereus (Pers.) Fr..jpg', 162)

INSERT INTO Species VALUES('Паутинник двуцветный', 'Cortinarius cagei Melot', 'Павуцiннiк двухкаляровы', 2,
'','Cortinarius cagei Melot.jpg', 163)

INSERT INTO Species VALUES('Клавариадельфус пестиковый', 'Clavariadelphus pistillaris (L.) Donk', 'Клаварыядэльфус песцікавы', 3,
'','Clavariadelphus pistillaris (L.) Donk.jpg', 164)

INSERT INTO Species VALUES('Спарассис курчавый', 'Sparassis crispa (Wulfen) Fr.', 'Спарасіс кучаравы', 4,
'','Sparassis crispa (Wulfen) Fr..jpg', 165)

INSERT INTO Species VALUES('Фистулина печеночная', 'Fistulina hepatica (Schaeff.) With.', 'Фістуліна пячоначная', 2,
'','Fistulina hepatica (Schaeff.) With..jpg', 166)

INSERT INTO Species VALUES('Ганодерма блестящая', 'Ganoderma lucidum (Curtis) P. Karst.', 'Ганадэрма бліскучая', 3,
'','Ganoderma lucidum (Curtis) P. Karst..jpg', 167)

INSERT INTO Species VALUES('Гериций коралловидный', 'Hericium coralloides (Scop.) Pers.', 'Герыцый каралападобны', 3,
'','Hericium coralloides (Scop.) Pers..jpg', 168)

INSERT INTO Species VALUES('Сцитинострома душистая', 'Scytinostroma odoratum (Fr.) Donk', 'Сцыцінастрома духмяная', 3,
'','Scytinostroma odoratum (Fr.) Donk.jpg', 169)

INSERT INTO Species VALUES('Кальвация гигантская', 'Calvatia gigantea (Batsch) Lloyd', 'Порхаўка вялізная', 4,
'','Calvatia gigantea (Batsch) Lloyd.jpg', 170)

INSERT INTO Species VALUES('Земляная звезда полевая', 'Geastrum campestre Morgan', 'Земляная зорка палявая', 2,
'','Geastrum campestre Morgan.jpg', 171)

INSERT INTO Species VALUES('Грифола многошляпочная', 'Grifola frondosa (Dicks.) Gray', 'Грыфала мнагашапкавая', 3,
'','Grifola frondosa (Dicks.) Gray.jpg', 172)

INSERT INTO Species VALUES('Фомитопсис розовый', 'Fomitopsis rosea (Alb. & Schwein.) P. Karst.', 'Фамітопсіс ружовы', 2,
'','Fomitopsis rosea (Alb. & Schwein.) P. Karst..jpg', 173)

INSERT INTO Species VALUES('Пикнопорус киноварно-красный', 'Pycnoporus cinnabarinus (Jacq.) P. Karst.', 'Пікнапорус кінаварна-чырвоны', 2,
'','Pycnoporus cinnabarinus (Jacq.) P. Karst..jpg', 174)

INSERT INTO Species VALUES('Флебия бело-медовая', 'Auriculariopsis albomellea (Bondartsev) Kotl.', 'Флебія бела-мядовая', 2,
'','Auriculariopsis albomellea (Bondartsev) Kotl..jpg', 175)

INSERT INTO Species VALUES('Систотрема тёрковидная', 'Sistotrema raduloides (P. Karst.) Donk', 'Сістатрэма таркападобная', 3,
'','Sistotrema raduloides (P. Karst.) Donk.jpg', 176)

INSERT INTO Species VALUES('Банкера черно-белая', 'Bankera fuligineoalba (J. C. Schmidt) Coker & Beers ex Pouzar', 'Банкера чорна-белая', 2,
'','Bankera fuligineoalba (J. C. Schmidt) Coker & Beers ex Pouzar.jpg', 177)


 select * from Species

 INSERT INTO Roles VALUES('Admin', 'Администратор')
 INSERT INTO Accounts VALUES('a', 'a', 'a', 'a')
 INSERT INTO AccountRoles VALUES(1, 1)
 
 delete from Accounts
 /*test data*/	

 select * from AccountRoles

 
 select * from Accounts
 go
 INSERT INTO Observations VALUES(54.199362, 27.846251, GETDATE(), 'Здесь живет одно жывотное', 12, 1)
 INSERT INTO Observations VALUES(55.199362, 26.846251, GETDATE(), 'Хвощ', 15, 1)