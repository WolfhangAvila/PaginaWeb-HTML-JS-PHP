

CREATE TABLE `CARDS` (
  `IDCard` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `cardNumber` varchar(16) DEFAULT NULL,
  `cardExp` varchar(5) DEFAULT NULL,
  `cardCVV` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



CREATE TABLE `CART` (
  `idUser` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;





CREATE TABLE `PRODUCTS` (
  `idProduct` int(11) NOT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productImageURL` varchar(200) DEFAULT NULL,
  `productStock` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `PRODUCTS` (`idProduct`, `productDescription`, `productPrice`, `productImageURL`, `productStock`) VALUES
(1, 'God Of War', 891.82, 'https://i.ytimg.com/vi/jG3pN7v9S54/maxresdefault.jpg', 200),
(2, 'God Of War 2', 981.03, 'https://i.blogs.es/4185d3/godofwar2/1366_2000.jpg', 50),
(3, 'Resident Evil 4', 2229.9, 'https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_ResidentEvil4.jpg', 30),
(4, 'Resident Evil 3', 1560.86, 'https://cdn-ext.fanatical.com/production/product/1280x720/3826e8c8-9529-4928-a78c-99b85c756e35.jpeg', 40),
(5, 'The Binding Of Isaac: Repentance', 683.53, 'https://cdn.akamai.steamstatic.com/steam/apps/1426300/capsule_616x353.jpg?t=1611221739', 200),
(6, 'Silent Hill', 3991.91, 'https://depor.com/resizer/DBg9uEJ3OGsm9rGpzZ_i_kjlMLA=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/N5XSXZKYKND5NJP3IIK6PHZQPE.jpg', 5),
(7, 'God Of War 2018', 6177.43, 'https://wallpapercave.com/wp/wp2680059.jpg', 15),
(8, 'Doom Eternal', 2921.46, 'https://images3.alphacoders.com/102/thumb-1920-1025036.jpg', 12),
(9, 'Resident Evil 8', 686, 'https://eloutput.com/app/uploads-eloutput.com/2021/01/resident-evil-8.jpg', 20);



CREATE TABLE `USERS` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userEmail` varchar(60) DEFAULT NULL,
  `userPassword` varchar(50) DEFAULT NULL,
  `userProfilePicture` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `USERS` (`idUser`, `userName`, `userEmail`, `userPassword`, `userProfilePicture`) VALUES
(1, 'Guillermo Campos', 'elguille123@gmail.com', 'guilleCam', 'https://pbs.twimg.com/media/ES72k6RWsAEyWko.jpg'),
(2, 'Manu ', 'manuman@gmail.com', '123456789', 'https://pbs.twimg.com/profile_images/1153793676394426368/jtGR19R9.jpg'),
(3, 'Patricio', 'patrick@gmail.com', 'spongebob', 'https://static.wikia.nocookie.net/doblaje-fanon/images/4/44/Patrickstar.png/revision/latest?cb=20170708000348&path-prefix=es'),
(4, 'Jesus', 'GodesJesus@gmail.com', 'imthegod', '');




ALTER TABLE `CARDS`
  ADD PRIMARY KEY (`idCard`);


ALTER TABLE `CART`
  ADD KEY `fk_idProducts` (`idProduct`),
  ADD KEY `fk_idUser` (`idUser`);

ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`idProduct`);

ALTER TABLE `USERS`
  ADD PRIMARY KEY (`idUser`);




ALTER TABLE `CARDS`
  MODIFY `idCard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `PRODUCTS`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `USERS`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
