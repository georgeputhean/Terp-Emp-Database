INSERT INTO [VanMunchers.Restaurant] VALUES
('RST001','L TAO','8700 Baltimore Ave','College �
Park','MD','20740','http://www.lataohotpot.com'),
('RST002','sweetgreen','8300 Baltimore Ave','College 
Park','MD','20740','http://www.sweetgreen.com'),
('RST003','Shanghai Tokyo Cafe','8300 Baltimore Ave #102','College 
Park','MD','20740','https://www.shanghaitokyocafemd.com'),
('RST004','The Board and Brew','8150 Baltimore Ave','College 
Park','MD','20740','http://theboardandbrew.com//'),
('RST005','The Spot Mini','4209 Knox Rd','College 
Park','MD','20740','https://www.thespotminicollegepark.com'),
('RST006','Jumbo jumbo Cafe','3711 Campus Dr','College Park','MD','20740','https://
orderjumbojumbocafecollegepark.com'),
('RST007','Looney s Pub','8150 Baltimore Ave','College �
Park','MD','20740','http://www.looneyspubmd.com/'),
('RST008','Kangnam BBQ Sports Bar & Grill','8503 Baltimore Ave','College 
Park','MD','20740','kangnambbqusa.com'),
('RST009','Nando s PERi-PERi','7400 Baltimore Ave','College �
Park','MD','20740','https://www.nandosperiperi.com/find/restaurants/college-park?
utm_source=mf&utm_medium=mf&utm_campaign=local'),
('RST010','Milk & Honey Cafe','10280 Baltimore Ave','College 
Park','MD','20740','https://milknhoneycafe.com'),
('RST011','Marathon Deli','7412 Baltimore Ave','College 
Park','MD','20740','https://www.marathondelimd.com/menu.html'),
('RST012','Hanami','8145 Baltimore Ave','College 
Park','MD','20740','https://www.hanamicp.com');
INSERT INTO [VanMunchers.RestaurantPhone] VALUES
('RST001','(301) 441-1111'),
('RST002','(240) 770-4443'),
('RST003','(301) 220-1998'),
('RST004','(240) 542-4613'),
('RST005','(240) 487-6829'),
('RST006','(301) 935-5108'),
('RST007','(240) 542-4510'),
('RST008','(301) 220-1635'),
('RST009','(240) 582-8420'),
('RST010','(240) 260-3141'),
('RST011','(301) 927-6717'),
('RST012','(301) 982-9899');
INSERT INTO [VanMunchers.User] VALUES
('USR001','Linda C','Annapolis','MD','4/1/2015'),
('USR002','Gen S','Washington','DC','9/1/2011'),
('USR003','Judy R','Silver Spring','MD','6/1/2014'),
('USR004','Mike B','Gaithersburg','MD','8/1/2011'),
('USR005','Van Anh N','Clarksburg','MD','8/3/2013'),
('USR006','Kell M',NULL,'MD','4/1/2016'),
('USR007','Donyiel C','Silver Spring','MD','9/1/2014'),
('USR008','Ann R','Baltimore','MD','7/1/2015'),
('USR009','Erica J','Upper Marlboro','MD','2/1/2014'),
('USR010','Melanie B','Riverdale Park','MD','6/1/2014'),
('USR011','Mahsa A','McLean','VA','5/1/2013'),
('USR012','Krishna Bhavithavya K','Hyattsville','MD','8/1/2018'),
('USR013','Raydiance C','Baltimore','MD','7/1/2011'),
('USR014','Maria O','Washington','DC','7/1/2012'),
Adam Lee
why?
Adam Lee
why?
('USR015','Austin G','Washington','DC','7/1/2012'),
('USR016','Grace H.','Silver Spring','MD','6/1/2013'),
('USR017','Kyle L.','Laytonsville','MD','5/1/2015'),
('USR018','Katie H.','Takoma Park','MD','11/1/2013'),
('USR019','Lisa H.','Manhattan','NY','8/1/2017'),
('USR020','Kendoll C.','Severn','MD','4/1/2016'),
('USR021','David S.','Severna ','MD','1/1/2017'),
('USR022','Silver Spring','Silver Spring','MD','9/1/2016'),
('USR023','Victoria K.','Germantown','MD','11/1/2011'),
('USR024','Tonyia R.','Upper Marlboro','MD','10/1/2019'),
('USR025','Krishna P.','Silver Spring','MD','9/1/2008'),
('USR026','Kristen G.','Edgewater','MD','12/1/2015'),
('USR027','Mach  C.','Washington','MD','12/1/2013'),�
('USR028','Andrew Nguyen',NULL,NULL,NULL),
('USR029','Jeffrey Duarte',NULL,NULL,NULL),
('USR030','DB',NULL,NULL,NULL),
('USR031','Michele B.','Waldorf','MD','4/1/2015'),
('USR032','Vivian N','College Park','MD','12/1/2016'),
('USR033','Sally W','Taipei','TW','8/1/2017'),
('USR034','Nil G','Los Angeles','CA','9/1/2012'),
('USR035','Lily',NULL,NULL,NULL),
('USR036','Nya H',NULL,NULL,NULL),
('USR037','Anjali Verma',NULL,NULL,NULL),
('USR038','Kieran Evans',NULL,NULL,NULL),
('USR039','Nat',NULL,NULL,NULL),
('USR040','Ara Koh',NULL,NULL,NULL);
INSERT INTO [VanMunchers.Websource] VALUES
('WEB001','Yelp'),
('WEB002','Google Map');
INSERT INTO [VanMunchers.Bookmark] VALUES 
('RST010','USR001','12/30/2017'),
('RST010','USR002','1/27/2017'),
('RST010','USR003','3/23/2021'),
('RST006','USR003','5/18/2016'),
('RST010','USR005','2/24/2018'),
('RST010','USR006','2/10/2018'),
('RST012','USR001','2/28/2016'),
('RST012','USR004','4/13/2017'),
('RST001','USR032','9/19/2019'),
('RST010','USR014','8/29/2018'),
('RST004','USR033','5/26/2018'),
('RST002','USR033','2/14/2018'),
('RST012','USR033','2/1/2018'),
('RST010','USR033','2/1/2018'),
('RST006','USR033','12/8/2017'),
('RST010','USR031','9/15/2017');
INSERT INTO [VanMunchers.Amenities] VALUES
('AME001',1,1,0,1,1,'RST001'),
('AME002',1,1,1,1,1,'RST002'),
('AME003',1,1,1,1,1,'RST003'),
('AME004',1,1,1,1,1,'RST004'),
('AME005',1,1,1,1,1,'RST005'),
('AME006',1,1,1,0,1,'RST006'),
('AME007',1,1,1,1,1,'RST007'),
('AME008',1,1,0,1,1,'RST008'),
('AME009',1,1,0,1,1,'RST009'),
('AME010',0,0,1,1,1,'RST010'),
('AME011',1,1,1,0,1,'RST011'),
('AME012',1,1,0,1,1,'RST012'); 