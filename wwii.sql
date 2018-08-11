-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2018 at 08:24 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 5.6.32-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wwii`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `sceneID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `latitude`, `longitude`, `sceneID`) VALUES
(1, 'Invasion of Poland', 'The Invasion of Poland was a joint invasion of Poland by Germany, the Soviet Union, the Free City of Danzig, and a small Slovak contingent that marked the beginning of World War II.', 51.9194, 19.1451, 1),
(2, 'Phoney War\r\n', 'The Phoney War was an eight-month period at the start of World War II, during which the French troops invaded Germany\'s Saar district.', 49.3964, 7.023, 1),
(3, 'Operation Sea Lion\r\n', 'Operation Sea Lion was Nazi Germany\'s code name for the plan for an invasion of the United Kingdom during the Battle of Britain.', 48.8799, 0.1713, 2),
(4, 'The Battle of France', 'The Battle of France, also known as the Fall of France, was the German invasion of France and the Low Countries. ', 46.2276, 2.2137, 2),
(5, 'Winston Churchil becomes the british \r\nprime minister', 'Winston Churchill, First Lord of the Admiralty, is called to replace Neville Chamberlain as British prime minister following the resignation after losing a confidence vote in the House of Commons.', 51.5074, 0.1278, 2),
(6, 'Attack on Pearl Harbor', 'The attack on Pearl Harbor was a surprise military strike by the Imperial Japanese Navy Air Service against the United States naval base at Pearl Harbor, Hawaii Territory, on the morning of December 7, 1941.', 19.4761, -155.31, 3),
(7, 'Invasion of Sumatra (1942)\r\n', 'The Invasion of Sumatra was the assault by Imperial Japanese forces on the Dutch East Indies that took place from 14 February to 28 March.', 0.5897, 101.343, 4),
(8, 'Battle of Java (1942)\r\n', 'The Battle of Java occurred on the island of Java from 28 February - 12 March 1942. It involved forces from the Empire of Japan and Allied personnel.', 7.6145, 110.712, 4),
(9, 'Guadalcanal Campaign\r\n', 'The Guadalcanal Campaign was fought around the island of Guadalcanal in the Pacific. It was the first major offensive by Allied forces against the Empire of Japan.', 9.5773, 160.146, 4),
(10, 'North African Campaign\r\n', 'The North African Campaign of the Second World War took place in North Africa from 10 June 1940 to 13 May 1943. It included campaigns fought in the Libyan and Egyptian deserts and in Morocco and Algeria.', 31.7917, 7.0926, 5),
(12, 'Italy surrenders', 'The Armistice of Cassibile was an armistice signed on 3 September 1943 by the Kingdom of Italy. The armistice stipulated the surrender of Italy to the Allies.', 36.9761, 15.1967, 5),
(13, 'Battle of Stalingrad\r\n', 'A major battle between German and Soviet troops. The battle ended with the surrender of an entire German army. Stalingrad is considered a major turning point of the war in favor of the Allies.', 48.708, 44.5133, 5),
(14, 'Normandy landings\r\n', 'The Normandy landings were the landing operations of the Allied invasion of Normandy in Operation Overlord. The operation began the liberation of German-occupied northwestern Europe from Nazi control.', 48.8799, 0.1713, 6),
(15, 'Liberation of Paris', 'The Liberation of Paris was a military action that took place from 19 August 1944 until the German garrison surrendered the French capital on 25 August 1944.', 48.8566, 2.3522, 6),
(16, 'Operation Bagration', 'Operation Bagration, a military campaign fought between 22 June and 19 August 1944 in Soviet Byelorussia in the Eastern Front.', 53.7098, 27.9534, 6),
(17, 'Battle of Leyte Gulf\r\n', 'Battle of Leyte Gulf, decisive air and sea battle that crippled the Japanese Combined Fleet, permitted U.S. invasion of the Philippines, and reinforced the Allies\' control of the Pacific.\n', 11.0891, 124.892, 7),
(18, 'Battle of Iwo Jima\r\n', 'The Battle of Iwo Jima was a major battle in which the United States Marine Corps landed on and eventually captured the island of Iwo Jima.', 24.774, 141.327, 7),
(19, 'Atomic bombings of Hiroshima and Nagasaki', 'During the final stage of World War II, the United States detonated two nuclear weapons over the Japanese cities of Hiroshima and Nagasaki on August 6 and 9, 1945', 34.3852, 132.455, 7);

-- --------------------------------------------------------

--
-- Table structure for table `scenes`
--

CREATE TABLE `scenes` (
  `id` int(11) NOT NULL,
  `style_url` text NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `year` int(11) NOT NULL,
  `narrative` text NOT NULL,
  `zl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scenes`
--

INSERT INTO `scenes` (`id`, `style_url`, `latitude`, `longitude`, `year`, `narrative`, `zl`) VALUES
(1, 'mapbox://styles/india2sarthak/cjkngwzjj0iz12rphlnlem0al', 51.1657, 10.4515, 1939, 'Hitler invades Poland. Britain and France declare war on Germany two days later.', 3),
(2, 'mapbox://styles/india2sarthak/cjknhqi272wnh2so36rzhehq9', 50.1347, 0.3571, 1940, 'Operation Sealion launched by Germany against the British. ', 3),
(3, 'mapbox://styles/india2sarthak/cjknkqpu7217p2rmnvedcig04', 41.1232, -123.746, 1941, 'Japan attacks Pearl Harbor, and the US enters the war.', 2),
(4, 'mapbox://styles/india2sarthak/cjknlm9z60szq2ro4nkdnb1ho', 7.315, 129.956, 1942, 'Japanese aggression increases in Asia, capture Indonesia, Burma aand Phillipines.', 2),
(5, 'mapbox://styles/india2sarthak/cjknm8aec22lo2rmnxba20wom', 43.5418, 11.7883, 1943, 'Surrender at Stalingrad marks Germany\'s first major defeat.', 2),
(6, 'mapbox://styles/india2sarthak/cjknmnru9316e2so3e9dpbe01', 48.8799, 0.1713, 1944, 'D Day: The Allied invasion of France. Paris is liberated in August.', 2),
(7, 'mapbox://styles/india2sarthak/cjknmxyeb174y2rmq4hn8zr0p', 13.8797, 141.774, 1945, 'Russians defeat Germany. Japan loses to the allied powers. Peace is restored.', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scenes`
--
ALTER TABLE `scenes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `scenes`
--
ALTER TABLE `scenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
