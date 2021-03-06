# ************************************************************
# Sample database to be used with SilkBuilder documentation
# ************************************************************


create table Category (
    categoryID int primary key auto_increment,
    categoryName varchar(100) 
)

insert into Category (categoryID, categoryName)
values
    (1,'Student'),
    (2,'Employee'),
    (3,'Self-Employed'),
    (4,'Unemployed');



create table Person (
    personID int primary key auto_increment,
    name varchar(100),
    address varchar(250),
    phone varchar(20),
    email varchar(50),
    categoryID int,
    married tinyint default 0,
    birthdate date,
    monthlyIncome decimal(10,2),
    comments text,
    foreign key (categoryID) references Category (categoryID) on delete Set Null 
)

create index Person_categoryID on Person(categoryID)

insert into Person (personID, name, address, phone, email, categoryID, married, birthdate, monthlyIncome, comments)
values
    (4,'Cassady Logan 013','Ap #690-1472 Aliquam St.222','(730) 314-144','fringilla@Aliquamu.co.uk',4,1,'2013-11-05 17:20:00',7753.56,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (5,'Sopoline Colon','916-9912 Auctor Ave\nSilver Spring, MD 90342','(466) 530-5619','id.ante.Nunc@vitaedolor.com',3,0,'2025-05-14 13:30:00',6151.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (6,'Dakota Bush','9578 Facilisis Streetss','(763) 666-2326','eu.lacus@ante.net',2,0,'2002-06-13 01:00:00',5824.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (7,'Lacey Franco','P.O. Box 797, 9897 Eget Av.','(709) 776-0337','pretium.neque@ligulismod.edu',3,1,'2002-11-12 01:00:00',6856.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (9,'Minerva Hutchinson','P.O. Box 482, 1028 Magnis Street','(872) 283-3926','Morbi@lectusante.ca',4,1,'2015-10-12 01:00:00',8300.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (10,'Gwendolyn Barton','Ap #466-1470 Vivamus Rd.','(945) 122-2416','metus.sit@quisavallis.com',1,1,'2025-10-12 01:00:00',5744.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (11,'Erin Gonzales','Ap #963-2272 Nunc. Street','(266) 360-8731','ultrices@quam.net',2,0,'2014-10-13 01:00:00',5666.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (12,'Cora Rodriquez','P.O. Box 226, 1500 Sem Street','(481) 697-1242','vitae@nonummyut.edu',4,0,'2004-11-13 01:00:00',7854.00,'Lorem ipsum dolor sit'),
    (13,'Jaden Deleon','305-6275 Bibendum. Av.','(727) 865-9156','risus.Duis@pretium.co.uk',3,0,'2011-07-13 01:00:00',5493.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (14,'Lani Davis','Ap #929-8148 Commodo Road','(530) 103-8894','sem.vitae.aliquam@eu.ca',4,1,'2028-08-13 01:00:00',5657.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (15,'Halee Rocha','480-6270 Sit Avenue','(705) 559-5698','lacinia.mattis@elitAliquamauctor.ca',4,0,'2023-09-12 01:00:00',5263.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur'),
    (16,'Lillian Noble','P.O. Box 354, 5744 Tellus. Road','(969) 630-1860','Morbi.non@nostraperinceptos.net',1,0,'2021-03-14 01:00:00',7782.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (17,'Rowan Greene','3257 Montes, Rd.','(233) 482-0883','nunc.ullamcorper.eu@et.co.uk',3,1,'2002-06-14 01:00:00',8248.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (18,'Orla Tucker','P.O. Box 347, 4353 Dui. St.','(783) 906-3455','enim.diam@ultricesposuere.org',2,0,'2007-04-14 01:00:00',8206.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing'),
    (19,'Renee Galloway','P.O. Box 193, 9126 Sit Rd.','(211) 580-9805','lobortis@Donec.co.uk',3,1,'2026-03-13 01:00:00',7193.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (20,'Kellie Tyler','Ap #323-1081 Ornare, Avenue','(222) 143-2913','non.lobortis.quis@molestietortor.edu',1,1,'2004-02-13 01:00:00',7758.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (21,'Wyoming Harper','1180 Auctor. Rd.','(478) 789-9094','posuere.cubilia@pretiumet.ca',3,0,'2028-12-13 01:00:00',8210.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (22,'Sade Green','Ap #426-9726 Semper Rd.','(888) 936-6056','natoque.penatibus.et@fringillaest.edu',1,1,'2013-02-13 01:00:00',7300.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (23,'Chelsea Gould','P.O. Box 192, 1981 Suspendisse Av.','(765) 744-5372','lacinia@urnaNuncquis.net',1,0,'2013-11-12 01:00:00',5604.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur'),
    (24,'Sylvia Clark','990-6473 Sapien. Avenue','(217) 494-8693','non@sit.org',3,1,'2001-07-12 01:00:00',5415.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (25,'Ivy Nicholson','Ap #464-2767 Ultrices Rd.','(572) 194-8232','neque@eu.com',2,0,'2026-09-12 01:00:00',7402.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (26,'Wyoming Torres','576-9043 Magna, Ave','(903) 350-4699','ante.ipsum@Lorem.org',2,0,'2017-09-13 01:00:00',7796.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (27,'Giselle Bullock','P.O. Box 277, 5116 Enim, Rd.','(750) 641-9660','ornare@ultrices.net',3,0,'2017-10-12 01:00:00',7106.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (28,'Lilah Herman','Ap #174-3354 Proin St.','(415) 890-9550','Aenean@maurisblanditmattis.org',4,0,'2018-08-13 01:00:00',6716.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
    (29,'Rina Hopkins','P.O. Box 842, 3093 Cras Road','(153) 495-9849','nec.urna.et@eulacus.ca',3,1,'2012-11-12 01:00:00',5473.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (30,'Melyssa Lindsey','855-8787 Malesuada Rd.','(787) 992-3228','erat@massaInteger.net',2,0,'2008-05-14 01:00:00',7105.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
    (31,'Brenda Willis','Ap #881-726 Proin Rd.','(129) 987-6869','quis@orci.edu',4,0,'2019-02-14 01:00:00',6084.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (32,'Stacy Maxwell','Ap #704-4811 Ultrices. St.','(433) 445-3340','ut@velitegetlaoreet.org',2,1,'2021-12-12 01:00:00',6914.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (33,'Yoko Brown','8757 Massa. Av.','(515) 269-4938','magnis.dis@luctus.net',3,0,'2028-05-14 01:00:00',6687.00,'Lorem ipsum dolor sit amet, consectetuer'),
    (34,'Carolyn Henry','Ap #198-1025 Tempor Avenue','(180) 931-4583','egestas.lacinia.Sed@lacusQuisqueimperdiet.com',2,0,'2003-09-13 01:00:00',5639.00,'Lorem ipsum dolor sit'),
    (35,'Fatima Luna','Ap #985-285 Non Av.','(771) 870-8630','lectus@Proinvelnisl.co.uk',3,1,'2007-01-13 01:00:00',7269.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (36,'Montana Willis','307-5573 Ridiculus Avenue','(295) 262-3403','et@penatibusetmagnis.net',4,1,'2025-06-12 01:00:00',6298.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (37,'Lois Blackwell','Ap #650-8642 Id St.','(780) 300-8260','morbi.tristique@ultrices.com',1,1,'2023-07-12 01:00:00',7314.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (38,'Sheila Vazquez','Ap #650-2807 Ligula. Rd.','(738) 507-6376','consectetuer@diam.ca',1,0,'2003-03-13 01:00:00',6281.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (39,'Simone Haney','P.O. Box 647, 5142 A Avenue','(811) 274-0357','porttitor.vulputate.posuere@anteblandit.edu',2,1,'2004-07-13 01:00:00',6418.00,'Lorem ipsum dolor sit'),
    (40,'Ora Horn','532-5172 Risus. Av.','(371) 852-9703','ligula.Nullam.feugiat@egestasnuncsed.org',3,1,'2010-08-12 01:00:00',5313.00,'Lorem ipsum dolor\n'),
    (41,'Alexandra Hatfield','P.O. Box 354, 5002 Pede Road','(959) 586-5628','posuere.enim@SuspendisseduiFusce.net',4,0,'2015-04-13 01:00:00',6155.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (42,'Jeanette Morgan','Ap #295-195 Ipsum St.','(132) 628-5772','semper@maurisrhoncus.co.uk',1,0,'2007-08-13 01:00:00',8141.00,'Lorem ipsum dolor sit amet, consectetuer'),
    (43,'Scarlett Lester','4784 Tellus Rd.','(511) 711-0472','nibh@aliquet.ca',2,0,'2004-05-14 01:00:00',8390.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur'),
    (44,'Kameko Kelley','Ap #270-2504 Iaculis Ave','(582) 123-1943','interdum.Nunc.sollicitudin@eu.com',3,0,'2027-02-13 01:00:00',6271.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
    (45,'Ruth Tucker','664-6186 Massa. Street','(138) 486-5999','erat@afacilisis.net',4,0,'2018-12-12 01:00:00',5297.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (46,'Freya Walters','7605 Malesuada Avenue','(101) 762-0459','est@quispedeSuspendisse.edu',3,1,'2025-07-12 01:00:00',6627.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing'),
    (47,'Rhoda Spencer','9206 Cursus, Road','(468) 149-0567','magnis.dis.parturient@scelerisque.ca',3,0,'2016-06-12 01:00:00',6656.00,'Lorem ipsum dolor sit'),
    (48,'Hilary Velez','Ap #825-5615 Non, Ave','(223) 150-9648','vestibulum.nec.euismod@inmagna.net',3,0,'2027-11-13 01:00:00',5752.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (49,'Noel Daugherty','Ap #814-2980 Proin Street','(330) 842-1482','eu.augue@arcuVestibulum.edu',4,1,'2014-04-13 01:00:00',7058.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (50,'Brynne May','860-7349 Augue Av.','(545) 878-9522','egestas.lacinia.Sed@nonummy.edu',1,1,'2017-04-13 01:00:00',6342.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (51,'Anjolie Eaton','254-5388 Est Avenue','(343) 998-5853','Phasellus.dapibus.quam@dolorsit.net',3,0,'2004-11-12 01:00:00',7577.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur'),
    (52,'Giselle Skinner','5352 Ut Rd.','(289) 331-7717','Nulla.eu@dapibusquam.edu',4,0,'2029-06-12 01:00:00',7303.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing'),
    (53,'Alea Hayes','9827 Pede Rd.','(425) 376-0794','dis.parturient.montes@netus.org',4,1,'2027-09-12 01:00:00',8209.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (54,'Emi Terry','4797 Odio Rd.','(149) 943-2960','est.arcu@temporestac.edu',3,1,'2029-03-13 01:00:00',6228.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (55,'Amanda Hurst','755-7137 Purus. Av.','(735) 239-1345','sem.eget@sit.co.uk',4,1,'2020-04-14 01:00:00',6738.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (56,'Margaret Fulton','240-5980 Lobortis St.','(243) 816-4394','diam.Duis@Quisquetinciduntpede.co.uk',1,0,'2006-11-12 01:00:00',6776.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (57,'Sharon Potts','407-5304 Vestibulum Av.','(566) 180-4720','nisi@magna.edu',3,0,'2002-12-12 01:00:00',5480.00,'Lorem ipsum dolor sit amet, consectetuer'),
    (58,'Eden Preston','Ap #708-3138 Sollicitudin Street','(406) 953-6627','aliquet@cursusIntegermollis.edu',2,1,'2023-04-14 01:00:00',7443.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (59,'Brielle Mullins','4794 Vitae Av.','(710) 454-4149','eget.metus@arcuVestibulum.net',4,1,'2030-07-12 01:00:00',7465.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (60,'Dahlia Salas','691-4432 Ultricies Av.','(143) 525-5600','facilisi@dapibusquam.net',1,0,'2024-06-13 01:00:00',6620.00,'Lorem ipsum dolor sit amet, consectetuer'),
    (61,'Camilla Warren','P.O. Box 763, 5191 Velit Avenue','(901) 406-7582','purus@nullaat.ca',1,1,'2006-01-13 01:00:00',7181.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (62,'Eleanor Phelps','2818 Montes, Rd.','(484) 233-2572','luctus@adipiscinglacusUt.net',1,1,'2004-02-13 01:00:00',5619.00,'Lorem ipsum dolor sit'),
    (63,'Neve Ramirez','9260 Ante Avenue','(714) 648-4807','sapien@malesuada.ca',2,0,'2025-11-13 01:00:00',6449.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur'),
    (64,'Hilda Weiss','1345 Varius Rd.','(360) 157-2036','tristique.aliquet.Phasellus@utpharetra.ca',4,1,'2015-04-14 01:00:00',7881.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
    (65,'Fredericka Guy','Ap #580-7346 Congue Ave','(107) 323-3391','accumsan.interdum@facilisiseget.co.uk',3,0,'2020-11-12 01:00:00',7960.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (66,'Bell Montoya','9521 Hendrerit Av.','(176) 647-6198','Morbi.sit@Sed.org',2,1,'2011-12-13 01:00:00',8139.00,'Lorem ipsum dolor sit amet,\n'),
    (67,'Charissa Bradshaw','4014 Morbi Avenue','(632) 533-2986','risus.Donec.nibh@magnisdisparturient.org',2,0,'2017-01-13 01:00:00',7340.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (68,'Laurel Lambert','5102 Parturient Ave','(824) 760-0964','ultricies@nonlorem.ca',1,0,'2030-10-13 01:00:00',6652.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (69,'Tallulah Richmond','P.O. Box 338, 3890 Urna. Av.','(503) 185-4525','turpis.non@pede.org',3,0,'2022-05-14 01:00:00',6855.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (70,'Carolyn Burks','P.O. Box 180, 9116 Aenean St.','(821) 371-5701','non@Nullamscelerisque.com',1,1,'2030-05-14 01:00:00',6004.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (71,'Myra Jones','Ap #936-5375 Fringilla St.','(896) 788-9061','purus.Duis.elementum@magna.net',4,1,'2014-08-13 01:00:00',7110.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (72,'Meredith Estes','3066 Ipsum Av.','(619) 567-4352','enim@tinciduntnibh.ca',1,0,'2001-05-14 01:00:00',7583.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing\n'),
    (73,'Lani Cooley','P.O. Box 396, 8395 Nec Rd.','(817) 279-1268','pharetra.ut.pharetra@quisdiam.com',2,1,'2017-07-13 01:00:00',5352.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (74,'Illana Callahan','Ap #653-1401 Vehicula Rd.','(364) 155-8738','bibendum.ullamcorper.Duis@nullaIn.org',4,0,'2025-12-12 01:00:00',6601.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (75,'Suki Morin','P.O. Box 526, 7910 Ligula Road','(514) 630-0466','dignissim.lacus@enim.com',1,1,'2019-11-13 01:00:00',8100.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
    (76,'Alexandra Hogan','367-3177 Neque Avenue','(737) 589-8439','at.fringilla@velvulputate.edu',4,1,'2010-01-13 01:00:00',6242.00,'Lorem ipsum dolor sit'),
    (77,'Wynne Anthony','P.O. Box 288, 6714 Magna. St.','(159) 312-1600','Quisque.fringilla@semperdui.edu',4,0,'2002-10-12 01:00:00',5857.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (78,'Ignacia Nieves','Ap #209-9497 Nunc St.','(611) 316-2485','eleifend.non@duiCum.edu',1,0,'2013-03-14 01:00:00',7057.00,'Lorem ipsum dolor sit amet,'),
    (79,'Melanie Hodge','2243 Egestas Rd.','(798) 894-0071','malesuada.fames.ac@Donecconsectetuermauris.ca',2,0,'2018-05-14 01:00:00',6143.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (80,'Karleigh Weber','P.O. Box 541, 1402 Neque Ave','(719) 989-7782','Nunc.ac.sem@libero.net',4,0,'2006-11-13 01:00:00',6189.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (81,'Karly Barlow','Ap #856-5948 Lectus Ave','(390) 472-2602','elit.a@dolor.ca',4,1,'2030-10-13 01:00:00',7003.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (82,'Danielle Waters','611-695 Eu St.','(209) 738-8660','arcu.Vestibulum.ante@dictum.ca',1,1,'2008-09-12 01:00:00',5998.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (83,'Velma Carney','793-2559 Sed Ave','(528) 639-5124','sit@ut.co.uk',1,0,'2021-03-14 01:00:00',5364.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
    (84,'Emma Boyd','P.O. Box 947, 2892 Risus. Rd.','(730) 982-7467','vitae.risus.Duis@acrisusMorbi.net',3,1,'2026-04-13 01:00:00',8017.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (85,'Bo Reese','P.O. Box 560, 1287 Non, Street','(550) 723-8220','sem@duinectempus.ca',3,1,'2027-06-12 01:00:00',8331.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing'),
    (86,'Hadassah Cortez','980-3453 Fermentum Avenue','(608) 743-8261','lectus@vulputateeu.co.uk',2,0,'2015-01-13 01:00:00',7391.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (87,'Holly Olsen','P.O. Box 945, 1182 Pede Av.','(920) 380-1655','vel.convallis@neque.co.uk',1,0,'2020-07-13 01:00:00',5619.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (88,'Alice Morse','P.O. Box 582, 1846 Ac Road','(951) 143-1721','erat.in.consectetuer@nequeNullamnisl.org',3,1,'2031-12-13 01:00:00',5283.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (89,'Barbara Puckett','1823 Euismod Street','(121) 630-1516','in.tempus.eu@sagittissemper.org',2,0,'2031-12-13 01:00:00',5832.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer'),
    (90,'Shellie Dickerson','5310 Enim Rd.','(237) 958-1645','dis.parturient.montes@accumsan.com',3,1,'2019-07-13 01:00:00',7580.00,'Lorem ipsum dolor sit'),
    (91,'Anne Burt','Ap #605-145 Semper Ave','(908) 521-2261','tristique.pharetra@Loremipsum.edu',1,0,'2022-03-13 01:00:00',5272.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n'),
    (92,'Bryar Fernandez','306-3541 Mollis Rd.','(179) 279-9210','est.Mauris@enimEtiamimperdiet.net',2,0,'2012-07-12 01:00:00',7723.00,'Lorem ipsum dolor sit amet,'),
    (94,'Chastity Fox','P.O. Box 850, 5098 Aenean Rd.','(117) 102-2392','vel.quam@congueelitsed.org',4,1,'2016-11-12 01:00:00',5731.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (95,'Margaret Everett','642-7615 Justo St.','(175) 577-2885','luctus@Craslorem.net',4,0,'2028-09-12 01:00:00',7059.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed'),
    (96,'Melinda Reyes','584-7326 Litora Road','(593) 300-8585','pretium.neque.Morbi@rhoncusNullam.net',4,1,'2016-11-12 01:00:00',5213.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (97,'Cassady Bell','Ap #410-4285 Hendrerit St.','(279) 829-2492','iaculis@ultricies.org',4,1,'2014-12-12 01:00:00',7430.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.'),
    (98,'Kendall Nelson','4837 Elit, Rd.','(191) 443-1313','malesuada@porttitorerosnec.net',1,0,'2026-07-12 01:00:00',8041.00,'Lorem ipsum dolor\n'),
    (99,'Rhona Franco','P.O. Box 462, 1189 Ipsum. Rd.','(789) 299-3436','Nunc.commodo@tinciduntnuncac.edu',4,0,'2028-02-14 01:00:00',6208.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
    (100,'Cassady Shepherd','Ap #275-2667 Et Road','(146) 215-1250','pede.Suspendisse@augueSed.ca',2,0,'2020-01-14 01:00:00',6587.00,'Lorem ipsum dolor'),
    (101,'Chelsea Guerra','Ap #241-9501 Ipsum. St.','(971) 285-8073','ut@pedenonummyut.ca',3,1,'2009-07-13 01:00:00',7787.00,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n');



