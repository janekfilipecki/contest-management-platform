-- INSTRUKCJA:
-- utworzyć bazę "prezentacja" w psql
-- zmienić nazwę bazy danych na "prezentacja" w pliku settings.py w backendzie (linijka 112, zmienić NAME w DATABASE)
-- zrobić migrację (przeprowadzić reload backendu)
-- "sudo -u postgres psql -d prezentacja < script.sql"
-- ^ nowa baza musi być tworzona za każdym razem, bo inaczej nie pokryją się id użytkowników itp. (wymagania foreign key)

-- konkursy

INSERT INTO contest_platform_contest (title, description, date_start, date_end, individual, type, rules_pdf, poster_img) VALUES ('Konkurs na Sąsiedzką Kartkę Bożonarodzeniową dla Dzieci z Siekierek', 'Zapraszamy młodych mieszkańców Siekierek (przedszkolaki — 5-6 lat i uczniów szkół podstawowych) do udziału w III. Konkursie Plastycznym na Sąsiedzką Kartkę Bożonarodzeniową dla Dzieci z Siekierek. Konkursowym zadaniem jest wykonanie KARTKI będącej ilustracją kolędy „Pójdźmy wszyscy do stajenki” i przyniesienie jej do Fundacji BO WARTO. Najpiękniejsza kartka zostanie wydrukowana i przekazana mieszkańcom Siekierek. A najciekawsze prace będą oczywiście nagrodzone.', '2023-12-15', '2024-02-15', TRUE, 'plastyczne', 'https://pzsp2bucket.blob.core.windows.net/rules/regulamin_konkurs_na_sasiedzka_kartke_bozonarodzeniowa.pdf?sp=r&st=2024-01-15T16:06:04Z&se=2024-01-17T00:06:04Z&spr=https&sv=2022-11-02&sr=b&sig=meLUTILJMcNoLnTRRvxltDg2v985e9GxAxyIFEP0kgo%3D', 'https://pzsp2bucket.blob.core.windows.net/posters/plakat_konkurs_plastyczny_na_sasiedzka_kartke_bozonarodzeniowa.jpg?sp=r&st=2024-01-15T16:05:36Z&se=2024-01-17T00:05:36Z&spr=https&sv=2022-11-02&sr=b&sig=1ibOUAsUBNylb8dMedbGNRfPQwxYjPNL9G1MtLpo6Gw%3D');
INSERT INTO contest_platform_contest (title, description, date_start, date_end, individual, type, rules_pdf, poster_img) VALUES ('Konkurs na Kartkę Wielkanocną "Sercem Malowane"', 'Tradycyjnie od 11 lat NIEreglamentowany Konkurs na Kartki 😊 Sercem Malowane. Myślami i marzeniami jesteśmy już chyba bardzo przy wiośnie 😊 Aby więc zachęcić i zmotywować Panią Wiosnę 😊 do szybszego przybycia to my rozpoczynamy gorące namawianie do ŚWIĄTECZNEGO MALOWANIA. Zapraszamy dzieci w wieku od 5 do 12 lat do udziału w XI. Konkursie na Kartkę Wielkanocną pn. ”SERCEM MALOWANE”. A że WARTO to niech zachętą będzie fakt, że to już JEDENASTA edycja tego Konkursu, a idea tego przedsięwzięcia jest prosta – twórcza i zacna. Czekamy na konkursowe PRACE wraz ze ZGŁOSZENIAMI. W tym roku dobór techniki wykonania jest spory. Można tradycyjnie kredkami, farbami i pastelami, albo wydzierankowo lub collage’owo. Wszyscy manualni specjaliści – nie przegapcie tej konkursowej okazji, a co więcej zadbajcie o zdrową konkurencję namawiając innych do udziału 😊', '2023-12-15', '2024-02-16', TRUE, 'plastyczne', 'https://pzsp2bucket.blob.core.windows.net/rules/Regulamin%20Konkursu%20na%20kartk%C4%99%20wielkanocn%C4%85_%202023.pdf?sp=r&st=2024-01-15T16:03:54Z&se=2024-01-17T00:03:54Z&spr=https&sv=2022-11-02&sr=b&sig=eWAdh2np%2BK2Xn%2BKKTg%2B%2BFZN0pVMd0N1cDzJaj5wfbH8%3D', 'https://pzsp2bucket.blob.core.windows.net/posters/plakat_poziomy_konkurs_plastyczny_na_kartke_wielkanocna_sercem_malowane.jpg?sp=r&st=2024-01-15T16:04:46Z&se=2024-01-17T00:04:46Z&spr=https&sv=2022-11-02&sr=b&sig=cewaNHxA5JxCLR3lGwoJQ7n3i2VBhG8VZLN06sI%2BRxA%3D');
INSERT INTO contest_platform_contest (title, description, date_start, date_end, individual, type, rules_pdf, poster_img) VALUES ('Konkurs plastyczny "Anioł na..."', 'Rozpoczynamy DWUNASTĄ edycję Ogólnopolskiego Konkursu plastycznego „ANIOŁ na…” dla dzieci i młodzieży z niepełnosprawnością intelektualną. Bardzo, ale to bardzo czekamy na anielskie portrety 🙂', '2023-12-15', '2024-02-17', TRUE, 'plastyczne', 'https://pzsp2bucket.blob.core.windows.net/rules/Regulamin-konkursu-testowego.pdf?sp=r&st=2024-01-15T16:08:33Z&se=2024-01-17T00:08:33Z&spr=https&sv=2022-11-02&sr=b&sig=YmCnEY729x0OhhCt33K8EFWsTeet%2FtGgnKVbLyW3I2E%3D', 'https://pzsp2bucket.blob.core.windows.net/posters/plakat_poziomy_konkurs_plastyczny_aniol_na.jpg?sp=r&st=2024-01-15T16:07:26Z&se=2024-01-17T00:07:26Z&spr=https&sv=2022-11-02&sr=b&sig=kLd7BVIzjximntUz1TBXqvkJMIb1Oc0yN58qwr1VILE%3D');
INSERT INTO contest_platform_contest (title, description, date_start, date_end, individual, type, rules_pdf, poster_img) VALUES ('Rodzinna recenzja ksiązki dla dzieci', 'RODZINNA RECENZJA KSIĄŻKI to już II edycja PRZEGLĄDU, do którego serdecznie zapraszamy mieszkańców Siekierek - Rodziców i Dzieci by przeczytali i zrecenzowali tę samą książkę i polecili ją innym. To spojrzenie na książkę z dwóch różnych stron może być bardzo ciekawe i pomagające innym Rodzicom na dobór wartościowych lektur dla swoich pociech. Krótkie ZASADY Przeglądu są dostępne na stronie Fundacji (w Aktualnościach). Najciekawsze recenzje zostaną umieszczone na profilu facebookowym Fundacji i siekierkirekatywacja oraz w Gazecie Siekierkowskiej, a ich autorzy otrzymają nagrody, a nadto upominki czekać będą na wszystkich autorów recenzji.', '2023-12-15', '2024-02-18', FALSE, 'literackie', 'https://pzsp2bucket.blob.core.windows.net/rules/Regulamin-konkursu-testowego.pdf?sp=r&st=2024-01-15T16:08:33Z&se=2024-01-17T00:08:33Z&spr=https&sv=2022-11-02&sr=b&sig=YmCnEY729x0OhhCt33K8EFWsTeet%2FtGgnKVbLyW3I2E%3D', 'https://pzsp2bucket.blob.core.windows.net/posters/plakat_rodzinna_recenzja_ksiazki_dla_dzieci.jpg?sp=r&st=2024-01-15T16:18:49Z&se=2024-01-17T00:18:49Z&spr=https&sv=2022-11-02&sr=b&sig=wTps%2BUhNcEhZXUKl3EGW9JYWNHv6JN42WpMqeNOw0FE%3D');

-- punktacja za konkursy

INSERT INTO contest_platform_gradecriterion (description, max_rating, contest_id) VALUES ('Zgodność pracy z tematem', 6, 1);
INSERT INTO contest_platform_gradecriterion (description, max_rating, contest_id) VALUES ('Staranność wykonania pracy', 2, 1);
INSERT INTO contest_platform_gradecriterion (description, max_rating, contest_id) VALUES ('Technika wykonania pracy', 4, 1);

-- użytkownicy

INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Marek', 'Użytkownik', 'marek_uzytkownik', 'marek_uzytkownik@gmail.com', FALSE, TRUE, '2024-01-15 17:29:43', FALSE, FALSE);
INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Janek', 'Użytkownik', 'janek_uzytkownik', 'janek_uzytkownik@gmail.com', FALSE, TRUE, '2024-01-15 17:29:43', FALSE, FALSE);
INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Arek', 'Użytkownik', 'arek_uzytkownik', 'arek_uzytkownik@gmail.com', FALSE, TRUE, '2024-01-15 17:29:43', FALSE, FALSE);
INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Paweł', 'Użytkownik', 'pawel_uzytkownik', 'pawel_uzytkownik@gmail.com', FALSE, TRUE, '2024-01-15 17:29:43', FALSE, FALSE);
INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Marek', 'Jury', 'marek_jury', 'marek_jury@gmail.com', FALSE, TRUE, '2024-01-15 17:29:43', TRUE, FALSE);
INSERT INTO contest_platform_user (password, is_superuser, first_name, last_name, username, email, is_staff, is_active, date_joined, is_jury, is_coordinating_unit) VALUES ('pbkdf2_sha256$720000$RetSpjJ6ouScKn2g4vRGSo$iYwFtiEti1mp2XBB6CMUOrn/hhCaVQgZyM0wxEllabs=', FALSE, 'Marek', 'Admin', 'marek_admin', 'marek_admin@gmail.com', TRUE, TRUE, '2024-01-15 17:29:43', FALSE, FALSE);

-- zgłoszenia

INSERT INTO contest_platform_entry (date_submitted, email, entry_title, entry_file, contest_id, user_id) VALUES ('2024-01-15', 'marek_uzytkownik@gmail.com', 'Piękna kartka Bożonarodzeniowa', '', 1, 1);
INSERT INTO contest_platform_entry (date_submitted, email, entry_title, entry_file, contest_id, user_id) VALUES ('2024-01-15', 'janek_uzytkownik@gmail.com', 'Kartka', '', 1, 2);
INSERT INTO contest_platform_entry (date_submitted, email, entry_title, entry_file, contest_id, user_id) VALUES ('2024-01-15', 'arek_uzytkownik@gmail.com', 'Wesołych Świąt!', '', 1, 3);
INSERT INTO contest_platform_entry (date_submitted, email, entry_title, entry_file, contest_id, user_id) VALUES ('2024-01-15', 'pawel_uzytkownik@gmail.com', 'Kartka Świąteczna', '', 1, 4);

-- oceny

INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (2, 1, 1);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (1, 1, 2);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (2, 1, 3);

INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (4, 2, 1);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (1, 2, 2);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (3, 2, 3);

INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (6, 3, 1);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (2, 3, 2);
INSERT INTO contest_platform_grade (value, entry_id, criterion_id) VALUES (4, 3, 3);
