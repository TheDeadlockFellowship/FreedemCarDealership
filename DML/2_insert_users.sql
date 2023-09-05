-- Start transaction
BEGIN;

-- Truncate table content before insert entire batch
TRUNCATE CARS CASCADE;

-- Insert data batch
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Fiorino', 'Anichini', '1979-08-04', 'pacealessandro@example.net', '228', '4066373972658');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Paulina', 'Tarantino', '1979-04-29', 'rosaria42@example.org', '297', '0955975461636');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Angelina', 'Niscoromni', '2002-01-31', 'ibalbo@example.net', '56', '8676123660937');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Enrico', 'Rubbia', '1983-07-24', 'viridianaferrante@example.net', '389', '4126935037456');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Paride', 'Mercadante', '1999-01-09', 'piovanigabriella@example.com', '265', '0855489004740');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Maria', 'Benussi', '1991-08-22', 'ciampiseverino@example.org', '808', '5151154768367');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Ugo', 'Fagotto', '1944-02-15', null, '94', '8212510094238');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Graziano', 'Panatta', '1973-09-08', null, '43', '1744134003447');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Cecilia', 'Liverotti', '1973-04-25', 'bossiguido@example.com', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Lidia', 'Calarco', '1965-09-05', 'gianlucafederico@example.net', '856', '6947263287802');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Salvatore', 'Gangemi', '2004-11-26', 'zpanzera@example.com', '299', '7746110219450');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Martino', 'Cutrufo', '1948-09-06', 'donatellaceravolo@example.net', '298', '3700759872323');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Amanda', 'Piccio', '1947-06-14', 'nonisflavia@example.net', '505', '0197478446390');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Marcella', 'Napolitano', '1951-12-15', 'azeglio80@example.net', '94', '7573154720280');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Nino', 'Altera', '1990-05-12', 'gemma47@example.com', '681', '4272186616345');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Milena', 'Cherubini', '2003-12-14', null, '373', '6520016525768');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Romana', 'Salieri', '1943-06-06', null, '256', '3446968132180');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Raffaella', 'Pirandello', '1985-09-20', null, '247', '1966257604200');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Corrado', 'Asprucci', '1971-04-21', null, '65', '0570258015183');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Sandro', 'Bova', '1935-11-17', 'mleblanc@example.org', '592', '3495443290238');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Carmelo', 'Tozzo', '2002-02-13', 'marinanapolitano@example.com', '590', '3351355587638');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Ruggiero', 'Littizzetto', '1945-08-09', 'tencallafiamma@example.net', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Pierina', 'Fogazzaro', '1973-03-19', 'mazzocchifulvio@example.org', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Victoria', 'Capone', '1949-10-21', null, '256', '4808932318479');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Donatella', 'Priuli', '1949-01-04', null, '965', '5637750775977');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Gioacchino', 'Varano', '1949-11-24', 'tcaccioppoli@example.net', '258', '8134040560914');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Pierangelo', 'Sonnino', '1968-07-18', 'luchino92@example.org', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Clelia', 'Babati', '1979-08-23', 'carlialberico@example.net', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Giovanna', 'Buscetta', '1982-05-16', 'spadaforagiacobbe@example.net', '297', '1821427063656');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Melania', 'Mogherini', '1989-02-15', 'gmarini@example.com', '379', '3212665076792');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Rosa', 'Broschi', '1953-10-14', 'tonitiepolo@example.net', '373', '9656389987437');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Domenico', 'Guarneri', '1977-05-26', 'cstoppani@example.net', '82', '3041982672990');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Manuel', 'Balbo', '1940-08-20', null, '590', '9246388934596');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Salvi', 'Pigafetta', '1981-05-19', null, '43', '0045921654580');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Claudia', 'Cignaroli', '1950-11-20', 'aldonordio@example.net', '46', '1068361880394');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Domenico', 'Golgi', '1999-07-16', 'lucrezia46@example.com', '882', '2470200420275');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Gloria', 'Fantoni', '1979-03-06', null, '673', '5249712886619');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Renata', 'Dallara', '1962-11-12', 'angelo03@example.net', '229', '4157822188742');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Stella', 'Monduzzi', '1989-02-21', null, '881', '9752356456602');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Romana', 'Barcaccia', '1973-04-25', null, '500', '7116408046324');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Pierina', 'Pincherle', '1965-07-28', 'eemo@example.org', '974', '4593272194919');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Tonia', 'Bianchini', '1941-02-07', 'ennio05@example.net', '852', '2554956815591');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Michela', 'Cerquiglini', '1998-03-19', 'cibingreca@example.org', '971', '7095266527819');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Enrico', 'Vasari', '1988-12-15', 'melinamorgagni@example.net', '679', '6062162643908');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Alfredo', 'Florio', '1940-02-15', 'rgregori@example.net', '886', '2923471476974');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Lisa', 'Guarana', '1992-11-15', 'gianmarco96@example.org', '372', '2533585262432');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Donna', 'Ferrazzi', '1949-08-10', null, '677', '5509920748090');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Susanna', 'Venier', '1982-04-23', 'eantelami@example.com', '683', '0738048019223');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Rodolfo', 'Bianchi', '1952-07-24', 'antonello78@example.com', '674', '2971128341725');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Ludovica', 'Frescobaldi', '1963-11-29', 'leone33@example.net', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Danilo', 'Bembo', '1938-10-03', 'dallanedda@example.com', '241', '5549463512925');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Ubaldo', 'Agostini', '1959-12-19', 'guaranasandro@example.com', '221', '5410874844220');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Melania', 'Togliatti', '1957-03-20', 'dtresoldi@example.org', '228', '2081302631304');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Pierangelo', 'Ginese', '1943-06-02', 'rienzohugo@example.com', '353', '6480989726221');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Fernanda', 'Albertini', '1984-01-25', null, '253', '4603893976894');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Rolando', 'Gianvecchio', '1958-06-07', 'gino20@example.com', '212', '5817649745941');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Sergius', 'Simeoni', '1999-04-06', 'laurettaregge@example.net', '379', '2949579433785');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Imelda', 'Federico', '1967-07-05', 'ettaschicchi@example.com', '677', '4955476712802');
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Claudia', 'Ferrata', '1959-12-19', 'jmorandini@example.com', null, null);
INSERT INTO USERS (first_name, last_name, date_of_birth, email, phone_prefix, phone_number) VALUES ('Liana', 'Bova', '1979-03-20', 'gabbatoni@example.org', '976', '6749593684554');

-- End transaction
COMMIT;