-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 04:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reviewmyexperience_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `description`, `img`) VALUES
(1, 'drum instrumenten', '', 'drum.png'),
(2, 'blaas instrumenten', '', 'Trompet.png'),
(3, 'snaar instrumenten', '', 'viool.png'),
(4, 'overige instrumenten', '', 'otamatone1.png');

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`id`, `name`, `description`, `img`, `categorie_id`, `price`) VALUES
(1, 'Trompet', 'De trompet is een blaasinstrument van de familie der koperblazers, waarbij het geluid ontstaat doordat de lippen die tegen het mondstuk geplaatst worden, met de adem in trilling worden gebracht. Een trompet is een zeer technisch instrument en het leren spelen vereist veel oefening. Het is van belang dat je geen verkeerde techniek aanleert die je later kunnen beperken in je spel, daarom is het verstandig om les te nemen. Daarnaast wordt aangeraden om op een cornet of bugel te beginnen.', 'Trompet.png', 2, 29),
(2, 'Saxofoon', 'Een saxofoon, kortweg sax, is een blaasinstrument met een conische, meestal S-vormige buis die voorzien is van kleppen. De saxofoon wordt niet tot de koperblazers gerekend, maar zoals alle riet-blaasinstrumenten tot de houtblazers. Saxofoons hebben een conische boring – ze worden van het mondstuk naar het bekeruiteinde toe breder. Het riet begint te trillen bij het blazen, zo ontstaat het geluid dat daarna door het andere deel van het instrument gaat. \r\nDe saxofoon is een zeer veelzijdig blaasinstrument, dat zowel in de klassieke muziek als in de lichte genres, zoals jazz, pop en latin, op zijn plaats is. Het is niet moeilijk om saxofoon te leren spelen. Het lukt al snel om een liedje te spelen, ook zonder enige muzikale ervaring.', 'saxofoon.png', 2, 39),
(3, 'drumstel', 'Een drumstel of drums is een verzameling slagwerkinstrumenten die door een enkele drummer bespeeld wordt.\r\n\r\nDrummen kan zowel makkelijk als moeilijk zijn. Als je merkt dat je snel ritmes oppikt, je een natuurlijke coördinatie hebt en je op tijd kunt klappen, zul je merken dat het leren drummen voor jou makkelijker is dan voor iemand die moeite heeft met deze dingen. Maar zoals bij elke nieuwe onderneming, kan er altijd een beetje een leercurve zijn.', 'drum.png', 1, 29),
(4, 'basgitaar', 'De basgitaar is een (doorgaans viersnarig) snaarinstrument dat in vele vormen van moderne niet-klassieke muziek wordt gebruikt. De stemming is standaard ’E – ’A – D – G; zoals een contrabas en gelijk aan de laagste vier snaren van een gitaar, maar dan een octaaf lager. Meestal wordt een basgitaar uitgevoerd met frets, hoewel fretloze basgitaren ook bestaan. Basgitaar leren spelen is helemaal niet moeilijk! Op de basgitaar spelen we vaak vooral de laagste noten van een muziekstuk op het instrument. Op de basgitaar leer je vooral om goed samen te spelen met de drummer van de groep. De bas en de drums zorgen als ritmesectie voor een goede groove in het ensemble!', 'basgitaar.png', 3, 29),
(5, 'gitaar', 'Een gitaar is een snaarinstrument dat wordt bespeeld met de vingers of met een plectrum. Het woord gitaar stamt af van het Perzische \"tar\" dat \"snaar\" betekent. Voor degenen onder jullie die net beginnen, laten we je geruststellen: de gitaar is een gemakkelijk instrument om te leren! Het spelen van je eerste gitaarakkoorden en licks zal natuurlijk een paar uitdagingen met zich meebrengen, net als al het andere, maar veel gitaristen zijn in de loop der jaren autodidact geweest.', 'gitaar.png', 3, 29),
(6, 'piano', 'Een piano is een slag-, toets- en snaarinstrument uit de citerfamilie dat bespeeld wordt met een enkel toetsenbord en twee of drie pedalen. De piano heeft grote witte toetsen en kleine zwarte toetsen, waarvan de klanken samen een chromatische toonladder vormen. Binnen een piano liggen snaren gespannen die via een mechaniek bestaande uit hamertjes en dempers geraakt worden, zodra men een van de toetsen aanslaat. Piano leren spelen is niet zo moeilijk. Alles wat een persoon nodig heeft, is een goede begeleiding en oefening. Samen met de juiste strategieën en technieken zal dat mogelijk zijn.', 'piano.png', 3, 39),
(7, 'viool', 'De viool is een strijkinstrument met vier snaren. Het is het kleinste lid van de vioolfamilie, en heeft het hoogste bereik. De klank wordt voortgebracht door de snaren in trilling te brengen met een strijkstok (arco), of door te tokkelen met de vingers (pizzicato). De houten klankkast dient om het geluid van de trillende snaren te versterken. De viool wordt doorgaans bespeeld door het instrument tussen kin en schouder te klemmen en met de vingers van de linkerhand de snaren tegen de ebbenhouten toets te drukken om zodoende de snaar te verkorten (en dus hoger te doen klinken). Zoals je misschien al begrepen hebt, is de viool een van de moeilijkste klassieke instrumenten om te leren. Je zult het niet van de ene op de andere dag leren. Terwijl sommige beginners al na een paar jaar oefenen experts lijken te worden, zullen de meeste mensen er veel langer over doen om viool te leren spelen.', 'viool.png', 3, 49),
(8, 'Glasharmonica', 'Een glasharmonica, niet te verwarren met de glasharp, is een muziekinstrument, en wel een idiofoon die in 1762 werd uitgevonden door Benjamin Franklin. Het instrument bestaat uit een reeks in grootte toenemende glazen schalen die gezamenlijk op een horizontale as bevestigd zijn. De as wordt door een pedaalmechaniek in een draaibeweging gebracht. Met de toppen van de bevochtigde vingers bespeelt men de randen van de schalen. ', 'glasharmonica.png', 4, 39),
(9, 'Otamatone', 'De Otamatone is een synthesizer waarvan de klankkast de vorm heeft van een achtste noot (trilling) (het lijkt ook enigszins op een kikkervisje of een pollepel, otamajakushi (お玉杓子/おたまじゃくし) is Japans voor kikkervisje en pollepel), waarbij het geluid uit een \"mond\" op de nootkop. Er zijn twee handen nodig om te spelen: terwijl de ene hand het \"hoofd\" vasthoudt en knijpt, bestuurt de andere hand de toonhoogte van het deuntje door de vinger op een lintcontroller op de steel te plaatsen; een hogere positie op de stuurpen zorgt voor een lager geluid.', 'otamatone1.png', 4, 19),
(10, 'hydraulophone', 'A hydraulophone is a tonal acoustic musical instrument played by direct physical contact with water (sometimes other fluids) where sound is generated or affected hydraulically. The hydraulophone was described and named by Steve Mann in 2005, and patented in 2011. Typically, sound is produced by the same hydraulic fluid in contact with the player\'s fingers. It has been used as a sensory exploration device for low-vision individuals', 'hydraulophone.png', 4, 29),
(11, 'Stylophone', 'De Stylophone (of stylofoon) is een Britse miniatuurversie van een analoog klavier dat wordt gespeeld met een stylus. Het werd uitgevonden in 1967 door Brian Jarvis en werd het daarop volgende jaar geproduceerd door de firma Dubreq. Het bestaat uit een metalen klavier dat wordt gespeeld door de toetsen aan te raken met een stylus, waarbij elke noot via een weerstand is verbonden met een spanningsgestuurde oscillator. Hierdoor heeft elke toets een andere toonhoogte. De enige andere knoppen zijn een aan-en-uitschakelaar en een voor vibrato. Het heeft een bereik van anderhalf octaaf (van A tot en met E) en is 18 bij 11 bij 3,5 cm groot. In Nederland kostte het apparaatje bij de introductie circa 85 gulden en was een noviteit op de Firato van 1967; latere versies kostten rond de 90 gulden.', 'stylophone.png', 4, 29),
(12, 'Theremin', 'Een theremin is een elektronisch muziekinstrument dat bespeeld wordt door de afstand tussen de handen en twee antennes te variëren. De speler raakt het instrument niet aan. De theremin werd in 1919 uitgevonden door Léon Theremin en is daarmee de allereerste analoge synthesizer die in staat was traploos de toonhoogte te veranderen. In 1923 kwam dan de opvolger van de theremin: de aetherophone, een soortgelijk instrument dat lang niet zo populair werd als de theremin.', 'Theremin.png', 4, 19);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `date`, `status`, `total_price`, `users_id`) VALUES
(1, '2025-01-09', 'Besteld', 600.00, 1),
(2, '2025-01-09', 'Besteld', 103.50, 1),
(3, '2025-01-09', 'Besteld', 640.00, 2),
(4, '2025-01-09', 'Besteld', 2424.49, 3),
(5, '2025-01-09', 'Besteld', 70.99, 2),
(6, '2025-01-17', 'Besteld', 97.00, 11),
(7, '2025-01-17', 'Besteld', 97.00, 11),
(8, '2025-01-17', 'Besteld', 97.00, 11);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_instrument`
--

CREATE TABLE `purchase_instrument` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_instrument`
--

INSERT INTO `purchase_instrument` (`id`, `purchase_id`, `instrument_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 7, 1),
(3, 2, 9, 1),
(4, 2, 13, 1),
(5, 3, 6, 2),
(6, 4, 1, 1),
(7, 4, 2, 1),
(8, 4, 3, 1),
(9, 4, 4, 1),
(10, 4, 5, 1),
(11, 4, 6, 1),
(12, 4, 7, 1),
(13, 4, 8, 1),
(14, 4, 9, 1),
(15, 4, 10, 1),
(16, 4, 11, 1),
(17, 4, 12, 1),
(18, 4, 13, 1),
(20, 4, 15, 1),
(21, 4, 16, 1),
(22, 5, 15, 1),
(23, 5, 12, 1),
(24, 8, 1, 2),
(25, 8, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(50) NOT NULL,
  `details` text NOT NULL,
  `sterren` int(11) NOT NULL,
  `instrument_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `details`, `sterren`, `instrument_id`, `user_id`) VALUES
(1, 'De blaas instrumenten zijn geweldig en ik had het heel erg naar me zin met de trompet!', 4, 1, 0),
(2, 'De drumstellen gingen kapot naar een paar slagen, ze kunnen niet echt tegen een stootje.', 2, 3, 0),
(3, 'test', 3, 5, 0),
(4, 'Dit is een geweldige gitaar?', 4, 2, 0),
(5, 'Dit is een geweldige gitaar!', 5, 9, 0),
(6, 'goed instrument', 3, 3, 0),
(7, 'ja', 2, 3, 0),
(8, 'ja', 2, 3, 0),
(9, 'ja', 2, 3, 0),
(19, 'goed instrument jajajjajajaa', 3, 3, 0),
(20, 'mid', 3, 1, 0),
(21, 'minder mid', 4, 2, 0),
(22, 'mid', 3, 5, 0),
(23, 'het is mijn naam :DDDDDDDDD', 5, 4, 0),
(24, '321321', 3, 4, 0),
(25, 'alert(&#39;yoooo&#39;)', 5, 4, 0),
(26, 'weet niet', 5, 1, 0),
(27, 'ja', 3, 7, 0),
(28, 'beste ding', 5, 8, 0),
(29, 'dfsfsdfs', 3, 10, 0),
(31, 'dit is een goed ding', 4, 2, 0),
(32, 'test', 4, 6, 0),
(33, 'fd', 4, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(9, 'Password2', 'Pas2@Pas2.nl', '$2y$10$2NEC5XoPmhEnZPmoUXwa3eqcVD8dub40thDXIEtvxSgZM/cHJ6vjK', 0),
(10, 'Admin', 'Admin@Admin.nl', '$2y$10$2zYnUJ2JE1xfF4rTeEetB.Luea8PRu9qFpiblK2AQ5GawWHwSGo6C', 4),
(11, '', 'Pas@Pas.nl', '$2y$10$8mC6BYQ7gM1S.23pmSBmaOj6Z3GQjNacmt3UAgI0fT8TbCLBArHeO', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`users_id`);

--
-- Indexes for table `purchase_instrument`
--
ALTER TABLE `purchase_instrument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `part_id` (`instrument_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_instrument`
--
ALTER TABLE `purchase_instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instrument`
--
ALTER TABLE `instrument`
  ADD CONSTRAINT `instrument_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
