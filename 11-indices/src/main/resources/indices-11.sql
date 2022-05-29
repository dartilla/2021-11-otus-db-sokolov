drop index if exists customer_idx_name;
drop index if exists customer_idx_fullTextName;
drop index if exists customer_idx_md5_name;
drop index if exists customer_idx_name_email;

-- пролил таблицу данными
delete from customer where id > 1000;
INSERT INTO customer(id, name, email) VALUES (1010, 'Bette Nicholson', 'Bette_Nicholson@google.com');
INSERT INTO customer(id, name, email) VALUES (1011, 'Grace Mostel', 'Grace_Mostel@google.com');
INSERT INTO customer(id, name, email) VALUES (1012, 'Matthew Johansson', 'Matthew_Johansson@google.com');
INSERT INTO customer(id, name, email) VALUES (1013, 'Joe Swank', 'Joe_Swank@google.com');
INSERT INTO customer(id, name, email) VALUES (1014, 'Christian Gable', 'Christian_Gable@google.com');
INSERT INTO customer(id, name, email) VALUES (1015, 'Zero Cage', 'Zero_Cage@google.com');
INSERT INTO customer(id, name, email) VALUES (1016, 'Karl Berry', 'Karl_Berry@google.com');
INSERT INTO customer(id, name, email) VALUES (1017, 'Uma Wood', 'Uma_Wood@google.com');
INSERT INTO customer(id, name, email) VALUES (1018, 'Vivien Bergen', 'Vivien_Bergen@google.com');
INSERT INTO customer(id, name, email) VALUES (1019, 'Cuba Olivier', 'Cuba_Olivier@google.com');
INSERT INTO customer(id, name, email) VALUES (1020, 'Fred Costner', 'Fred_Costner@google.com');
INSERT INTO customer(id, name, email) VALUES (1021, 'Helen Voight', 'Helen_Voight@google.com');
INSERT INTO customer(id, name, email) VALUES (1022, 'Dan Torn', 'Dan_Torn@google.com');
INSERT INTO customer(id, name, email) VALUES (1023, 'Bob Fawcett', 'Bob_Fawcett@google.com');
INSERT INTO customer(id, name, email) VALUES (1024, 'Lucille Tracy', 'Lucille_Tracy@google.com');
INSERT INTO customer(id, name, email) VALUES (1025, 'Kirsten Paltrow', 'Kirsten_Paltrow@google.com');
INSERT INTO customer(id, name, email) VALUES (1026, 'Elvis Marx', 'Elvis_Marx@google.com');
INSERT INTO customer(id, name, email) VALUES (1027, 'Sandra Kilmer', 'Sandra_Kilmer@google.com');
INSERT INTO customer(id, name, email) VALUES (1028, 'Cameron Streep', 'Cameron_Streep@google.com');
INSERT INTO customer(id, name, email) VALUES (1029, 'Kevin Bloom', 'Kevin_Bloom@google.com');
INSERT INTO customer(id, name, email) VALUES (1030, 'Rip Crawford', 'Rip_Crawford@google.com');
INSERT INTO customer(id, name, email) VALUES (1031, 'Julia Mcqueen', 'Julia_Mcqueen@google.com');
INSERT INTO customer(id, name, email) VALUES (1032, 'Woody Hoffman', 'Woody_Hoffman@google.com');
INSERT INTO customer(id, name, email) VALUES (1033, 'Alec Wayne', 'Alec_Wayne@google.com');
INSERT INTO customer(id, name, email) VALUES (1034, 'Sandra Peck', 'Sandra_Peck@google.com');
INSERT INTO customer(id, name, email) VALUES (1035, 'Sissy Sobieski', 'Sissy_Sobieski@google.com');
INSERT INTO customer(id, name, email) VALUES (1036, 'Tim Hackman', 'Tim_Hackman@google.com');
INSERT INTO customer(id, name, email) VALUES (1037, 'Milla Peck', 'Milla_Peck@google.com');
INSERT INTO customer(id, name, email) VALUES (1038, 'Audrey Olivier', 'Audrey_Olivier@google.com');
INSERT INTO customer(id, name, email) VALUES (1039, 'Judy Dean', 'Judy_Dean@google.com');
INSERT INTO customer(id, name, email) VALUES (1040, 'Burt Dukakis', 'Burt_Dukakis@google.com');
INSERT INTO customer(id, name, email) VALUES (1041, 'Val Bolger', 'Val_Bolger@google.com');
INSERT INTO customer(id, name, email) VALUES (1042, 'Tom Mckellen', 'Tom_Mckellen@google.com');
INSERT INTO customer(id, name, email) VALUES (1043, 'Goldie Brody', 'Goldie_Brody@google.com');
INSERT INTO customer(id, name, email) VALUES (1044, 'Johnny Cage', 'Johnny_Cage@google.com');
INSERT INTO customer(id, name, email) VALUES (1045, 'Jodie Degeneres', 'Jodie_Degeneres@google.com');
INSERT INTO customer(id, name, email) VALUES (1046, 'Tom Miranda', 'Tom_Miranda@google.com');
INSERT INTO customer(id, name, email) VALUES (1047, 'Kirk Jovovich', 'Kirk_Jovovich@google.com');
INSERT INTO customer(id, name, email) VALUES (1048, 'Nick Stallone', 'Nick_Stallone@google.com');
INSERT INTO customer(id, name, email) VALUES (1049, 'Reese Kilmer', 'Reese_Kilmer@google.com');
INSERT INTO customer(id, name, email) VALUES (1050, 'Parker Goldberg', 'Parker_Goldberg@google.com');
INSERT INTO customer(id, name, email) VALUES (1051, 'Julia Barrymore', 'Julia_Barrymore@google.com');
INSERT INTO customer(id, name, email) VALUES (1052, 'Frances Day-Lewis', 'Frances_Day-Lewis@google.com');
INSERT INTO customer(id, name, email) VALUES (1053, 'Anne Cronyn', 'Anne_Cronyn@google.com');
INSERT INTO customer(id, name, email) VALUES (1054, 'Natalie Hopkins', 'Natalie_Hopkins@google.com');
INSERT INTO customer(id, name, email) VALUES (1055, 'Gary Phoenix', 'Gary_Phoenix@google.com');
INSERT INTO customer(id, name, email) VALUES (1056, 'Carmen Hunt', 'Carmen_Hunt@google.com');
INSERT INTO customer(id, name, email) VALUES (1057, 'Mena Temple', 'Mena_Temple@google.com');
INSERT INTO customer(id, name, email) VALUES (1058, 'Penelope Pinkett', 'Penelope_Pinkett@google.com');
INSERT INTO customer(id, name, email) VALUES (1059, 'Fay Kilmer', 'Fay_Kilmer@google.com');
INSERT INTO customer(id, name, email) VALUES (1060, 'Dan Harris', 'Dan_Harris@google.com');
INSERT INTO customer(id, name, email) VALUES (1061, 'Jude Cruise', 'Jude_Cruise@google.com');
INSERT INTO customer(id, name, email) VALUES (1062, 'Christian Akroyd', 'Christian_Akroyd@google.com');
INSERT INTO customer(id, name, email) VALUES (1063, 'Dustin Tautou', 'Dustin_Tautou@google.com');
INSERT INTO customer(id, name, email) VALUES (1064, 'Henry Berry', 'Henry_Berry@google.com');
INSERT INTO customer(id, name, email) VALUES (1065, 'Christian Neeson', 'Christian_Neeson@google.com');
INSERT INTO customer(id, name, email) VALUES (1066, 'Jayne Neeson', 'Jayne_Neeson@google.com');
INSERT INTO customer(id, name, email) VALUES (1067, 'Cameron Wray', 'Cameron_Wray@google.com');
INSERT INTO customer(id, name, email) VALUES (1068, 'Ray Johansson', 'Ray_Johansson@google.com');
INSERT INTO customer(id, name, email) VALUES (1069, 'Angela Hudson', 'Angela_Hudson@google.com');
INSERT INTO customer(id, name, email) VALUES (1070, 'Mary Tandy', 'Mary_Tandy@google.com');
INSERT INTO customer(id, name, email) VALUES (1071, 'Jessica Bailey', 'Jessica_Bailey@google.com');
INSERT INTO customer(id, name, email) VALUES (1072, 'Rip Winslet', 'Rip_Winslet@google.com');
INSERT INTO customer(id, name, email) VALUES (1073, 'Kenneth Paltrow', 'Kenneth_Paltrow@google.com');
INSERT INTO customer(id, name, email) VALUES (1074, 'Michelle Mcconaughey', 'Michelle_Mcconaughey@google.com');
INSERT INTO customer(id, name, email) VALUES (1075, 'Adam Grant', 'Adam_Grant@google.com');
INSERT INTO customer(id, name, email) VALUES (1076, 'Sean Williams', 'Sean_Williams@google.com');
INSERT INTO customer(id, name, email) VALUES (1077, 'Gary Penn', 'Gary_Penn@google.com');
INSERT INTO customer(id, name, email) VALUES (1078, 'Milla Keitel', 'Milla_Keitel@google.com');
INSERT INTO customer(id, name, email) VALUES (1079, 'Burt Posey', 'Burt_Posey@google.com');
INSERT INTO customer(id, name, email) VALUES (1080, 'Angelina Astaire', 'Angelina_Astaire@google.com');
INSERT INTO customer(id, name, email) VALUES (1081, 'Cary Mcconaughey', 'Cary_Mcconaughey@google.com');
INSERT INTO customer(id, name, email) VALUES (1082, 'Groucho Sinatra', 'Groucho_Sinatra@google.com');
INSERT INTO customer(id, name, email) VALUES (1083, 'Mae Hoffman', 'Mae_Hoffman@google.com');
INSERT INTO customer(id, name, email) VALUES (1084, 'Ralph Cruz', 'Ralph_Cruz@google.com');
INSERT INTO customer(id, name, email) VALUES (1085, 'Scarlett Damon', 'Scarlett_Damon@google.com');
INSERT INTO customer(id, name, email) VALUES (1086, 'Woody Jolie', 'Woody_Jolie@google.com');
INSERT INTO customer(id, name, email) VALUES (1087, 'Ben Willis', 'Ben_Willis@google.com');
INSERT INTO customer(id, name, email) VALUES (1088, 'James Pitt', 'James_Pitt@google.com');
INSERT INTO customer(id, name, email) VALUES (1089, 'Minnie Zellweger', 'Minnie_Zellweger@google.com');
INSERT INTO customer(id, name, email) VALUES (1090, 'River Dean', 'River_Dean@google.com');
INSERT INTO customer(id, name, email) VALUES (1091, 'Greg Chaplin', 'Greg_Chaplin@google.com');
INSERT INTO customer(id, name, email) VALUES (1092, 'Spencer Peck', 'Spencer_Peck@google.com');
INSERT INTO customer(id, name, email) VALUES (1093, 'Kenneth Pesci', 'Kenneth_Pesci@google.com');
INSERT INTO customer(id, name, email) VALUES (1094, 'Charlize Dench', 'Charlize_Dench@google.com');
INSERT INTO customer(id, name, email) VALUES (1095, 'Sean Guiness', 'Sean_Guiness@google.com');
INSERT INTO customer(id, name, email) VALUES (1096, 'Christopher Berry', 'Christopher_Berry@google.com');
INSERT INTO customer(id, name, email) VALUES (1097, 'Kirsten Akroyd', 'Kirsten_Akroyd@google.com');
INSERT INTO customer(id, name, email) VALUES (1098, 'Ellen Presley', 'Ellen_Presley@google.com');
INSERT INTO customer(id, name, email) VALUES (1099, 'Kenneth Torn', 'Kenneth_Torn@google.com');
INSERT INTO customer(id, name, email) VALUES (1100, 'Daryl Wahlberg', 'Daryl_Wahlberg@google.com');
INSERT INTO customer(id, name, email) VALUES (1101, 'Gene Willis', 'Gene_Willis@google.com');
INSERT INTO customer(id, name, email) VALUES (1102, 'Meg Hawke', 'Meg_Hawke@google.com');
INSERT INTO customer(id, name, email) VALUES (1103, 'Chris Bridges', 'Chris_Bridges@google.com');
INSERT INTO customer(id, name, email) VALUES (1104, 'Jim Mostel', 'Jim_Mostel@google.com');
INSERT INTO customer(id, name, email) VALUES (1105, 'Spencer Depp', 'Spencer_Depp@google.com');
INSERT INTO customer(id, name, email) VALUES (1106, 'Susan Davis', 'Susan_Davis@google.com');
INSERT INTO customer(id, name, email) VALUES (1107, 'Walter Torn', 'Walter_Torn@google.com');
INSERT INTO customer(id, name, email) VALUES (1108, 'Matthew Leigh', 'Matthew_Leigh@google.com');
INSERT INTO customer(id, name, email) VALUES (1109, 'Penelope Cronyn', 'Penelope_Cronyn@google.com');
INSERT INTO customer(id, name, email) VALUES (1110, 'Sidney Crowe', 'Sidney_Crowe@google.com');
INSERT INTO customer(id, name, email) VALUES (1111, 'Groucho Dunst', 'Groucho_Dunst@google.com');
INSERT INTO customer(id, name, email) VALUES (1112, 'Gina Degeneres', 'Gina_Degeneres@google.com');
INSERT INTO customer(id, name, email) VALUES (1113, 'Warren Nolte', 'Warren_Nolte@google.com');
INSERT INTO customer(id, name, email) VALUES (1114, 'Sylvester Dern', 'Sylvester_Dern@google.com');
INSERT INTO customer(id, name, email) VALUES (1115, 'Susan Davis', 'Susan_Davis@google.com');
INSERT INTO customer(id, name, email) VALUES (1116, 'Cameron Zellweger', 'Cameron_Zellweger@google.com');
INSERT INTO customer(id, name, email) VALUES (1117, 'Russell Bacall', 'Russell_Bacall@google.com');
INSERT INTO customer(id, name, email) VALUES (1118, 'Morgan Hopkins', 'Morgan_Hopkins@google.com');
INSERT INTO customer(id, name, email) VALUES (1119, 'Morgan Mcdormand', 'Morgan_Mcdormand@google.com');
INSERT INTO customer(id, name, email) VALUES (1120, 'Harrison Bale', 'Harrison_Bale@google.com');
INSERT INTO customer(id, name, email) VALUES (1121, 'Dan Streep', 'Dan_Streep@google.com');
INSERT INTO customer(id, name, email) VALUES (1122, 'Renee Tracy', 'Renee_Tracy@google.com');
INSERT INTO customer(id, name, email) VALUES (1123, 'Cuba Allen', 'Cuba_Allen@google.com');
INSERT INTO customer(id, name, email) VALUES (1124, 'Warren Jackman', 'Warren_Jackman@google.com');
INSERT INTO customer(id, name, email) VALUES (1125, 'Penelope Monroe', 'Penelope_Monroe@google.com');
INSERT INTO customer(id, name, email) VALUES (1126, 'Liza Bergman', 'Liza_Bergman@google.com');
INSERT INTO customer(id, name, email) VALUES (1127, 'Salma Nolte', 'Salma_Nolte@google.com');
INSERT INTO customer(id, name, email) VALUES (1128, 'Julianne Dench', 'Julianne_Dench@google.com');
INSERT INTO customer(id, name, email) VALUES (1129, 'Scarlett Bening', 'Scarlett_Bening@google.com');
INSERT INTO customer(id, name, email) VALUES (1130, 'Albert Nolte', 'Albert_Nolte@google.com');
INSERT INTO customer(id, name, email) VALUES (1131, 'Frances Tomei', 'Frances_Tomei@google.com');
INSERT INTO customer(id, name, email) VALUES (1132, 'Kevin Garland', 'Kevin_Garland@google.com');
INSERT INTO customer(id, name, email) VALUES (1133, 'Cate Mcqueen', 'Cate_Mcqueen@google.com');
INSERT INTO customer(id, name, email) VALUES (1134, 'Daryl Crawford', 'Daryl_Crawford@google.com');
INSERT INTO customer(id, name, email) VALUES (1135, 'Greta Keitel', 'Greta_Keitel@google.com');
INSERT INTO customer(id, name, email) VALUES (1136, 'Jane Jackman', 'Jane_Jackman@google.com');
INSERT INTO customer(id, name, email) VALUES (1137, 'Adam Hopper', 'Adam_Hopper@google.com');
INSERT INTO customer(id, name, email) VALUES (1138, 'Richard Penn', 'Richard_Penn@google.com');
INSERT INTO customer(id, name, email) VALUES (1139, 'Gene Hopkins', 'Gene_Hopkins@google.com');
INSERT INTO customer(id, name, email) VALUES (1140, 'Rita Reynolds', 'Rita_Reynolds@google.com');
INSERT INTO customer(id, name, email) VALUES (1141, 'Ed Mansfield', 'Ed_Mansfield@google.com');
INSERT INTO customer(id, name, email) VALUES (1142, 'Morgan Williams', 'Morgan_Williams@google.com');
INSERT INTO customer(id, name, email) VALUES (1143, 'Lucille Dee', 'Lucille_Dee@google.com');
INSERT INTO customer(id, name, email) VALUES (1144, 'Ewan Gooding', 'Ewan_Gooding@google.com');
INSERT INTO customer(id, name, email) VALUES (1145, 'Whoopi Hurt', 'Whoopi_Hurt@google.com');
INSERT INTO customer(id, name, email) VALUES (1146, 'Cate Harris', 'Cate_Harris@google.com');
INSERT INTO customer(id, name, email) VALUES (1147, 'Jada Ryder', 'Jada_Ryder@google.com');
INSERT INTO customer(id, name, email) VALUES (1148, 'Angela Witherspoon', 'Angela_Witherspoon@google.com');
INSERT INTO customer(id, name, email) VALUES (1149, 'Kim Allen', 'Kim_Allen@google.com');
INSERT INTO customer(id, name, email) VALUES (1150, 'Albert Johansson', 'Albert_Johansson@google.com');
INSERT INTO customer(id, name, email) VALUES (1151, 'Fay Winslet', 'Fay_Winslet@google.com');
INSERT INTO customer(id, name, email) VALUES (1152, 'Emily Dee', 'Emily_Dee@google.com');
INSERT INTO customer(id, name, email) VALUES (1153, 'Russell Temple', 'Russell_Temple@google.com');
INSERT INTO customer(id, name, email) VALUES (1154, 'Jayne Nolte', 'Jayne_Nolte@google.com');
INSERT INTO customer(id, name, email) VALUES (1155, 'Geoffrey Heston', 'Geoffrey_Heston@google.com');
INSERT INTO customer(id, name, email) VALUES (1156, 'Ben Harris', 'Ben_Harris@google.com');
INSERT INTO customer(id, name, email) VALUES (1157, 'Minnie Kilmer', 'Minnie_Kilmer@google.com');
INSERT INTO customer(id, name, email) VALUES (1158, 'Meryl Gibson', 'Meryl_Gibson@google.com');
INSERT INTO customer(id, name, email) VALUES (1159, 'Ian Tandy', 'Ian_Tandy@google.com');
INSERT INTO customer(id, name, email) VALUES (1160, 'Fay Wood', 'Fay_Wood@google.com');
INSERT INTO customer(id, name, email) VALUES (1161, 'Greta Malden', 'Greta_Malden@google.com');
INSERT INTO customer(id, name, email) VALUES (1162, 'Vivien Basinger', 'Vivien_Basinger@google.com');
INSERT INTO customer(id, name, email) VALUES (1163, 'Laura Brody', 'Laura_Brody@google.com');
INSERT INTO customer(id, name, email) VALUES (1164, 'Chris Depp', 'Chris_Depp@google.com');
INSERT INTO customer(id, name, email) VALUES (1165, 'Harvey Hope', 'Harvey_Hope@google.com');
INSERT INTO customer(id, name, email) VALUES (1166, 'Oprah Kilmer', 'Oprah_Kilmer@google.com');
INSERT INTO customer(id, name, email) VALUES (1167, 'Christopher West', 'Christopher_West@google.com');
INSERT INTO customer(id, name, email) VALUES (1168, 'Humphrey Willis', 'Humphrey_Willis@google.com');
INSERT INTO customer(id, name, email) VALUES (1169, 'Al Garland', 'Al_Garland@google.com');
INSERT INTO customer(id, name, email) VALUES (1170, 'Nick Degeneres', 'Nick_Degeneres@google.com');
INSERT INTO customer(id, name, email) VALUES (1171, 'Laurence Bullock', 'Laurence_Bullock@google.com');
INSERT INTO customer(id, name, email) VALUES (1172, 'Will Wilson', 'Will_Wilson@google.com');
INSERT INTO customer(id, name, email) VALUES (1173, 'Kenneth Hoffman', 'Kenneth_Hoffman@google.com');
INSERT INTO customer(id, name, email) VALUES (1174, 'Mena Hopper', 'Mena_Hopper@google.com');
INSERT INTO customer(id, name, email) VALUES (1175, 'Olympia Pfeiffer', 'Olympia_Pfeiffer@google.com');
INSERT INTO customer(id, name, email) VALUES (1176, 'Groucho Williams', 'Groucho_Williams@google.com');
INSERT INTO customer(id, name, email) VALUES (1177, 'Alan Dreyfuss', 'Alan_Dreyfuss@google.com');
INSERT INTO customer(id, name, email) VALUES (1178, 'Michael Bening', 'Michael_Bening@google.com');
INSERT INTO customer(id, name, email) VALUES (1179, 'William Hackman', 'William_Hackman@google.com');
INSERT INTO customer(id, name, email) VALUES (1180, 'Jon Chase', 'Jon_Chase@google.com');
INSERT INTO customer(id, name, email) VALUES (1181, 'Gene Mckellen', 'Gene_Mckellen@google.com');
INSERT INTO customer(id, name, email) VALUES (1182, 'Lisa Monroe', 'Lisa_Monroe@google.com');
INSERT INTO customer(id, name, email) VALUES (1183, 'Ed Guiness', 'Ed_Guiness@google.com');
INSERT INTO customer(id, name, email) VALUES (1184, 'Jeff Silverstone', 'Jeff_Silverstone@google.com');
INSERT INTO customer(id, name, email) VALUES (1185, 'Matthew Carrey', 'Matthew_Carrey@google.com');
INSERT INTO customer(id, name, email) VALUES (1186, 'Debbie Akroyd', 'Debbie_Akroyd@google.com');
INSERT INTO customer(id, name, email) VALUES (1187, 'Russell Close', 'Russell_Close@google.com');
INSERT INTO customer(id, name, email) VALUES (1188, 'Humphrey Garland', 'Humphrey_Garland@google.com');
INSERT INTO customer(id, name, email) VALUES (1189, 'Michael Bolger', 'Michael_Bolger@google.com');
INSERT INTO customer(id, name, email) VALUES (1190, 'Julia Zellweger', 'Julia_Zellweger@google.com');
INSERT INTO customer(id, name, email) VALUES (1191, 'Renee Ball', 'Renee_Ball@google.com');
INSERT INTO customer(id, name, email) VALUES (1192, 'Rock Dukakis', 'Rock_Dukakis@google.com');
INSERT INTO customer(id, name, email) VALUES (1193, 'Cuba Birch', 'Cuba_Birch@google.com');
INSERT INTO customer(id, name, email) VALUES (1194, 'Audrey Bailey', 'Audrey_Bailey@google.com');
INSERT INTO customer(id, name, email) VALUES (1195, 'Gregory Gooding', 'Gregory_Gooding@google.com');
INSERT INTO customer(id, name, email) VALUES (1196, 'John Suvari', 'John_Suvari@google.com');
INSERT INTO customer(id, name, email) VALUES (1197, 'Burt Temple', 'Burt_Temple@google.com');
INSERT INTO customer(id, name, email) VALUES (1198, 'Meryl Allen', 'Meryl_Allen@google.com');
INSERT INTO customer(id, name, email) VALUES (1199, 'Jayne Silverstone', 'Jayne_Silverstone@google.com');
INSERT INTO customer(id, name, email) VALUES (1200, 'Bela Walken', 'Bela_Walken@google.com');
INSERT INTO customer(id, name, email) VALUES (1201, 'Reese West', 'Reese_West@google.com');
INSERT INTO customer(id, name, email) VALUES (1202, 'Mary Keitel', 'Mary_Keitel@google.com');
INSERT INTO customer(id, name, email) VALUES (1203, 'Julia Fawcett', 'Julia_Fawcett@google.com');
INSERT INTO customer(id, name, email) VALUES (1204, 'Thora Temple', 'Thora_Temple@google.com');

--уменьшил стоимость рандомного чтения, чтобы увеличить шанс использования индекса на таких маленьких данных
set random_page_cost = 1.25;

-- 1. Создать индекс к какой-либо из таблиц вашей БД
create index customer_idx_name on customer (name);
comment on index customer_idx_name is 'Пример простого btree индека по полю';

-- 2. Прислать текстом результат команды explain, в которой используется данный индекс
analyze customer;
select name from customer where name = 'Julia Fawcett';
--QUERY PLAN
--Index Only Scan using customer_idx_name on customer  (cost=0.14..2.66 rows=1 width=13)
--  Index Cond: (name = 'Julia Fawcett'::text)

-- 3. Реализовать индекс для полнотекстового поиска
create index customer_idx_fullTextName on customer using gin (to_tsvector('simple', name));
select name from customer where to_tsvector('simple', name) @@ to_tsquery('Ball');
comment on index customer_idx_fullTextName is 'Пример полнотекстового поиска по имени';

-- 4. Реализовать индекс на часть таблицы или индекс на поле с функцией
create index customer_idx_md5_name on customer (md5(name));
select name from customer where md5(name) = 'c57e8ea94b3af5f6ec4d9d4bc9cc26e3';
comment on index customer_idx_md5_name is 'Пример индекса на поле с функцией';

--5. Создать индекс на несколько полей
create index customer_idx_name_email on customer (name, email);
comment on index customer_idx_name_email is 'Пример составного индекса';