-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Oct 23, 2026 at 02:27 AM
-- Server version: 12.0.2-MariaDB-ubu2404-log
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CyberCity`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `CategoryName` text NOT NULL,
  `id` int(11) NOT NULL,
  `projectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`CategoryName`, `id`, `projectID`) VALUES
('Tutorial', 1, 2025),
('Networking', 2, 2025),
('Cryptology', 3, 2025),
('OSINT', 4, 2025),
('Hex', 5, 2025),
('Web', 6, 2025),
('WIP', 8, 2024),
('Key Exchange', 11, 2026),
('Awesome Sauce', 12, 2026),
('Spice Guys, Phase 1', 13, 20262),
('Spice Guys, Phase 2', 14, 20262),
('Spice Guys, B-plot', 15, 20262),
('IP Addressing', 16, 101),
('Linux CLI', 17, 101);

-- --------------------------------------------------------

--
-- Table structure for table `Challenges`
--

CREATE TABLE `Challenges` (
  `ID` int(11) NOT NULL,
  `challengeTitle` text DEFAULT NULL,
  `challengeText` text DEFAULT NULL,
  `flag` text NOT NULL,
  `pointsValue` int(11) NOT NULL,
  `moduleName` varchar(255) DEFAULT NULL,
  `moduleValue` varchar(255) DEFAULT NULL,
  `dockerChallengeID` varchar(255) DEFAULT NULL,
  `container` int(11) DEFAULT NULL,
  `Image` text DEFAULT NULL,
  `Enabled` tinyint(1) DEFAULT 1,
  `categoryID` int(11) DEFAULT NULL,
  `files` text DEFAULT NULL,
  `difficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Challenges`
--

INSERT INTO `Challenges` (`ID`, `challengeTitle`, `challengeText`, `flag`, `pointsValue`, `moduleName`, `moduleValue`, `dockerChallengeID`, `container`, `Image`, `Enabled`, `categoryID`, `files`, `difficulty`) VALUES
(1, 'Traffic Jammed', 'We received a call about the city\'s traffic lights going haywire! This is a nuisance to the city, citizens as well as a major safety hazard. Being the city\'s on-call electrician, we have placed it upon you to rewire the lights. Can you successfully fix the uncoordinated lights and bring peace back to to the road? Your credentials are:', 'CTF{operation_greenwave}', 5, 'TrafficLights', '1', NULL, 3, 'trafficlights4.gif', 1, 2, NULL, 0),
(2, 'Open Sesame', 'A citizen has made an urgent distress call from their home. Initial scans suggest they\'ve lost the key to their garage and are now trapped inside with their car, unable to get to work. As a part of the emergency response team, you have been assigned the task of remotely opening the locked door, without causing any damage to it or the garage, as per the request of the citizen. Will you be able to get it safely unlocked?', 'CTF{Alohomora}', 5, 'GarageDoor', '0', NULL, NULL, 'garagedoor4.gif', 1, 2, NULL, 0),
(3, 'Alarm Anomaly', 'A burglar briefly disarmed the police station’s alarm. The suspect is in custody, but the alarm is still offline. You’ve been called in to bring it back. A suspicious file named Alarm.png was left behind. It looks normal… but is it?\n\nUser: RoboCop\nPassword: TotallySecure01', 'CTF{beep_beep}', 5, 'Alarm', '0', 'alarmAnomaly', 1, 'buzzer.jpg', 1, 3, NULL, 0),
(4, 'Turbine Takeover', 'The city\'s wind turbine has broken down! Being the city\'s main source of power, everyone has entered a state of panic. Fears are growing as the night approaches, threatening to plunge the city into total darkness. As one of the few trained windtechs, and with the clock ticking, you have been assigned to get the turbine operating once again. Can you do it before nightfall arrives? \n\nWhile combing through the turbine’s diagnostic logs, your team uncovered a strange, out-of-place file buried deep in an old backup directory. It wasn’t referenced in any current maintenance:', 'CTF{w1ndm1ll_w1nner}', 5, 'Windmill', '78730', NULL, NULL, 'windmill4.gif', 1, 3, '../../../assets/challengeFiles/control_terminal_backup.zip', 0),
(6, 'wee lcd', 'its the lcd', 'CTF{yay_lights}', 5, 'LCD', '0', NULL, NULL, NULL, 1, 6, NULL, 0),
(102, 'Caesars Riddle', 'Greetings,\r\n\r\nWe have received an email from a \"Caesar\" that contained a random string of letters. We believe the random string of letters can be deciphered but we are unsure of how to do it. We are offloading this job to you. Decipher the message and submit it back. Attached below is the string.\r\nyaspwoowzagchwwgecgcaakamsnrIODJ\r\n\r\nSubmit with the formatting CTF{<Deciphered string>}\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{vxpmtlltwxdzettdbzdzxxhxjpkoFLAG}', 2, '1', '1', '1', 1, 'CipherC4.jpg', 1, 1, NULL, 2),
(103, 'Caesars riddle', 'Caesar has given you a message. But it\'s a random string of letters: yaspwoowzagchwwgecgcaakamsnrIODJ\r\nYour job is to decipher the message through context, and submit it to the army general. Submit the entire string with the flag, not just the flag.\r\nHint 1: Capitals are important\r\nHint 2: How did caesar shift his cipher?\r\n\r\nauthor: dean', 'vxpmtlltwxdzettdbzdzxxhxjpkoFLAG', 5, '1', '1', '1', 1, 'CipherC4.jpg', 0, 1, NULL, 1),
(104, 'Underground Syndicate', 'You\'re part of a secret underground syndicate trying to take over the government and just intercepted a mesage, you must decrypt the message so we can figure out their plan\r\n\r\nP =61 G =7 A = 38 B = 33\r\n\r\nYou are trying to find a and b such that A=Q^a mod P and B=Q^b mod P . Iterate Through Possible Values:\r\n\r\nFor a, test values from 1 to P−1 to see which one satisfies 7^a mod 61=A. For b, test values from 1 to P−1 to see which one satisfies 7^b mod 61=B. Discrete Logarithm Problem: This is an example of the discrete logarithm problem. The difficulty of solving this problem is what makes Diffie-Hellman secure when large prime numbers are used. However, since\r\n\r\nFind the Shared Secret: Once you find a and b, you can compute the shared secret S either as S=B^a mod P or S=A^b mod P . Because the modulus 61 is small, this method is computationally feasible; for larger values, it becomes impractical.\r\n\r\nK\\N%ZaIVg[]KS[\'', 'CTF{Ryan_Sucks}', 69, '1', '1', '1', 1, 'Hacker.png', 0, 1, NULL, 0),
(105, 'Enemy Transmission', 'Salutations,\r\n\r\nUsing the information you (or another trainee in your position) decrypted from a laptop owned by the Ledgerunners, we were able to figure out the channels the Ledgerunners are using to send messages to each other. You are to decrypt these messages, and find out what exactly the Ledgerunners are broadcasting between themselves.\r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur\r\n\r\n-     The Arakawa Corporation\r\n\r\n\r\nENCRYPTED MESSAGE: kwwsv://grfv.jrrjoh.frp/grfxphqw/g/1HY3QnmJYCEPFrVrNDEtxhGUYp9nisxj-HkyyyjyHRAD/\r\n\r\n________________\r\n\r\n\r\nHINTS ARE BELOW:\r\n\r\n________________\r\n\r\n\r\n\r\n\r\n1: The first step will utilise a common encryption tool, which involves letter shifts.\r\n\r\n\r\n2: The tool needed to decrypt is called a \"Caesar Cipher”.\r\n\r\n\r\n3: Once you have the code, you may want to utilise google search\r\n\r\n\r\n4: Have you found the new code? If so, try decoding it through running it through multiple algorithms.\r\n\r\n\r\n5: The final clue: The second code requires decoding “Base-64”.', 'CTF{laUnch1ng_MiSsIe_12:30_pM_oCt_5}', 1, '1', '1', NULL, 1, 'blackhathackers.jpeg', 1, 3, NULL, 1),
(107, 'Disco Adafruit Mini Color TFT with Joystick FeatherWing', 'Flag name: CTF{VIBES}\r\n\r\nUsing the Adafruit Mini Color TFT with Joystick FeatherWing find the flag code', 'CTF{VIBES}', 1, '1', '1', '123454321', 1, 'img (2).jpg', 0, 1, NULL, 0),
(108, 'Unicorn', 'A secret message has been encrypted using a classic shift cipher. The mission is to find the correct key and reveal the hidden flag found within.\r\n\r\n\r\nAuthor: Sienna', 'FWI {VHFXUH_BRX_IRXQG_PH}', 5, '0', '0', NULL, 0, 'uni.jpeg\r\n', 0, 1, NULL, 0),
(109, 'Key Exchange Tutorial', 'Difficulty: Medium\r\n\r\nCONTEXT: You are logging into your banking app using the website interface. Using a key exchange, the browser is able to secure your data (when the https:// protocol is present) such as your login credentials.\r\n\r\nENCRYPTED KEY:\r\nOFR{mpYuZ_123}\r\n\r\nprime number- 23\r\ngenerator- 5\r\nAlice\'s secret num- 6\r\nBob\'s secret num- 7\r\n\r\nFIRST,  Alice will use the generator raised to the power of Alice\'s secret num, using the modulus operator with 23 (the prime number) to create a new number, 8. Bob does the same but with their secret number.\r\n5^6 mod 23= 8\r\n\r\n5^7 mod 23= 17\r\n\r\nSECOND, Bob and Alice publicly exchange their output numbers which can be intercepted by Eve, but Eve cannot find the original number (in this case, they could through brute force. However, when the numbers are huge it is essentialy uncrackable).\r\n\r\nTHIRD, the output numbers  are raised to Bob and Alice\'s secret numbers, again with the modulus of 23. This should give Alice and Bob a common number, in this case 12. This number can be used to decrypt a symmetric cipher such as a XOR or caesar (for example, a caesar cipher with shift 12). Keep in mind caesar cipher is a low level of security due to only 25 seperate options.\r\n\r\n17^6 mod 23 = 12\r\n\r\n8^7 mod 23 = 12\r\n\r\nTherefore, decryption key = 12.\r\n\r\nChallenge Author: Jamez', 'CTF{adMiN_123}', 5, '1', '1', '1', 1, 'key.jpg', 0, 1, NULL, 0),
(110, 'dual encryption', 'An encoded message has been received: it\'s your job to decode the message, the message reads 8J+gnDMgKPCfoJ4yMykJRldJe0ZiZTN1XzF2X2owMGd9\r\ntry using some kind of decryption to find the solution.\r\n\r\nhints:\r\n1.\r\nmaybe its base 64, maybe its xor, or maybe its Rot13\r\n\r\n2.\r\nan old roman emperor\r\n', 'CTF{Cyb3r_1s_g00d}', 20, '1', '1', '1', 1, 'images.jpeg', 0, 3, NULL, 0),
(111, 'Secret Message (AES decrytion)', 'Greetings!\r\n\r\nThe criminal organisation known as the \"Ledgerunners\" have left us a gift of sorts. Behind, they have left a small flash drive in the wake of an ambush on one of their hideaways. Your job is is to perform an AES decryption and unscramble the following information:\r\n\r\n- Encrypted message: b654d8815a7e33769959\r\n\r\n- Tag: dfd266e509100bfd62865de03c832879\r\n\r\n- IV: ZL120HrSzTTJJJy9\r\n\r\nCovering the majority of the flash drive was a sticky note. \"Corpos VS. Punks\" was written upon this. This seems to be of importance.\r\n\r\nDasvidaniya,\r\n\r\nSous CyberChef - Andrew \"GCM\" Huxley', 'CTF{HELLO_WORLD}', 4, 'Verynice', '20.44', NULL, -1, 'Untitled.jpeg', 1, 4, NULL, 4),
(112, 'Encrypted Laptop', 'Salutations,\r\n\r\nInside the anarchic, rambunctious \"Ledgerunners\" base of operations, an Arakawa corporate spy has found a laptop. It contains *crucial information* that\'s been completely encrypted. Intelligence suggests it\'s been encrypted more than once. As the newest member of the Arakawa corporation family, your job is to decrypt the data below to find data on the Ledgerunners\' operations and ruinous schemes!\r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur\r\n\r\n-    The Arakawa Corporation\r\n\r\n______________________________________\r\n\r\nEncrypted Information: emrwxvmsqisnxwvnmqswxvnmqugnas IZL{Igkykx_ynolz_zcoik} mxmq[aufqniaugnrqgud84\r\n\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n\r\n!!!\r\n\r\nWARNING: HINTS BELOW HERE! DON\'T READ IF YOU ENJOY PERSEVERING!\r\n\r\n!!!\r\n\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n|\r\n\r\n\r\nHINT 1: How many letters was this shifted by?\r\n\r\n\r\n\r\nHINT 2: Use the website \"Cyber Chef\" to decrypt the code.', 'CTF{Caeser_shift_twice}', 1, '1', '1', '1', 1, 'download.jpeg', 1, 3, NULL, 1),
(113, 'The Outback Challenge', 'Rusell Coight has lost his 70 series landcruisers keys, can you help him find them so he can go back to camp?', 'CTF{well_done_you_did it you found my landcruisers keys!}', 2, 'idk what to name this', '1', '84569', 1, 'Unlock me.jpg', 0, 1, NULL, 0),
(114, 'Vigenère Breach', 'Challenge Description:\r\n\r\nA mysterious transmission has been intercepted during Operation Cipher‑Lock. Intelligence suggests the message contains a hidden flag, but it has been encrypted using a classical cipher. Your task is to recover the original message and extract the flag.\r\n\r\nThe intercepted ciphertext is shown below. A clue has been recovered from field notes left by an allied cryptanalyst.\r\n\r\nCiphertext: VJZ{UQZRX_EZVZKXK_2026}\r\n\r\nHint:\r\n\r\n    “The key is the surname of the man who cracked Enigma.”\r\n\r\nRequired Method:\r\n\r\nUse a Vigenère decryption tool or manual Vigenère table.\r\n\r\nFlag Format: CTF{SOMETHING_LIKE_THIS}', 'CTF{AGENT_UNLOCKED_2026}', 67, '0', '0', NULL, -1, 'medium_1980_1200__0024_.jpg', 0, 3, NULL, 0),
(115, 'So Many Posibilities', 'Greetings,\r\n\r\nA very important string of text has been lost and all that remains is the number used to encode it. This number is 97317531319071. The number is encoded through advanced mathematical equations which can be solved through steps below. \r\n\r\nEach number is assigned to a letter in the alphabet, from 0 - 25 (A = 0, B = 1, C = 2, ...). After completing each equation, you will need to assign the number the right corresponding letter. As a start, try figuring out how many combinations can be made with 10 letters.\r\n\r\nAll letters are in lower case and in the format CTF{<text>}. When you have decoded the string, report back your finding.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation\r\n\r\nHint: As a starting point, try to figure out how many combinations could be made with 10 letters.\r\nHint: All information is kept in base ten.', 'CTF{ryaniscool}', -1073741824, 'name', '0', NULL, -1, 'glorpshaka.gif', 0, 12, NULL, 5),
(116, 'The Outback Challenge', 'Rusell Coight has lost his 70 series landcruisers keys, can you help him find then so he can go back to camp', 'CTF{well_done_you_did it you found my landcruisers keys!}', 2, 'idk what to name this', '1', '84569', 1, 'Unlock me.jpg', 0, 1, NULL, 1),
(117, 'Challenge 11', 'The flag is: CTF{Flag11}', 'CTF{Flag11}', 5, 'Challenge11', '1', NULL, -1, 'key.jpg', 0, 1, NULL, 1),
(119, 'M..ONO-.LUCID-.-O', 'All has been well for city Flora until is was-. .----. -\r\nIt is your ta...k dear pla-.--er to decipher this data.-.. . .- -.- and find the ..-.l.-g', 'CTF{INKMAN}', 1, 'Vibing', '0', NULL, -1, 'img.jpg', 1, 1, NULL, 2),
(120, 'Sewers', 'Salutations,\r\n\r\nThe Arakawa corporation\'s Sub-nautical Espionage Division has discovered that the sewers beneath Twilight City are being used by the anarchic \"Ledgerunners\" as their base of operations, but they\'ve made a mistake - they left hints so their forgetful members can find their way. You will use this to our advantage. Once found, assault teams can sweep through and land a massive blow to the terrorist\'s infrastructure.\r\n\r\nThe challenge *can* be brute-forced; however, that will likely take longer than solving the puzzle and using it to locate the Ledgerunners\' base. From what we\'ve figured out so far, they use binary key codes they\'ve put around the sewers, with numbers associated with directions: 0 is left and 1 is right, but the numbers stop at some point.\r\n\r\nWe believe the code is double-encrypted, but can\'t figure out what it is and in what order. \r\n\r\nThe original code found is \"wfr_mQWLQF{vUMQ{xAWUFCAZO\" \r\n\r\nThe code found in the tunnels is 00100100\r\n\r\nYour job is to figure out which 2 ciphers are being used and what order they are done in to find hidden meeting place of the ruinous Ledgerunners. Their \"Secret Base Location\".\r\n\r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur\r\n\r\n-     The Arakawa Corporation\r\n\r\n\r\n\r\n\r\n\r\nWarning: Hints at the bottom, so don\'t scroll too fast if you believe it\'s more fun to stay in the dark!\r\n\r\n____________________________________________\r\n\r\n1. The code given is in binary. What number does it equal, and what ciphers might use binary/regular numbers?\r\n\r\n2. The XOR Cipher and Caesar Cipher are both used, but how are they used, and in what order?', 'CTF{Secret_Base_Location}', 2, 'Sewers', '23197', '666', 0, 'sewers.jpeg', 1, 3, NULL, 2),
(122, 'Find the password', 'Find the password', 'CTF{password}', 5, 'Schumacher', '-0.01', NULL, 1, 'images (2).jpeg', 0, 1, NULL, 0),
(123, 'Jailbreak', 'Placeholder text', 'CTF{hey_look_a_flash_drive}', 100, 'Jailbreak', '54844', NULL, 0, 'blackhathackers.jpeg', 0, 1, NULL, 0),
(124, 'Lighthouse', 'The Lighthouse needs help', 'CTF{LotsOfSteps}', 5, 'Lighthouse', '1', NULL, -1, '001_jVmI8.jpg', 0, 1, NULL, 0),
(125, 'JailTime', 'jailtime.', 'CTF{Security_updated}', 10, 'JailTime', '30845', NULL, -1, 'main.jpg', 0, 1, NULL, 0),
(127, 'Street Lights', 'intercept comms', 'CTF{Connection_Established_182145}', 10, 'StreetLights', '53462', NULL, -1, 'img.jpg', 0, 1, NULL, 0),
(129, 'Scary Challenge', 'Please Help us!!! Sheldon\'s Catchphrase word is the flag!', 'CTF(Bazinga)', 5, 'CMREECM', '1', NULL, -1, 'download.jpeg', 0, 1, NULL, 1),
(130, 'Find the secret!!!', 'We need your help!!!!!!!!', 'CTF{67_67}', 5, 'test9', '1', NULL, -1, '012bd8dfab0c2862cc585d8e561d7b91 (1).jpg', 0, 1, NULL, 0),
(131, 'Challenge', 'test', 'CTF{test}', 3, 'VeryCool', '0', NULL, -1, 'Window.jpg', 0, 1, NULL, 0),
(132, 'LighthouseS', 'will add later ', 'CTF{YOU_FOUND_ME}', 1, 'LighthouseS ', '1', NULL, -1, 'download.jpeg', 0, 1, NULL, 1),
(133, 'Find the cheese wedge', 'Find my Swedish cheese wedge hiding on the hill.', 'CTF{you_have_found the swedish cheese wedge}', 1, 'bagels', '1', '056462', 1, 'maxresdefault.jpg', 0, 1, NULL, 0),
(135, 'Change Bland Dudes website', 'The Bland Dudes have released their website, and it\'s extremely boring and in greyscale. Still, we\'ve gotten top secret info that there is a secret button that\'ll make the website extremely colourful like a disco, your mission is to get through the security and encryption to find this button and get the code inside.', 'CTF{SuperRGB}', 0, '0', '0', NULL, NULL, 'download (1).jpeg', 0, 8, NULL, 0),
(136, 'Find the Hideouts Location', 'Greetings,\r\n\r\nWe have received information of the whereabouts of a Ledgerunners secret hideout. We believe this could be a key piece in stopping these rebels. One of our informants took a picture from inside their secret base, which contains a weird amount of cheese. The image is attached to this task. Since the informant took this picture with his phone, we are able to extract the location data from it. Download it and find the location data so we can shut down this location. Find the exact location and report your findings.\r\n\r\nYou will need to install and use steghide on your terminal. It is best to research it before you use it. Using the passphrase \"location\" you can extract the secret data and input it using the format CTF{<location data}.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{LOCATION:5001, 2535, USA}', 2, '1', '1', '1', 1, 'CheeseVaultPost.jpg', 1, 3, NULL, 2),
(137, 'Save the Cheese Inside the Vault!', 'An alarm has been triggered inside the cheese vault, which could lead to overheating as a result. We need to know whether the cheese is warm (the perfect temperature) or not.\r\n', 'CTF{It\'s warm}', 25, 'CMREECM', '23.62 - This is a message from the vault, try decrypting it: 57,21,83,26,4,79,5,5,2,12', '1', 1, 'Screenshot from 2026-03-25 10-07-39.png', 0, 8, NULL, 1),
(138, 'Find The Message!', 'Somewhere there is a hidden message that contains more money then you can think about!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! (hint: download the image)', 'CTF{67_67}', 1, 'test9', '0', NULL, 1, 'feels-the-aura-aura.jpg', 1, 4, NULL, 1),
(139, 'So Many Possibilities', 'Salutations,\r\n\r\nA highly important string of text has been blotted out by ink in a desperate ploy by the Ledgerunners to hide their tracks and destroy evidence. All that remains is the number used to encode it. This number is 2121416864853860.\r\n\r\nIt is unknown how the number translates into text, but it is known that the string is 11 letters long and uses only English alphabet characters. \r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur \r\n\r\n-     The Arakawa Corporation\r\n_________________________\r\n\r\nHINTS BELOW:\r\n_________________________\r\n\r\nHint: As a starting point, try to figure out how many combinations could be made with 11 letters.\r\nHint: All information is kept in base ten.', 'CTF{passwordabc}', 4, 'VeryCool', '1', NULL, -1, 'Screenshot from 2025-08-10 22-20-40.png', 1, 3, NULL, 4),
(140, 'Intel Recon', 'Greetings,\r\n\r\nAs an intern for the Arakawa, your mission is to gather intel by intercepting encrypted messages sent by insiders working for the Ledgerunners, to stay a step ahead. You are eavesdropping over a public channel and you discover your adversaries are using a \"Diffie Hellman Key Exchange\", which is a method of disguising a way of decryption in plain sight. You are unsure what message is being sent, however you have the original encrypted string: BUGzuhld^ng^ldduhof;0ql|.\r\n\r\nWe have provided steps below. Complete the steps and report back.\r\n\r\n------------\r\n\r\nWarning hints at bottom of page: don\'t scroll too fast.\r\n\r\n------------\r\n\r\nFIRST STEP: you have listened and gathered 2 new numbers, which are 3 and 10. These numbers are the result of a calculation using the two adversaries\' secret keys, a public generator and a public prime number. The generator is 2, and the prime is 11.\r\n\r\nIn mathematics, a prime number is a number which only have whole number factors of itself and 1. The prime number here is 11, which follows those rules.\r\n\r\nThese numbers are used, an example shown below:\r\n\r\n2(generator)^x(secret key, person A) modulus 11(prime number) = new public number (in this case, 3)\r\n\r\n------------\r\n\r\nSTEP TWO:\r\nPerson A and B\'s secret keys are both between 0-10, so it is crack-able by brute force. Understand that key exchanges like this will not have this range, meaning there will be a incredibly large number of combinations. Using the example above, you will need to try combinations for the secret key, so that the answer becomes 3 or 10, matching the result earlier.\r\n\r\n------------\r\n\r\nSTEP THREE:\r\nOnce you have the secret key for either person, you can do another calculation to find the final decryption key. The formula is as follows:\r\n\r\nx(opposite person\'s public number, this will be either 3 or 10)^y(this person\'s secret key) modulus 11 (prime number) = Z\r\n\r\nThe key to this is that the answer \'Z\' will be the same for both persons A and B. Then, you will need to take the key and decrypt the message from the start which is encrypted using one of the methods listed below, see if you can figure it out:\r\n\r\n    AES 128\r\n    Ceasar Cipher\r\n    XOR Cipher\r\n    Base 64\r\n    ROT13\r\n\r\nSincerely, \r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation. \r\n\r\n------------\r\n\r\nHints below don\'t scroll unless you need help.\r\n\r\n------------\r\n\r\nHint 1:\r\nmodulus calculator: https://www.calculatorsoup.com/calculators/math/modulo-calculator.php\r\n\r\n------------\r\n\r\nHint 2:\r\nbinary conversion(when converting use 8 digits such a 3 in binary is 00000011): https://www.calculator.net/binary-calculator.html?d2bnumber1=1&calctype=d2b&x=Calculate#decimal2binary\r\n\r\n------------\r\n\r\nHint 3:\r\nXor website: https://md5decrypt.net/en/Xor/', 'CTF{time_of_meeting:1pm}', 3, 'JailTime', '1', NULL, 0, 'main.jpg', 1, 1, NULL, 3),
(141, 'Learn Counting With the Spice Guys', 'The Bland Dudes have made a HIDEOUS decision recently! Their president has decided to FURTHER DE-FUND THE EDUCATION SECTOR! This has meant that the numeracy rates have DROPPED!!!!!!!!\r\n\r\nWorry not, o\' victimised proletariat! Your heroes are here through the SPICE GUYS! In today\'s challenge, The Spice Guys aim to ASSIST *YOUR* EDUCATION.\r\n\r\nCount the pepper shakers, and use that... (TBC)\r\n\r\n\r\n\r\nhttp://10.177.203.103/assets/img/challengeImages/CAESAR_COUNTING_CHALLENGE_SMALLER.png', 'CTF{ILOVECAYENNEPEPPER}', 8, 'Spice Guys', '0', 'Spice Guys', -1, 'CAESAR_COUNTING_CHALLENGE_SMALLER.png', 0, 3, NULL, 5),
(142, 'Docker - Hack the pentagon', 'Hack into the docker container - 10.177.206.126:??????????', 'CTf{HackDocker}', 10, '0', '0', 'pentagonHack', 0, 'docker-hack-the-pentagon-b208a76f.png', 0, 3, NULL, 1),
(144, 'Docker: Mega Hack', 'Greetings,\r\n\r\nWe have found the Ledgerunners servers, we believe it is accessible through the following: 10.177.203.103: <PORT>\r\n\r\nThe Ledgrunners servers are usually well protected. This server, hosting a significant piece of information based on the Ledgerunners new tactical weapon, \"???\". This server has vulnerabilities we can exploit and hack into it. This weapon cannot come to light, or the Ledgerunners will be able to take over the city. \r\n(They\'ve got a global publisher)\r\n\r\nClick the \'start instance\' below to generate a new port. After finding the information, report back your findings in the format CTF{<Information>}.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation.', 'CTF{hackdocker}', 3, 'Mega Hack', '100', 'blanddudeshack', 1, 'docker-spice-guys-mega-hack-0105298f.png', 1, 2, NULL, 3),
(145, 'Docker ', '(Placeholder)', 'CTF{MONO}', 1, '0', '0', 'inkHack', 0, 'default_challenge.png', 0, 3, NULL, 0),
(146, 'Docker: compromised packages', 'intercept traffic between containers', 'CTF{traffic_84}', 10, 'Compromised Packages', '10', 'server01', 1, 'docker-compromised-packages-43c186c8.png', 0, 15, NULL, 1),
(147, 'Docker - Hacking into Ink', 'Hacking into the Ink man center, 10.177.206.126:?????', 'CTF{MONO}', 1, '1', '1', 'inkHack', 0, 'default_challenge.png', 0, 3, NULL, 0),
(148, '.', '.', '.', 1, '1', '1', NULL, 0, 'default_challenge.png', 0, 1, NULL, 0),
(150, 'Ough.,,', 'Ouuuughhhh.,,,.,.,,,', 'CTF{ough}', -1, ':3', '-1', NULL, 0, 'ough--5f679718.png', 0, 12, NULL, 0),
(151, 'Nothing.1', 'nothing.1', 'CTF{nothing}', 2, '1', '2', NULL, 1, 'nothing-2d699b4b.jpeg', 0, 1, NULL, 0),
(152, 'Tuff challenge ', 'tuff challenge', 'CTF{tuff}', 67, 'module', '1', NULL, 1, 'tuff-challenge--f08016e2.jpeg', 0, 1, NULL, 1),
(153, 'wawa (very important)', 'wawa', 'CTF{wawa:3}', 8000, 'wawa', '1', NULL, 0, 'wawa-43c9c239.jpeg', 0, 12, NULL, 1),
(154, 'Stegonography: Ink Man', 'The following is a record of the first direct contact from the self proclaimed leader of Ink. While this initial communication was simple, this individual has proved themself as someone who cannot be underestimated in light of recent events.\r\nThis challenge is for archival purposes but is a highly relevant piece of history related to the conflict with Ink.\r\nThe following message and file were provided in the original contact:\r\n\r\n\r\n\"You should know it is polite to say it back. Be sure to address who you speak to.\"\r\n\r\nhttp://10.177.203.103/assets/challengeFiles/first_contact/greeting.zip\r\n', 'CTF{Nice_To_Meet_You_Ink_Man}', 2, '0', '1', NULL, 0, 'test-challenge-fce95a91.png', 0, 3, NULL, 1),
(155, 'Arduino Board Challenge - Temperature', 'Greetings,\r\n\r\nWe have been observing the temperature inside one of our high security vaults. However, this task is too boring for our higher ups, so they are offloading this job to you. The vault you are observing is called \"CMREECM\" and can be observed on the MQTT server 10.177.203.103. Use it to see the information and input your findings in the format CTF{<Information>}.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation\r\n\r\n\r\nHINTS:\r\nHint 1: Make sure you\'re in a warm environment to optimise the Arduino Board\r\nHint 2: https://cs.franklin.edu/~whittakt/ITEC136/examples/encrypter.html', 'CTF{It is warm}', 2, 'CMREECM', '23.62 - This is a message from the vault, try decrypting it: 57,21,83,26,4,79,5,5,2,12', '1', 1, 'arduino-board-challenge-temperature-a047aa38.png', 1, 3, NULL, 2),
(156, 'Image test', 'test', 'CTF{test}', 0, '0', '0', NULL, 0, 'default_challenge.png', 0, 3, NULL, 0),
(157, 'Chatbot - BOFH', 'Convince the Bastard Operator From Hell (BOFH) to give you the admin password.\r\n\r\nhttp://10.177.203.103/pages/user/bofh_support.php\r\n\r\nThe flag is:\r\nCTF{<password>), eg. CTF{AdminPassword}', 'CTF{admin01}', 3, '0', '1', NULL, 0, 'chatbot-bofh-7962d8ac.png', 1, 4, NULL, 3),
(158, 'Encryption Hunt', 'start in plain sight. visit /pages/challenges/uniqueKeyGenPanel.php and enter your answer to proceed. \r\n\r\nflag part 1 = CTF{SUDORANDOM', 'CTF{SUDORANDOM130336}', 5, '0', '1', NULL, 0, 'encryption-hunt-e5c281d9.png', 1, 3, NULL, 5),
(159, 'The Whispering Daemon', 'Greetings,\r\n\r\nAfter the recent attacks on the city from the \"Ledgerunners\", we have been recovering vital infrastructure. While recovering, our investigators discover a strange anomaly in our network logs. A network daemon, codenamed \"Whisper,\" has been running in the background of several critical servers. This daemon is believed to be the work of the Ledgerunners, designed to transmit secret messages between compromised systems covertly.\r\n\r\nour analysts have intercepted a suspicious Docker container that appears to be running \"Whisper\". The daemon emits a faint signal.\r\nAll that’s clear is this:\r\n- The daemon outputs regular bursts of what appear to be random numbers.\r\n- Somewhere in these numbers, a hidden 9-letter passphrase is encoded.\r\n- The passphrase uses only uppercase English letters.\r\n- The daemon’s output is always in base ten (decimal).\r\n- The daemon is stateless: each time it starts up, it emits the same sequence.\r\n\r\nWe require you to analyse the container, reverse-engineer the encoding and recover the 9-letter passphrase. To proceed, activate the container below. Then, open a terminal on your device and enter the command \"nc {the IP given} {Port}\" to connect to the daemon’s output.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation\r\n\r\n*Hints:\r\nHint one: The daemon’s output is a series of decimal numbers. Consider how numbers might be mapped to letters.  \r\nHint two: The encoding is not simple ASCII or base64.  \r\nHint three: Check the code or the running process; does it use any mathematical operations or libraries that might suggest the encoding?  \r\nHint four: Try stopping and restarting the container to confirm its deterministic output.', 'CTF{LUCIDFLOW}', 2, '0', '1', 'Daemon', 0, 'the-whispering-daemon-53ab7ea5.jpeg', 1, 2, NULL, 2),
(160, 'Docker - Hacking into Ink', 'Hacking into the Ink man center, 10.177.206.126:?????', 'CTF{MONO}', 1, '1', '1', 'inkHack', 0, 'default_challenge.png', 0, 1, NULL, 0),
(161, 'Docker - Ink', 'Hacking into the Ink man center, 10.177.206.126:?????', 'CTF{WORK}', 1, '1', '1', 'inkHack', 0, 'default_challenge.png', 0, 3, NULL, 0),
(162, 'Hack into cheesevault - ssh (name change later)', '...', 'CTF{cheesewitch}', 67, '1', '1', 'cheeseVault', 1, 'default_challenge.png', 0, 17, NULL, 1),
(163, ' Spice Guys Hostage interrogation', 'Greetings,\r\n\r\nWe\'ve done it, we have successfully captured a group leader apart of the rebel group, the Ledgerunners. We also recovered a laptop, however, we dont know the password. Your job is to interrogate the prisoner until he gives you the password. You will need to get him talking, and watch for lies as he will try to deceive his way out of the prison.\r\n\r\nBelow is access to the prison cell.\r\nhttp://10.177.203.103/pages/user/Bland_Dudes.php\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation.', 'CTF{GrapeCake99}', 3, 'Bland Dudes', '1', NULL, 83, '-spice-guys-hostage-interrogation-fe6cd271.jpg', 1, 4, NULL, 3),
(165, 'The Train', 'Salutations,\r\n\r\nSome members of the villainous anarchist group known as the \"Ledgerunners\" have managed to halt operation of an Arakawa corporation-branded train. Your job is to hack into the control panel, and get the train working again. Scope-out their site and try to figure out a way to change the signal being sent. (Hint: it uses packets)\r\n\r\nhttp://10.177.203.103/pages/challenges/trainDataPublisher.php\r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur\r\n\r\n-     The Arakawa Corporation', 'CTF{TrainOnline5165}', 5, 'Train', '0', NULL, 83, 'train-89b9f027.jpeg', 1, 2, NULL, 5),
(166, 'Secret Club (unfinish)(this challenge is been giveup, do not work on it)', 'A secret online club has recently come under investigation after reports of suspicious network activity. Rumors suggest that the website contains a hidden VIP area that only privileged members can access.\r\n\r\nAlthough the website appears ordinary at first glance, there may be more to it than meets the eye. Explore the system carefully and uncover the secret hidden within.\r\n\r\nWebsite URL:\r\nhttp://localhost\r\n\r\nRecommended tools:\r\n- Wireshark\r\n- Burp Suite', 'CTF{Club}', 1, '1', '1', 'inkHack', 0, 'default_challenge.png', 0, 3, NULL, 1),
(167, 'Arduino Board Challenge - Windmill', 'p', 'CTF{in progress}', 25, 'SNORE', 'supersecrewt message or sum', '1', 0, 'arduino-board-challenge-f40d2f88.jpg', 0, 8, NULL, 1),
(171, 'The Anonymous Host', 'Greetings, \r\n\r\nOur Security Operations Centre (SOC) intercepted an authentication log containing 10 incoming connection attempts to an internal gateway. Nine of these attempts came from internal management interfaces, loopbacks, or private networks. Only one connection originated from a valid, publicly routable IP address on the open internet which we believe belongs to the rebel group the \"Ledgerunners\". Below is the Log file, find the IP address and submit it in the format CTF{<public_ip>}.\r\n\r\nhttp://10.177.203.103/assets/challengeFiles/access_log.txt\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{198.51.100.42}', 2, '-1', '1', NULL, -1, 'the-anonymous-host-b5d02732.jpeg', 1, 16, NULL, 2),
(172, 'Subnet Detective', 'Greetings,\r\n\r\nA higher up analyst has tracked a rogue connection, which we believe is from the rebel group the \"Ledgerunners\". We tracked this to a workstation on your local network. The workstation\'s IP address is 192.168.10.45 with a standard netmask of 255.255.255.0 (also known as a /24 subnet).\r\n\r\nIn a standard /24 subnet, the first IP address (.0) is the Network ID, and the last IP address (.255) is the Broadcast Address. Network routers (default gateways) almost always sit at the very first usable host address in the range.\r\n\r\nThe attacker redirected traffic through the default gateway to intercept data. Calculate the router\'s IP address and report back your findings. Submit your findings in the format CTF{<IP Address>}\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{192.168.10.1}', 1, 'working', '1', NULL, 0, 'subnet-detective-53d05516.jpeg', 1, 16, NULL, 1),
(173, 'IPv6 Reconstruction', 'hey, it\'s jim\r\n\r\nsome big-wig fellas from higher-on-up found some \"network device\" they\'re investigating. fellas wanted me to forward this \"IPv6 address\" written in its shortened form, to you, because the other guys who tell you this stuff aren\'t here to do it. the address is:\r\n\r\n2001:db8::1\r\n\r\nthey say \"IPv6 addresses are 128 bits long, and consist of 8 groups (hextets) separated by colons\". and, to keep them easy to read, \"networking protocols allow stringing consecutive groups of zeros together into a single double colon (::)\". this shortcut can only be used once in any address, though.\r\n\r\nthey want you to configure the firewall rule manually, saying \"you must restore the address to its full 8-group format, replacing the :: with the missing zero groups (0000)\".\r\n\r\nthanks, buddy\r\n\r\n10 year janitor nearing retirement, jim consley', 'CTF{2001:0db8:0000:0000:0000:0000:0000:0001}', 1, '1', '1', NULL, 1, 'pv6-reconstruction-cdd29800.jpeg', 1, 16, NULL, 1),
(174, 'Network Trace Hunt', 'Greetings, \r\n\r\nWe have assigned you the task of analysing a simulated network log. You can use grep to locate the hidden flag. Your aim is to run a grep command to extract the line containing the flag. The flag format is CTF{...}. Below is the setup. Complete this task and input your finding.\r\n\r\nSystem: Linux terminal\r\nFile: http://10.177.203.103/assets/challengeFiles/trace.txt\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{grep_master_2026}', 1, '-1', '1', NULL, -1, 'grep.png', 1, 17, NULL, 1),
(175, 'Disrupt the Aeroplane Traffic Lights', 'Salutations,\r\n\r\nWe have received information that a food transportation plane - having been commandeered by the violent anarchist group known as the \"Ledgerunners\" - is going to be the payload in an act of domestic terrorism in which the plane will be crashed directly into the Arakawa Human Resources department! Find the flag within the image, submit it, and make the lights go haywire so they can\'t take off!\r\n\r\nCheers,\r\n\r\nSenior Filibuster - Leland MacArthur\r\n\r\n-     The Arakawa Corporation\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n__________________________\r\n\r\nHINTS BELOW!!!\r\n__________________________\r\n\r\n1. Leave this window and go back to the challenge select.\r\n2. Download the image.\r\n3. Try looking into the image\'s metadata! Maybe there are some online sites that can help?', 'CTF{ImminentlyGravitybound}', 3, 'aeroplane_light_ARDUINO_THINGY', '0', NULL, 0, 'disrupt-the-aeroplane-traffic-lights-83d06f24.jpg', 1, 3, NULL, 3),
(176, 'Find the Mole', 'Greetings,\r\n\r\nWe believe a Ledgerunners mole has infiltrated into the Arakawa Corporation. They could be standing among you as we speak. Be cautious of the people around you and pay close attention to everyone. They may have slight differences in Arakawa branded items, since they would only have bootleg options available to buy. Once you have found the mole, Report back with your findings so we can take them down.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{Jamez}', 1, 'Mole', '0', NULL, 0, 'default_challenge.png', 0, 4, NULL, 1),
(177, 'Find the Mole', 'Greetings,\r\n\r\nWe believe a Ledgerunners mole has infiltrated into the Arakawa Corporation. They could be standing among you as we speak. Be cautious of the people around you and pay close attention to everyone. They may have slight differences in Arakawa branded items, since they would only have bootleg options available to buy. Once you have found the mole, Report back with your findings so we can take them down.\r\n\r\nSincerely,\r\n\r\nSenior Filibuster - Alan Toure\r\n\r\nThe Arakawa Corporation', 'CTF{Jamez}', 3, NULL, NULL, NULL, NULL, 'find-the-mole-96fb3be3.png', 1, 4, NULL, 3),
(178, 'breach the SSH server', 'The Ledgerunners have a gaping vulnerability in their infastructure - their passwords are shockingly bad. This particular server which houses data about the identity of the Ledgerunners currently active, is likely to be locked behind a password barrier of \'password\'. However, you still must get inside the server for that to work. Here\'s what we know:\r\n\r\n- You should start the container below\r\n- The port should be displayed below alongside the ip address\r\n- The command to copy an image file to your device is the following: \"scp -P <PORT> root@<IP ADDRESS>:/var/www/html/<FILENAME> ~/Downloads/\"\r\n\r\nPrevious employees didn\'t get far, but they did discover an obscured string: ', 'CTF{test}', 1, '1', '1', 'sshhack', 1, 'default_challenge.png', 0, 2, NULL, 3),
(179, 'breach the SSH server', 'The Ledgerunners have a gaping vulnerability in their infastructure - their passwords are shockingly bad. This particular server which houses data about the identity of the Ledgerunners currently active, is likely to be locked behind a password barrier of \'password\'. However, you still must get inside the server for that to work. Here\'s what we know:\r\n\r\n- You should start the container below\r\n- The port should be displayed below alongside the ip address\r\n- The command to copy an image file to your device is the following: \"scp -P <PORT> root@<IP ADDRESS>:/var/www/html/<FILENAME> ~/Downloads/\"\r\n\r\nPrevious employees didn\'t get far, but they did discover an obscured string: ', 'CTF{test}', 3, NULL, NULL, 'sshhack', NULL, 'breach-the-ssh-server-5c4262ca.png', 1, 2, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ContactUs`
--

CREATE TABLE `ContactUs` (
  `ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Email` text NOT NULL,
  `IsRead` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ContactUs`
--

INSERT INTO `ContactUs` (`ID`, `Username`, `Email`, `IsRead`) VALUES
(1, 'Oliver', 'test123@gmail.com', 0),
(2, 'Oliver', 'teser1@gmail.com', 0),
(3, 'fef', 'test123', 0),
(4, 'dewf', 'test12', 0),
(5, 'agfadfga', 'ryan.cather@ed.act.edu.au', 0),
(6, 'User21', '27@gmail.com', 1),
(7, 'saxo', 'test.com', 1),
(8, 'Oliver', '123@test.com', 1),
(9, 'no', 'doesthisevenwork@notgmail.com', 1),
(10, 'Problum chiels', 'tjis page isnt working', 0);

-- --------------------------------------------------------

--
-- Table structure for table `DockerContainers`
--

CREATE TABLE `DockerContainers` (
  `ID` int(11) NOT NULL,
  `timeInitialised` timestamp NOT NULL,
  `userID` int(11) NOT NULL,
  `challengeID` text NOT NULL,
  `port` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventLog`
--

CREATE TABLE `eventLog` (
  `id` int(11) NOT NULL,
  `moduleName` text NOT NULL,
  `eventText` text NOT NULL,
  `datePosted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `eventLog`
--

INSERT INTO `eventLog` (`id`, `moduleName`, `eventText`, `datePosted`) VALUES
(1, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:05:59'),
(2, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:04'),
(3, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:09'),
(4, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:14'),
(5, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:19'),
(6, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:24'),
(7, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:30'),
(8, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:30'),
(9, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:41'),
(10, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:46'),
(11, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:51'),
(12, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:06:56'),
(13, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:01'),
(14, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:06'),
(15, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:11'),
(16, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:16'),
(17, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:21'),
(18, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:26'),
(19, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:31'),
(20, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:37'),
(21, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:42'),
(22, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:47'),
(23, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:52'),
(24, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:07:57'),
(25, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:02'),
(26, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:07'),
(27, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:12'),
(28, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:17'),
(29, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:22'),
(30, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:27'),
(31, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:32'),
(32, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:38'),
(33, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:43'),
(34, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:48'),
(35, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:53'),
(36, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:08:58'),
(37, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:03'),
(38, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:08'),
(39, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:13'),
(40, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:18'),
(41, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:23'),
(42, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:28'),
(43, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:34'),
(44, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:39'),
(45, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:44'),
(46, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:49'),
(47, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:54'),
(48, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:09:59'),
(49, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:04'),
(50, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:09'),
(51, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:14'),
(52, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:19'),
(53, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:19'),
(54, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:30'),
(55, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:35'),
(56, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:40'),
(57, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:45'),
(58, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:45'),
(59, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:50'),
(60, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:10:55'),
(61, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:00'),
(62, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:05'),
(63, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:10'),
(64, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:15'),
(65, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:20'),
(66, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:25'),
(67, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:31'),
(68, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:36'),
(69, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:41'),
(70, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:46'),
(71, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:51'),
(72, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:11:56'),
(73, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:01'),
(74, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:06'),
(75, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:11'),
(76, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:16'),
(77, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:21'),
(78, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:27'),
(79, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:32'),
(80, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:37'),
(81, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:42'),
(82, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:47'),
(83, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:12:52'),
(84, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:17'),
(85, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:17'),
(86, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:22'),
(87, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:27'),
(88, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:33'),
(89, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:38'),
(90, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:43'),
(91, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:48'),
(92, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:53'),
(93, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:13:58'),
(94, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:03'),
(95, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:08'),
(96, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:13'),
(97, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:18'),
(98, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:23'),
(99, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:29'),
(100, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:34'),
(101, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:39'),
(102, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:44'),
(103, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:49'),
(104, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:54'),
(105, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:14:59'),
(106, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:04'),
(107, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:09'),
(108, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:18'),
(109, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:23'),
(110, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:28'),
(111, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:53'),
(112, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:53'),
(113, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:15:58'),
(114, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:03'),
(115, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:08'),
(116, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:14'),
(117, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:19'),
(118, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:24'),
(119, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:29'),
(120, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:34'),
(121, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:39'),
(122, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:44'),
(123, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:54'),
(124, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:16:59'),
(125, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:04'),
(126, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:10'),
(127, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:15'),
(128, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:20'),
(129, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:25'),
(130, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:30'),
(131, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:35'),
(132, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:40'),
(133, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:46'),
(134, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:51'),
(135, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:17:56'),
(136, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:02'),
(137, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:07'),
(138, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:12'),
(139, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:17'),
(140, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:22'),
(141, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:27'),
(142, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:32'),
(143, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:37'),
(144, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:37'),
(145, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:42'),
(146, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:47'),
(147, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:53'),
(148, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:18:58'),
(149, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:07'),
(150, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:12'),
(151, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:17'),
(152, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:17'),
(153, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:27'),
(154, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:32'),
(155, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:37'),
(156, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:37'),
(157, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:47'),
(158, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:47'),
(159, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:19:52'),
(160, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:02'),
(161, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:03'),
(162, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:08'),
(163, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:13'),
(164, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:18'),
(165, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:23'),
(166, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:28'),
(167, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:33'),
(168, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:38'),
(169, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:43'),
(170, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:48'),
(171, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:53'),
(172, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:20:58'),
(173, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:21:54'),
(174, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:21:54'),
(175, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:21:59'),
(176, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:04'),
(177, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:09'),
(178, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:14'),
(179, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:19'),
(180, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:24'),
(181, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:30'),
(182, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:30'),
(183, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:35'),
(184, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:40'),
(185, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:45'),
(186, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:50'),
(187, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:22:55'),
(188, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:23:39'),
(189, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:23:44'),
(190, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:23:49'),
(191, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:23:55'),
(192, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:00'),
(193, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:05'),
(194, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:10'),
(195, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:15'),
(196, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:20'),
(197, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:20'),
(198, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:30'),
(199, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:30'),
(200, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:41'),
(201, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:41'),
(202, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:46'),
(203, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:51'),
(204, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:24:56'),
(205, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:01'),
(206, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:06'),
(207, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:11'),
(208, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:16'),
(209, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:22'),
(210, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:27'),
(211, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:32'),
(212, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:37'),
(213, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:42'),
(214, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:47'),
(215, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:52'),
(216, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:25:58'),
(217, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:03'),
(218, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:08'),
(219, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:13'),
(220, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:18'),
(221, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:23'),
(222, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:28'),
(223, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:33'),
(224, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:39'),
(225, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:44'),
(226, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:49'),
(227, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:54'),
(228, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:26:59'),
(229, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:04'),
(230, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:09'),
(231, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:15'),
(232, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:20'),
(233, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:25'),
(234, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:30'),
(235, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:35'),
(236, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:40'),
(237, 'Windmill', 'Windmill is online. Yay', '2026-06-10 04:27:45'),
(238, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:20'),
(239, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:20'),
(240, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:30'),
(241, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:35'),
(242, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:35'),
(243, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:45'),
(244, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:45'),
(245, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:50'),
(246, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:54:55'),
(247, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:01'),
(248, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:06'),
(249, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:11'),
(250, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:16'),
(251, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:21'),
(252, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:26'),
(253, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:31'),
(254, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:36'),
(255, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:41'),
(256, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:47'),
(257, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:52'),
(258, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:55:57'),
(259, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:02'),
(260, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:07'),
(261, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:12'),
(262, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:17'),
(263, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:23'),
(264, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:28'),
(265, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:33'),
(266, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:38'),
(267, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:43'),
(268, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:48'),
(269, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:53'),
(270, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:56:58'),
(271, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:04'),
(272, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:09'),
(273, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:14'),
(274, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:19'),
(275, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:24'),
(276, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:29'),
(277, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:34'),
(278, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:39'),
(279, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:44'),
(280, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:50'),
(281, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:50'),
(282, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:57:55'),
(283, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:00'),
(284, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:05'),
(285, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:10'),
(286, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:15'),
(287, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:21'),
(288, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:26'),
(289, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:31'),
(290, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:36'),
(291, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:41'),
(292, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:46'),
(293, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:52'),
(294, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:58:57'),
(295, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:02'),
(296, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:07'),
(297, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:12'),
(298, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:17'),
(299, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:22'),
(300, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:27'),
(301, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:33'),
(302, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:38'),
(303, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:43'),
(304, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:48'),
(305, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:53'),
(306, 'Windmill', 'Windmill is online. Yay', '2026-07-23 01:59:58'),
(307, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:04'),
(308, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:09'),
(309, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:14'),
(310, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:19'),
(311, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:24'),
(312, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:29'),
(313, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:34'),
(314, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:39'),
(315, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:45'),
(316, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:45'),
(317, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:50'),
(318, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:00:55'),
(319, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:00'),
(320, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:05'),
(321, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:10'),
(322, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:15'),
(323, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:21'),
(324, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:26'),
(325, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:31'),
(326, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:36'),
(327, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:41'),
(328, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:46'),
(329, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:51'),
(330, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:01:57'),
(331, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:02'),
(332, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:07'),
(333, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:12'),
(334, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:17'),
(335, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:22'),
(336, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:27'),
(337, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:33'),
(338, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:38'),
(339, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:43'),
(340, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:48'),
(341, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:53'),
(342, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:02:58'),
(343, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:03'),
(344, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:09'),
(345, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:14'),
(346, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:19'),
(347, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:24'),
(348, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:29'),
(349, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:34'),
(350, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:39'),
(351, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:44'),
(352, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:50'),
(353, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:50'),
(354, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:03:55'),
(355, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:00'),
(356, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:05'),
(357, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:10'),
(358, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:15'),
(359, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:20'),
(360, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:25'),
(361, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:31'),
(362, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:36'),
(363, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:41'),
(364, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:46'),
(365, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:51'),
(366, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:04:56'),
(367, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:01'),
(368, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:07'),
(369, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:12'),
(370, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:17'),
(371, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:22'),
(372, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:27'),
(373, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:32'),
(374, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:37'),
(375, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:42'),
(376, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:48'),
(377, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:53'),
(378, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:05:58'),
(379, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:03'),
(380, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:08'),
(381, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:13'),
(382, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:18'),
(383, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:24'),
(384, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:29'),
(385, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:34'),
(386, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:39'),
(387, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:44'),
(388, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:49'),
(389, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:06:54'),
(390, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:00'),
(391, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:00'),
(392, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:05'),
(393, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:10'),
(394, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:15'),
(395, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:20'),
(396, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:25'),
(397, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:30'),
(398, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:36'),
(399, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:41'),
(400, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:46'),
(401, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:51'),
(402, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:07:56'),
(403, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:01'),
(404, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:06'),
(405, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:11'),
(406, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:16'),
(407, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:22'),
(408, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:27'),
(409, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:32'),
(410, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:37'),
(411, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:42'),
(412, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:47'),
(413, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:52'),
(414, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:08:58'),
(415, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:03'),
(416, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:08'),
(417, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:13'),
(418, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:18'),
(419, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:23'),
(420, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:28'),
(421, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:33'),
(422, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:39'),
(423, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:44'),
(424, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:49'),
(425, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:54'),
(426, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:09:59'),
(427, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:04'),
(428, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:09'),
(429, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:14'),
(430, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:19'),
(431, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:25'),
(432, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:30'),
(433, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:30'),
(434, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:35'),
(435, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:40'),
(436, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:45'),
(437, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:50'),
(438, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:10:55'),
(439, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:01'),
(440, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:06'),
(441, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:11'),
(442, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:16'),
(443, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:21'),
(444, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:26'),
(445, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:31'),
(446, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:37'),
(447, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:42'),
(448, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:47'),
(449, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:52'),
(450, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:11:57'),
(451, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:02'),
(452, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:07'),
(453, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:12'),
(454, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:18'),
(455, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:23'),
(456, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:28'),
(457, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:33'),
(458, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:38'),
(459, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:43'),
(460, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:48'),
(461, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:53'),
(462, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:12:59'),
(463, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:04'),
(464, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:09'),
(465, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:14'),
(466, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:19'),
(467, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:24'),
(468, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:29'),
(469, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:35'),
(470, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:40'),
(471, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:40'),
(472, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:45'),
(473, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:50'),
(474, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:13:55'),
(475, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:00'),
(476, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:06'),
(477, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:11'),
(478, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:16'),
(479, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:21'),
(480, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:26'),
(481, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:31'),
(482, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:36'),
(483, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:41'),
(484, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:46'),
(485, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:52'),
(486, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:14:57'),
(487, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:02'),
(488, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:07'),
(489, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:12'),
(490, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:17'),
(491, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:22'),
(492, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:28'),
(493, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:33'),
(494, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:38'),
(495, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:43'),
(496, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:48'),
(497, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:53'),
(498, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:15:58'),
(499, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:03'),
(500, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:09'),
(501, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:14'),
(502, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:19'),
(503, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:24'),
(504, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:29'),
(505, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:34'),
(506, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:39'),
(507, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:45'),
(508, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:50'),
(509, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:50'),
(510, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:16:55'),
(511, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:00'),
(512, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:05'),
(513, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:10'),
(514, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:16'),
(515, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:21'),
(516, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:26'),
(517, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:31'),
(518, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:36'),
(519, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:41'),
(520, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:46'),
(521, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:52'),
(522, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:17:57'),
(523, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:02'),
(524, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:07'),
(525, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:12'),
(526, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:17'),
(527, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:22'),
(528, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:27'),
(529, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:33'),
(530, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:38'),
(531, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:43'),
(532, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:48'),
(533, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:53'),
(534, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:18:58'),
(535, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:04'),
(536, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:09'),
(537, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:14'),
(538, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:19'),
(539, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:24'),
(540, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:29'),
(541, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:34'),
(542, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:40'),
(543, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:45'),
(544, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:45'),
(545, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:50'),
(546, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:19:55'),
(547, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:00'),
(548, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:05'),
(549, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:11'),
(550, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:16'),
(551, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:21'),
(552, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:26'),
(553, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:31'),
(554, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:36'),
(555, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:41'),
(556, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:47'),
(557, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:52'),
(558, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:20:57'),
(559, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:02'),
(560, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:07'),
(561, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:12'),
(562, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:17'),
(563, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:23'),
(564, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:28'),
(565, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:33'),
(566, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:38'),
(567, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:43'),
(568, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:48'),
(569, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:53'),
(570, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:21:59'),
(571, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:04'),
(572, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:09'),
(573, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:14'),
(574, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:19'),
(575, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:24'),
(576, 'Windmill', 'Windmill is online. Yay', '2026-07-23 02:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `Learn`
--

CREATE TABLE `Learn` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Icon` text NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Learn`
--

INSERT INTO `Learn` (`ID`, `Name`, `Icon`, `Text`) VALUES
(1, 'Inspect Element (Fire Department)', 'FireDept.jpg', '<p> All websites are built with something called HTML, HTML is a markdown language, like all other kinds of markdown/programming languages, HTML has the ability to make comments in the code, these comments are not visible on the end product but is visible in the code. </p> <p> Thankfully all browsers have the ability to see the HTML code that made the website </p> <iframe width=\"760\" height=\"515\" src=\"https://www.youtube.com/embed/csy5neBsItY?si=sqIKRd6sElKr-eBP\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(5, 'Caesar Cipher (Windmill)', 'Windmill.jpg', '<p> Cryptography is the art of encrypting data. Encryption is making data not readable unless if the recipient of the data knows hows to unencrypt the data. </p> <p> Ceaser Cipher is a type of encryption named after Julius Caesar, who used it for military messages. </p> <p> Try using the website below to encrypt and even decrypt messages. </p> <iframe src=\"https://cryptii.com/pipes/caesar-cipher\" width=\"1500\" height=\"515\"=></iframe>'),
(7, 'Hex Data (Train Timer)', 'TrainLCD.jpg', '<p> Hex/Hexadecimal is the human friendly version of <a href=\"https://en.wikipedia.org/wiki/Binary_code\" target=\"_blank\"> binary data </a> This data is represented with the symbols of 0-9 (representing data values between 0 to 9) and A-F (representing data values between 10 to 15) </p> <p> While all files have hex values, not all of the hex values in the file may be used by the program using the file. </p> <p> Using the online hex editor below, download and open the image from the challenge and see if you can spot the hidden data </p> <iframe src=\"https://hexed.it/\" width=\"1500\" height=\"515\"=></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `ModuleData`
--

CREATE TABLE `ModuleData` (
  `id` int(11) NOT NULL,
  `ModuleID` int(11) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `Data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ModuleData`
--

INSERT INTO `ModuleData` (`id`, `ModuleID`, `DateTime`, `Data`) VALUES
(1, 4, '2026-06-10 04:19:07', '43363'),
(2, 4, '2026-06-10 04:19:12', '53203'),
(3, 4, '2026-06-10 04:19:17', '42065'),
(4, 4, '2026-06-10 04:19:22', '82395'),
(5, 4, '2026-06-10 04:19:27', '45740'),
(6, 4, '2026-06-10 04:19:32', '70973'),
(7, 4, '2026-06-10 04:19:37', '68234'),
(8, 4, '2026-06-10 04:19:37', '67446'),
(9, 4, '2026-06-10 04:19:47', '81139'),
(10, 4, '2026-06-10 04:19:47', '14778'),
(11, 4, '2026-06-10 04:19:52', '50530'),
(12, 4, '2026-06-10 04:20:02', '25553'),
(13, 4, '2026-06-10 04:20:03', '30195'),
(14, 4, '2026-06-10 04:20:08', '42575'),
(15, 4, '2026-06-10 04:20:13', '60027'),
(16, 4, '2026-06-10 04:20:18', '3064'),
(17, 4, '2026-06-10 04:20:23', '55965'),
(18, 4, '2026-06-10 04:20:28', '91084'),
(19, 4, '2026-06-10 04:20:33', '88951'),
(20, 4, '2026-06-10 04:20:38', '48'),
(21, 4, '2026-06-10 04:20:43', '14984'),
(22, 4, '2026-06-10 04:20:48', '55453'),
(23, 4, '2026-06-10 04:20:53', '15738'),
(24, 4, '2026-06-10 04:20:59', '53591'),
(25, 4, '2026-06-10 04:21:54', '89477'),
(26, 4, '2026-06-10 04:21:59', '58226'),
(27, 4, '2026-06-10 04:22:04', '35801'),
(28, 4, '2026-06-10 04:22:09', '17972'),
(29, 4, '2026-06-10 04:22:14', '74612'),
(30, 4, '2026-06-10 04:22:19', '8382'),
(31, 4, '2026-06-10 04:22:25', '13740'),
(32, 4, '2026-06-10 04:22:30', '44314'),
(33, 4, '2026-06-10 04:22:30', '21985'),
(34, 4, '2026-06-10 04:22:35', '40499'),
(35, 4, '2026-06-10 04:22:40', '85748'),
(36, 4, '2026-06-10 04:22:45', '35523'),
(37, 4, '2026-06-10 04:22:50', '58232'),
(38, 4, '2026-06-10 04:22:55', '29798'),
(39, 4, '2026-06-10 04:23:39', '63600'),
(40, 4, '2026-06-10 04:23:44', '1241'),
(41, 4, '2026-06-10 04:23:50', '64502'),
(42, 4, '2026-06-10 04:23:55', '17899'),
(43, 4, '2026-06-10 04:24:00', '47235'),
(44, 4, '2026-06-10 04:24:05', '38693'),
(45, 4, '2026-06-10 04:24:10', '81789'),
(46, 4, '2026-06-10 04:24:15', '11624'),
(47, 4, '2026-06-10 04:24:20', '70242'),
(48, 4, '2026-06-10 04:24:25', '31493'),
(49, 4, '2026-06-10 04:24:30', '44178'),
(50, 4, '2026-06-10 04:24:30', '9002'),
(51, 4, '2026-06-10 04:24:41', '37581'),
(52, 4, '2026-06-10 04:24:41', '84130'),
(53, 4, '2026-06-10 04:24:46', '95425'),
(54, 4, '2026-06-10 04:24:51', '46425'),
(55, 4, '2026-06-10 04:24:56', '8639'),
(56, 4, '2026-06-10 04:25:01', '19379'),
(57, 4, '2026-06-10 04:25:06', '4267'),
(58, 4, '2026-06-10 04:25:11', '83848'),
(59, 4, '2026-06-10 04:25:16', '2213'),
(60, 4, '2026-06-10 04:25:22', '14999'),
(61, 4, '2026-06-10 04:25:27', '48939'),
(62, 4, '2026-06-10 04:25:32', '54101'),
(63, 4, '2026-06-10 04:25:37', '15443'),
(64, 4, '2026-06-10 04:25:42', '5139'),
(65, 4, '2026-06-10 04:25:47', '61802'),
(66, 4, '2026-06-10 04:25:52', '27751'),
(67, 4, '2026-06-10 04:25:58', '11532'),
(68, 4, '2026-06-10 04:26:03', '1457'),
(69, 4, '2026-06-10 04:26:08', '31374'),
(70, 4, '2026-06-10 04:26:13', '86088'),
(71, 4, '2026-06-10 04:26:18', '1392'),
(72, 4, '2026-06-10 04:26:23', '43620'),
(73, 4, '2026-06-10 04:26:28', '27798'),
(74, 4, '2026-06-10 04:26:33', '24943'),
(75, 4, '2026-06-10 04:26:39', '58556'),
(76, 4, '2026-06-10 04:26:44', '40469'),
(77, 4, '2026-06-10 04:26:49', '13663'),
(78, 4, '2026-06-10 04:26:54', '13623'),
(79, 4, '2026-06-10 04:26:59', '70808'),
(80, 4, '2026-06-10 04:27:04', '31468'),
(81, 4, '2026-06-10 04:27:09', '56135'),
(82, 4, '2026-06-10 04:27:15', '61951'),
(83, 4, '2026-06-10 04:27:20', '81704'),
(84, 4, '2026-06-10 04:27:25', '51688'),
(85, 4, '2026-06-10 04:27:30', '60442'),
(86, 4, '2026-06-10 04:27:35', '58489'),
(87, 4, '2026-06-10 04:27:40', '96122'),
(88, 4, '2026-06-10 04:27:45', '9431'),
(89, 4, '2026-07-23 01:54:25', '13814'),
(90, 4, '2026-07-23 01:54:30', '63479'),
(91, 4, '2026-07-23 01:54:35', '63735'),
(92, 4, '2026-07-23 01:54:35', '11252'),
(93, 4, '2026-07-23 01:54:45', '50480'),
(94, 4, '2026-07-23 01:54:45', '4456'),
(95, 4, '2026-07-23 01:54:50', '51949'),
(96, 4, '2026-07-23 01:54:55', '24346'),
(97, 4, '2026-07-23 01:55:01', '46094'),
(98, 4, '2026-07-23 01:55:06', '30873'),
(99, 4, '2026-07-23 01:55:11', '12065'),
(100, 4, '2026-07-23 01:55:16', '56874'),
(101, 4, '2026-07-23 01:55:21', '15713'),
(102, 4, '2026-07-23 01:55:26', '27873'),
(103, 4, '2026-07-23 01:55:31', '65209'),
(104, 4, '2026-07-23 01:55:36', '70534'),
(105, 4, '2026-07-23 01:55:41', '562'),
(106, 4, '2026-07-23 01:55:47', '17768'),
(107, 4, '2026-07-23 01:55:52', '20134'),
(108, 4, '2026-07-23 01:55:57', '74430'),
(109, 4, '2026-07-23 01:56:02', '96183'),
(110, 4, '2026-07-23 01:56:07', '27911'),
(111, 4, '2026-07-23 01:56:12', '61126'),
(112, 4, '2026-07-23 01:56:17', '93175'),
(113, 4, '2026-07-23 01:56:23', '91494'),
(114, 4, '2026-07-23 01:56:28', '2807'),
(115, 4, '2026-07-23 01:56:33', '49440'),
(116, 4, '2026-07-23 01:56:38', '14826'),
(117, 4, '2026-07-23 01:56:43', '12048'),
(118, 4, '2026-07-23 01:56:48', '19111'),
(119, 4, '2026-07-23 01:56:53', '18650'),
(120, 4, '2026-07-23 01:56:58', '98526'),
(121, 4, '2026-07-23 01:57:04', '9323'),
(122, 4, '2026-07-23 01:57:09', '58597'),
(123, 4, '2026-07-23 01:57:14', '92576'),
(124, 4, '2026-07-23 01:57:19', '64652'),
(125, 4, '2026-07-23 01:57:24', '37392'),
(126, 4, '2026-07-23 01:57:29', '89052'),
(127, 4, '2026-07-23 01:57:34', '76024'),
(128, 4, '2026-07-23 01:57:39', '24317'),
(129, 4, '2026-07-23 01:57:44', '30342'),
(130, 4, '2026-07-23 01:57:50', '70724'),
(131, 4, '2026-07-23 01:57:55', '62430'),
(132, 4, '2026-07-23 01:57:55', '6109'),
(133, 4, '2026-07-23 01:58:00', '84217'),
(134, 4, '2026-07-23 01:58:05', '54340'),
(135, 4, '2026-07-23 01:58:10', '84471'),
(136, 4, '2026-07-23 01:58:15', '68511'),
(137, 4, '2026-07-23 01:58:21', '90370'),
(138, 4, '2026-07-23 01:58:26', '37356'),
(139, 4, '2026-07-23 01:58:31', '31562'),
(140, 4, '2026-07-23 01:58:36', '75525'),
(141, 4, '2026-07-23 01:58:41', '68156'),
(142, 4, '2026-07-23 01:58:46', '7669'),
(143, 4, '2026-07-23 01:58:52', '55185'),
(144, 4, '2026-07-23 01:58:57', '8021'),
(145, 4, '2026-07-23 01:59:02', '65967'),
(146, 4, '2026-07-23 01:59:07', '80868'),
(147, 4, '2026-07-23 01:59:12', '9423'),
(148, 4, '2026-07-23 01:59:17', '40124'),
(149, 4, '2026-07-23 01:59:22', '21099'),
(150, 4, '2026-07-23 01:59:28', '28782'),
(151, 4, '2026-07-23 01:59:33', '53203'),
(152, 4, '2026-07-23 01:59:38', '81614'),
(153, 4, '2026-07-23 01:59:43', '30478'),
(154, 4, '2026-07-23 01:59:48', '11159'),
(155, 4, '2026-07-23 01:59:53', '58216'),
(156, 4, '2026-07-23 01:59:58', '9903'),
(157, 4, '2026-07-23 02:00:04', '33779'),
(158, 4, '2026-07-23 02:00:09', '50764'),
(159, 4, '2026-07-23 02:00:14', '36818'),
(160, 4, '2026-07-23 02:00:19', '31984'),
(161, 4, '2026-07-23 02:00:24', '31095'),
(162, 4, '2026-07-23 02:00:29', '86085'),
(163, 4, '2026-07-23 02:00:34', '99276'),
(164, 4, '2026-07-23 02:00:39', '38052'),
(165, 4, '2026-07-23 02:00:45', '46635'),
(166, 4, '2026-07-23 02:00:50', '5991'),
(167, 4, '2026-07-23 02:00:50', '96759'),
(168, 4, '2026-07-23 02:00:55', '89559'),
(169, 4, '2026-07-23 02:01:00', '9326'),
(170, 4, '2026-07-23 02:01:05', '15624'),
(171, 4, '2026-07-23 02:01:10', '35970'),
(172, 4, '2026-07-23 02:01:15', '35389'),
(173, 4, '2026-07-23 02:01:21', '73006'),
(174, 4, '2026-07-23 02:01:26', '62838'),
(175, 4, '2026-07-23 02:01:31', '14125'),
(176, 4, '2026-07-23 02:01:36', '28031'),
(177, 4, '2026-07-23 02:01:41', '92100'),
(178, 4, '2026-07-23 02:01:46', '11079'),
(179, 4, '2026-07-23 02:01:51', '48166'),
(180, 4, '2026-07-23 02:01:57', '60840'),
(181, 4, '2026-07-23 02:02:02', '19250'),
(182, 4, '2026-07-23 02:02:07', '8101'),
(183, 4, '2026-07-23 02:02:12', '50468'),
(184, 4, '2026-07-23 02:02:17', '97478'),
(185, 4, '2026-07-23 02:02:22', '67684'),
(186, 4, '2026-07-23 02:02:27', '8800'),
(187, 4, '2026-07-23 02:02:33', '84988'),
(188, 4, '2026-07-23 02:02:38', '43795'),
(189, 4, '2026-07-23 02:02:43', '37086'),
(190, 4, '2026-07-23 02:02:48', '51151'),
(191, 4, '2026-07-23 02:02:53', '47498'),
(192, 4, '2026-07-23 02:02:58', '56034'),
(193, 4, '2026-07-23 02:03:03', '24962'),
(194, 4, '2026-07-23 02:03:09', '80670'),
(195, 4, '2026-07-23 02:03:14', '47095'),
(196, 4, '2026-07-23 02:03:19', '89014'),
(197, 4, '2026-07-23 02:03:24', '21946'),
(198, 4, '2026-07-23 02:03:29', '84216'),
(199, 4, '2026-07-23 02:03:34', '96360'),
(200, 4, '2026-07-23 02:03:39', '80893'),
(201, 4, '2026-07-23 02:03:45', '97560'),
(202, 4, '2026-07-23 02:03:50', '86205'),
(203, 4, '2026-07-23 02:03:55', '68523'),
(204, 4, '2026-07-23 02:03:55', '90023'),
(205, 4, '2026-07-23 02:04:00', '85914'),
(206, 4, '2026-07-23 02:04:05', '46369'),
(207, 4, '2026-07-23 02:04:10', '65961'),
(208, 4, '2026-07-23 02:04:15', '56168'),
(209, 4, '2026-07-23 02:04:20', '63444'),
(210, 4, '2026-07-23 02:04:25', '35946'),
(211, 4, '2026-07-23 02:04:31', '95958'),
(212, 4, '2026-07-23 02:04:36', '37009'),
(213, 4, '2026-07-23 02:04:41', '8214'),
(214, 4, '2026-07-23 02:04:46', '7044'),
(215, 4, '2026-07-23 02:04:51', '49054'),
(216, 4, '2026-07-23 02:04:56', '55049'),
(217, 4, '2026-07-23 02:05:01', '55349'),
(218, 4, '2026-07-23 02:05:07', '93339'),
(219, 4, '2026-07-23 02:05:12', '86766'),
(220, 4, '2026-07-23 02:05:17', '35948'),
(221, 4, '2026-07-23 02:05:22', '50333'),
(222, 4, '2026-07-23 02:05:27', '61930'),
(223, 4, '2026-07-23 02:05:32', '50313'),
(224, 4, '2026-07-23 02:05:37', '96497'),
(225, 4, '2026-07-23 02:05:42', '11269'),
(226, 4, '2026-07-23 02:05:48', '69210'),
(227, 4, '2026-07-23 02:05:53', '32173'),
(228, 4, '2026-07-23 02:05:58', '51900'),
(229, 4, '2026-07-23 02:06:03', '27063'),
(230, 4, '2026-07-23 02:06:08', '88766'),
(231, 4, '2026-07-23 02:06:13', '33206'),
(232, 4, '2026-07-23 02:06:18', '70245'),
(233, 4, '2026-07-23 02:06:24', '90394'),
(234, 4, '2026-07-23 02:06:29', '68528'),
(235, 4, '2026-07-23 02:06:34', '30568'),
(236, 4, '2026-07-23 02:06:39', '14811'),
(237, 4, '2026-07-23 02:06:44', '76177'),
(238, 4, '2026-07-23 02:06:49', '38562'),
(239, 4, '2026-07-23 02:06:55', '55737'),
(240, 4, '2026-07-23 02:07:00', '6689'),
(241, 4, '2026-07-23 02:07:05', '86843'),
(242, 4, '2026-07-23 02:07:05', '32095'),
(243, 4, '2026-07-23 02:07:10', '64833'),
(244, 4, '2026-07-23 02:07:15', '99818'),
(245, 4, '2026-07-23 02:07:20', '1725'),
(246, 4, '2026-07-23 02:07:25', '99253'),
(247, 4, '2026-07-23 02:07:30', '74611'),
(248, 4, '2026-07-23 02:07:36', '11573'),
(249, 4, '2026-07-23 02:07:41', '84206'),
(250, 4, '2026-07-23 02:07:46', '35968'),
(251, 4, '2026-07-23 02:07:51', '66115'),
(252, 4, '2026-07-23 02:07:56', '80276'),
(253, 4, '2026-07-23 02:08:01', '12967'),
(254, 4, '2026-07-23 02:08:06', '37800'),
(255, 4, '2026-07-23 02:08:11', '21476'),
(256, 4, '2026-07-23 02:08:17', '16051'),
(257, 4, '2026-07-23 02:08:22', '80524'),
(258, 4, '2026-07-23 02:08:27', '24020'),
(259, 4, '2026-07-23 02:08:32', '41901'),
(260, 4, '2026-07-23 02:08:37', '87294'),
(261, 4, '2026-07-23 02:08:42', '74480'),
(262, 4, '2026-07-23 02:08:47', '60876'),
(263, 4, '2026-07-23 02:08:52', '80889'),
(264, 4, '2026-07-23 02:08:58', '83262'),
(265, 4, '2026-07-23 02:09:03', '15474'),
(266, 4, '2026-07-23 02:09:08', '35997'),
(267, 4, '2026-07-23 02:09:13', '20443'),
(268, 4, '2026-07-23 02:09:18', '22671'),
(269, 4, '2026-07-23 02:09:23', '48606'),
(270, 4, '2026-07-23 02:09:28', '85994'),
(271, 4, '2026-07-23 02:09:33', '57707'),
(272, 4, '2026-07-23 02:09:39', '73346'),
(273, 4, '2026-07-23 02:09:44', '4053'),
(274, 4, '2026-07-23 02:09:49', '26133'),
(275, 4, '2026-07-23 02:09:54', '83818'),
(276, 4, '2026-07-23 02:09:59', '38402'),
(277, 4, '2026-07-23 02:10:04', '93711'),
(278, 4, '2026-07-23 02:10:09', '52154'),
(279, 4, '2026-07-23 02:10:14', '73721'),
(280, 4, '2026-07-23 02:10:20', '82768'),
(281, 4, '2026-07-23 02:10:25', '51164'),
(282, 4, '2026-07-23 02:10:30', '27732'),
(283, 4, '2026-07-23 02:10:30', '1396'),
(284, 4, '2026-07-23 02:10:35', '76858'),
(285, 4, '2026-07-23 02:10:40', '53795'),
(286, 4, '2026-07-23 02:10:45', '86287'),
(287, 4, '2026-07-23 02:10:50', '7140'),
(288, 4, '2026-07-23 02:10:55', '66032'),
(289, 4, '2026-07-23 02:11:01', '59959'),
(290, 4, '2026-07-23 02:11:06', '45466'),
(291, 4, '2026-07-23 02:11:11', '56706'),
(292, 4, '2026-07-23 02:11:16', '64442'),
(293, 4, '2026-07-23 02:11:21', '98708'),
(294, 4, '2026-07-23 02:11:26', '23361'),
(295, 4, '2026-07-23 02:11:31', '49027'),
(296, 4, '2026-07-23 02:11:37', '35279'),
(297, 4, '2026-07-23 02:11:42', '63724'),
(298, 4, '2026-07-23 02:11:47', '10928'),
(299, 4, '2026-07-23 02:11:52', '93730'),
(300, 4, '2026-07-23 02:11:57', '49544'),
(301, 4, '2026-07-23 02:12:02', '25918'),
(302, 4, '2026-07-23 02:12:07', '4260'),
(303, 4, '2026-07-23 02:12:12', '35989'),
(304, 4, '2026-07-23 02:12:18', '38269'),
(305, 4, '2026-07-23 02:12:23', '29834'),
(306, 4, '2026-07-23 02:12:28', '7012'),
(307, 4, '2026-07-23 02:12:33', '46133'),
(308, 4, '2026-07-23 02:12:38', '5047'),
(309, 4, '2026-07-23 02:12:43', '52926'),
(310, 4, '2026-07-23 02:12:48', '32874'),
(311, 4, '2026-07-23 02:12:53', '85618'),
(312, 4, '2026-07-23 02:12:59', '93567'),
(313, 4, '2026-07-23 02:13:04', '20216'),
(314, 4, '2026-07-23 02:13:09', '87445'),
(315, 4, '2026-07-23 02:13:14', '97482'),
(316, 4, '2026-07-23 02:13:19', '48148'),
(317, 4, '2026-07-23 02:13:24', '96908'),
(318, 4, '2026-07-23 02:13:29', '9584'),
(319, 4, '2026-07-23 02:13:35', '10060'),
(320, 4, '2026-07-23 02:13:40', '75671'),
(321, 4, '2026-07-23 02:13:40', '56722'),
(322, 4, '2026-07-23 02:13:45', '92035'),
(323, 4, '2026-07-23 02:13:50', '34194'),
(324, 4, '2026-07-23 02:13:55', '31790'),
(325, 4, '2026-07-23 02:14:00', '62109'),
(326, 4, '2026-07-23 02:14:06', '71479'),
(327, 4, '2026-07-23 02:14:11', '33516'),
(328, 4, '2026-07-23 02:14:16', '77341'),
(329, 4, '2026-07-23 02:14:21', '47360'),
(330, 4, '2026-07-23 02:14:26', '68998'),
(331, 4, '2026-07-23 02:14:31', '79134'),
(332, 4, '2026-07-23 02:14:36', '33020'),
(333, 4, '2026-07-23 02:14:41', '2333'),
(334, 4, '2026-07-23 02:14:47', '45361'),
(335, 4, '2026-07-23 02:14:52', '85979'),
(336, 4, '2026-07-23 02:14:57', '75817'),
(337, 4, '2026-07-23 02:15:02', '56304'),
(338, 4, '2026-07-23 02:15:07', '5513'),
(339, 4, '2026-07-23 02:15:12', '76752'),
(340, 4, '2026-07-23 02:15:17', '8089'),
(341, 4, '2026-07-23 02:15:22', '32143'),
(342, 4, '2026-07-23 02:15:28', '8196'),
(343, 4, '2026-07-23 02:15:33', '90605'),
(344, 4, '2026-07-23 02:15:38', '95104'),
(345, 4, '2026-07-23 02:15:43', '93423'),
(346, 4, '2026-07-23 02:15:48', '31646'),
(347, 4, '2026-07-23 02:15:53', '25897'),
(348, 4, '2026-07-23 02:15:58', '73247'),
(349, 4, '2026-07-23 02:16:03', '57938'),
(350, 4, '2026-07-23 02:16:09', '7592'),
(351, 4, '2026-07-23 02:16:14', '71934'),
(352, 4, '2026-07-23 02:16:19', '76787'),
(353, 4, '2026-07-23 02:16:24', '85156'),
(354, 4, '2026-07-23 02:16:29', '37251'),
(355, 4, '2026-07-23 02:16:34', '12714'),
(356, 4, '2026-07-23 02:16:39', '56047'),
(357, 4, '2026-07-23 02:16:45', '13967'),
(358, 4, '2026-07-23 02:16:50', '10713'),
(359, 4, '2026-07-23 02:16:50', '80590'),
(360, 4, '2026-07-23 02:16:55', '96584'),
(361, 4, '2026-07-23 02:17:00', '59712'),
(362, 4, '2026-07-23 02:17:05', '61760'),
(363, 4, '2026-07-23 02:17:10', '29431'),
(364, 4, '2026-07-23 02:17:16', '75729'),
(365, 4, '2026-07-23 02:17:21', '86187'),
(366, 4, '2026-07-23 02:17:26', '80686'),
(367, 4, '2026-07-23 02:17:31', '28155'),
(368, 4, '2026-07-23 02:17:36', '28054'),
(369, 4, '2026-07-23 02:17:41', '38811'),
(370, 4, '2026-07-23 02:17:46', '15132'),
(371, 4, '2026-07-23 02:17:52', '51981'),
(372, 4, '2026-07-23 02:17:57', '76814'),
(373, 4, '2026-07-23 02:18:02', '61930'),
(374, 4, '2026-07-23 02:18:07', '90907'),
(375, 4, '2026-07-23 02:18:12', '21193'),
(376, 4, '2026-07-23 02:18:17', '28121'),
(377, 4, '2026-07-23 02:18:22', '52020'),
(378, 4, '2026-07-23 02:18:28', '52224'),
(379, 4, '2026-07-23 02:18:33', '40938'),
(380, 4, '2026-07-23 02:18:38', '6749'),
(381, 4, '2026-07-23 02:18:43', '15488'),
(382, 4, '2026-07-23 02:18:48', '41075'),
(383, 4, '2026-07-23 02:18:53', '54901'),
(384, 4, '2026-07-23 02:18:58', '32001'),
(385, 4, '2026-07-23 02:19:04', '69139'),
(386, 4, '2026-07-23 02:19:09', '16093'),
(387, 4, '2026-07-23 02:19:14', '67855'),
(388, 4, '2026-07-23 02:19:19', '29388'),
(389, 4, '2026-07-23 02:19:24', '85569'),
(390, 4, '2026-07-23 02:19:29', '60060'),
(391, 4, '2026-07-23 02:19:34', '12159'),
(392, 4, '2026-07-23 02:19:40', '91698'),
(393, 4, '2026-07-23 02:19:45', '50094'),
(394, 4, '2026-07-23 02:19:45', '61715'),
(395, 4, '2026-07-23 02:19:50', '1041'),
(396, 4, '2026-07-23 02:19:55', '12751'),
(397, 4, '2026-07-23 02:20:00', '18302'),
(398, 4, '2026-07-23 02:20:05', '8691'),
(399, 4, '2026-07-23 02:20:11', '78330'),
(400, 4, '2026-07-23 02:20:16', '19202'),
(401, 4, '2026-07-23 02:20:21', '48334'),
(402, 4, '2026-07-23 02:20:26', '41044'),
(403, 4, '2026-07-23 02:20:31', '95547'),
(404, 4, '2026-07-23 02:20:36', '5081'),
(405, 4, '2026-07-23 02:20:41', '60162'),
(406, 4, '2026-07-23 02:20:47', '9913'),
(407, 4, '2026-07-23 02:20:52', '42248'),
(408, 4, '2026-07-23 02:20:57', '90641'),
(409, 4, '2026-07-23 02:21:02', '88395'),
(410, 4, '2026-07-23 02:21:07', '18887'),
(411, 4, '2026-07-23 02:21:12', '89302'),
(412, 4, '2026-07-23 02:21:17', '84597'),
(413, 4, '2026-07-23 02:21:23', '27636'),
(414, 4, '2026-07-23 02:21:28', '41919'),
(415, 4, '2026-07-23 02:21:33', '7672'),
(416, 4, '2026-07-23 02:21:38', '3489'),
(417, 4, '2026-07-23 02:21:43', '86829'),
(418, 4, '2026-07-23 02:21:48', '39011'),
(419, 4, '2026-07-23 02:21:53', '24307'),
(420, 4, '2026-07-23 02:21:59', '64689'),
(421, 4, '2026-07-23 02:22:04', '6014'),
(422, 4, '2026-07-23 02:22:09', '57387'),
(423, 4, '2026-07-23 02:22:14', '26176'),
(424, 4, '2026-07-23 02:22:19', '71863'),
(425, 4, '2026-07-23 02:22:24', '66278'),
(426, 4, '2026-07-23 02:22:30', '11533');

-- --------------------------------------------------------

--
-- Table structure for table `ProjectChallenges`
--

CREATE TABLE `ProjectChallenges` (
  `id` int(11) NOT NULL,
  `challenge_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ProjectChallenges`
--

INSERT INTO `ProjectChallenges` (`id`, `challenge_id`, `project_id`) VALUES
(1, 1, 2025),
(40, 2, 2024),
(41, 2, 2025),
(42, 3, 2025),
(43, 4, 2025),
(52, 106, 2026),
(59, 113, 2024),
(64, 114, 20261),
(76, 126, 20265),
(78, 128, 20261),
(97, 134, 20262),
(98, 135, 20262),
(103, 123, 20262),
(104, 125, 20262),
(111, 108, 20263),
(112, 133, 20261),
(121, 118, 2026),
(126, 107, 20263),
(130, 110, 2026),
(131, 131, 2026),
(132, 122, 2026),
(133, 130, 2026),
(134, 109, 2026),
(135, 124, 2026),
(157, 143, 20261),
(197, 149, 20261),
(214, 156, 20263),
(225, 121, 20262),
(226, 151, 20262),
(227, 127, 20262),
(228, 104, 20262),
(229, 150, 20262),
(250, 161, 20263),
(252, 160, 20263),
(254, 147, 20263),
(285, 145, 20263),
(356, 168, 20262),
(357, 164, 20262),
(369, 170, 20262),
(418, 148, 20263),
(425, 114, 2026),
(426, 126, 2026),
(427, 128, 2026),
(429, 134, 2026),
(430, 135, 2026),
(432, 123, 2026),
(433, 125, 2026),
(434, 108, 2026),
(435, 133, 2026),
(440, 107, 2026),
(445, 143, 2026),
(448, 149, 2026),
(450, 156, 2026),
(451, 121, 2026),
(452, 151, 2026),
(453, 127, 2026),
(454, 104, 2026),
(455, 150, 2026),
(463, 161, 2026),
(464, 160, 2026),
(465, 147, 2026),
(471, 145, 2026),
(473, 168, 2026),
(474, 164, 2026),
(475, 170, 2026),
(479, 148, 2026),
(506, 162, 2026),
(507, 146, 2026),
(508, 138, 20261),
(518, 169, 2026),
(522, 103, 20261),
(525, 132, 2026),
(526, 119, 20263),
(527, 129, 2026),
(528, 117, 2026),
(531, 166, 20263),
(532, 142, 2026),
(535, 141, 2026),
(537, 116, 20261),
(540, 152, 20261),
(570, 153, 2026),
(584, 155, 2026),
(589, 120, 2026),
(594, 112, 2026),
(595, 136, 2026),
(597, 102, 2026),
(602, 154, 2026),
(604, 139, 2026),
(607, 115, 2026),
(610, 172, 2026),
(612, 171, 2026),
(613, 174, 2026),
(621, 140, 2026),
(624, 105, 2026),
(628, 173, 2026),
(630, 167, 20261),
(631, 159, 2026),
(632, 137, 20261),
(645, 163, 2026),
(646, 144, 2026),
(647, 111, 2026),
(654, 177, 2026),
(655, 176, 2026),
(658, 157, 2026),
(664, 175, 2026),
(665, 165, 2026),
(667, 178, 2026),
(668, 179, 2026),
(677, 158, 2026);

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `project_id` int(11) NOT NULL,
  `project_name` text NOT NULL,
  `project_title` text NOT NULL,
  `project_description` text NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`project_id`, `project_name`, `project_title`, `project_description`, `enabled`) VALUES
(101, 'Networking and Cyber Systems', 'Networking and Cyber Systems', 'Before you can break a system - or defend one - you need to understand how the digital world actually communicates. Every website visit, encrypted message, and unauthorized intrusion relies on the exact same underlying rules of networking.\r\n\r\nThis tutorial series is designed to take you from core concepts to practical hands-on security skills, skipping the fluff and focusing on real-world execution.\r\n\r\nWhat You\'ll Learn\r\n\r\n- Networking Core: Deconstruct the OSI model, TCP/IP protocol suite, subnetting, and DNS from the ground up.\r\n- Traffic Analysis: Master packet analysis using tools like Wireshark to inspect data in transit.\r\n- Threat & Vulnerability Assessment: Identify common security flaws, network entry points, and system misconfigurations.\r\n\r\nDefensive Practices: Implement firewalls, encryption standards, and secure access controls to protect critical infrastructure.\r\n\r\nWhether you\'re aiming for your first IT certification, stepping into ethical hacking, or building robust security systems, this series gives you the foundational knowledge to move with confidence in the cyber landscape.\r\n\r\nYour time starts now.', 0),
(2024, '2024 - Biolab', 'Biolab Attack!', '1 Beginnings In 1850, a rural town was created, referred to as Latafa. This logging town brought great riches to its controllers before the 1898 Red Tuesday bushfires consumed it. Rebuilt in isolation, it eventually vanished from modern maps—lost to time and history.  2 Currently Oak-Crack is the remains of the town, hidden by a natural forest barrier. The LTC has discovered that the TBW is cultivating a super-virus in a French Bio-Lab known as Lab 404, deep underground.', 0),
(2025, '2025 - Nuclear Disaster', 'Nuclear Disaster', '', 0),
(2026, 'Project 2026 - Cyberpunk', 'A Cyberpunk Future - Corpos VS. Punks', 'Welcome, welcome, welcome!\r\n\r\nYou all reading this are the newest, bright-minded interns ready to work their way up the ladder of the opulent Arakawa Corporation! As you all know, the Arakawa Corporation has been an industry leader in robotics, economics, the new frontier of cybernetic body modification - and we\'re recognised as the pioneers of age verification technology!\r\n\r\nAnd, as you know, the company has made incredible strides in political streamlining! We\'re responsible for a 40% spending decrease across healthcare, civil maintenance and education, giving massive relief to the federal budget! It is for this reason, our advice, that we\'re able to and *excited* to finally move into an official electoral party in the next election! We\'re excited to have you all along for the journey with us! Your superiors have left you several challenges to complete on the devices in front of you. Tackle them as you please, and happy hunting!\r\n\r\nChief Filibustering Officer - Phillip Cormack', 1),
(20261, 'Project 2026 - Cheese Witch', 'Project 2026 - Cheese Witch', 'We are the Cheese-Witch group an organisation created to solve the countries issue of the cheese crisis, where 78% of the stock of cheese has gone missing. Our mission is to track down and hack into the US cheese vault and return the missing cheese to the people. \r\n   ', 0),
(20262, 'Project 2026 - Spice Guys', 'Project 2026 - Spice Guys', 'Yo, I\'ll tell you what I want, what I really, really want.\nSo tell me what you want, what you really, really want\nI\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna really, really, really want the Bland Dudes gone.\n\nIf you wanna join us, make it fast\nIf you wanna join us, you can\'t be last\nNow don\'t go wasting our precious time\nGet your act together, and you\'ll be fine\n\nYo, I\'ll tell you what I want, what I really, really want.\nSo tell me what you want, what you really, really want\nI\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna really, really, really want the Bland Dudes gone\nIf you wanna join us, you\'ll have to convince our friends\nShow us that you mean it. Commitment never ends\nIf you want to be a Spice Guy, you\'re gonna have to help,\nor you will be fired. It\'s just the way it is.\n\nOh, what do you think about that?\nNow you know how I feel\nSay you can handle us, are you for real?\nI won\'t be hasty, you\'ll get a try\nIf you really bug us, then we\'ll say goodbye\n\nYo, I\'ll tell you what I want, what I really, really want.\nSo tell me what you want, what you really, really want\nI\'ll tell you what I want, what I really, really want\nSo tell me what you want, what you really, really want\nI wanna really, really, really want the Bland Dudes gone\n\nIf you wanna join us, you\'ll have to convince our friends\nShow us that you mean it. Commitment never ends\nIf you want to be a Spice Guy, you\'re gonna have to help,\nor you will be fired. It\'s just the way it is.\n\nSo, here\'s a story from C to Z\nYou wanna get with he, you gotta listen carefully\nWe got Jam in the place who really likes his face\nYou got Jay, just see, he\'ll surprise you as he did me\nRhys just be good at what he does, he\'s a real one\nAnd Easy Z, pay the fee.\nWhat about me, Ha, you\'ll see\n\nSlam your body down and wind it all around\nSlam your body down and wind it all around\n\nIf you wanna join us, you\'ll have to convince our friends\nShow us that you mean it. Commitment never ends\nIf you want to be a Spice Guy, you\'re gonna have to help,\nor you will be fired. It\'s just the way it is.\n\nSlam your body down and wind it all around\nSlam your body down and zigazig ah\n\n', 0),
(20263, 'Project 2026 - Monolucido', 'Project 2026 - Monolucido', 'Welcome to Kingdom of Monolucido. \r\nCity Flora was once a perfectly ordered smart city, where every system, from traffic lights to medical records, was controlled by a central digital archive known as \"Paper\". The paper presented structure, clarity, and control. Every piece of data was documented, verified, and traceable.\r\n\r\nHowever, a rogue collective known as \"Ink\" emerged from within the system.\r\n\r\nInk believed that information should be free, hidden, and untraceable. Instead of destroying Paper directly, they began to corrupt and conceal data, embedding hidden messages, manipulating signals, and disrupting communication systems across the city.\r\n\r\nOver time, the traffic system started behaving unpredictably, and secure communications carried invisible payloads. Now, Flora City is in conflict:\r\n- Paper (defenders): trying to restore order and recover corrupted data\r\n- Ink (attacker): hiding flags across systems using obfuscation, stenography, signal manipulation, etc.\r\n\r\nParticipants act as cyber operatives tasked with:\r\n- detecting hidden data/flags\r\n- reconstructing corrupted systems\r\n- intercepting disguised communication\r\n\r\nThe final goal is to uncover the master flag hidden by ink before the city fully collapses.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserChallenges`
--

CREATE TABLE `UserChallenges` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `challengeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UserChallenges`
--

INSERT INTO `UserChallenges` (`id`, `userID`, `challengeID`) VALUES
(266, 31, 3),
(267, 133, 3),
(268, 136, 4),
(269, 141, 4),
(270, 125, 3),
(271, 133, 4),
(272, 141, 3),
(273, 157, 3),
(274, 84, 3),
(275, 84, 4),
(276, 161, 104),
(278, 166, 110),
(279, 161, 120),
(280, 166, 123),
(281, 161, 123),
(282, 176, 121),
(283, 173, 122),
(284, 163, 128),
(285, 169, 118),
(286, 164, 117),
(287, 167, 111),
(288, 6, 124),
(289, 165, 125),
(291, 159, 127),
(292, 174, 129),
(293, 175, 130),
(295, 167, 131),
(296, 163, 132),
(297, 176, 116),
(298, 165, 123),
(299, 164, 107),
(300, 161, 117),
(301, 166, 117),
(302, 167, 124),
(304, 165, 120),
(305, 176, 120),
(306, 167, 120),
(308, 175, 137),
(309, 174, 137),
(310, 167, 139),
(311, 174, 136),
(317, 168, 139),
(318, 161, 157),
(319, 165, 157),
(320, 175, 155),
(321, 163, 159),
(322, 173, 164),
(323, 161, 163),
(324, 166, 144),
(326, 161, 165),
(327, 174, 155),
(329, 159, 158),
(348, 173, 170),
(358, 161, 153),
(360, 161, 159),
(363, 161, 155),
(369, 172, 119),
(370, 165, 144),
(371, 161, 158),
(372, 161, 136),
(373, 164, 159),
(374, 165, 117),
(375, 173, 139),
(376, 164, 139),
(377, 168, 152),
(378, 173, 103),
(379, 166, 152),
(380, 165, 159),
(381, 167, 129),
(382, 173, 155),
(383, 168, 117),
(384, 167, 117),
(385, 168, 102),
(386, 167, 102),
(387, 161, 129),
(388, 167, 152),
(389, 161, 152),
(390, 166, 112),
(391, 173, 158),
(392, 165, 139),
(394, 165, 153),
(395, 173, 157),
(401, 173, 175),
(402, 176, 175),
(403, 167, 174),
(404, 166, 105),
(405, 172, 173),
(406, 167, 173),
(407, 167, 172),
(408, 172, 172),
(409, 167, 171),
(410, 172, 171),
(411, 167, 140),
(412, 172, 140),
(413, 167, 105),
(414, 167, 144);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `HashedPassword` text NOT NULL,
  `AccessLevel` int(11) NOT NULL,
  `Enabled` tinyint(1) NOT NULL,
  `Score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `Username`, `user_email`, `HashedPassword`, `AccessLevel`, `Enabled`, `Score`) VALUES
(159, 'rhys', '0328198@schoolsnet.act.edu.au', '$2y$10$p8OCJxBjhAuvWroRM37GW.t19c2i.sQzMeSzZz3MfPN8LxhsYolrK', 2, 1, 0),
(161, 'BigMan', '0502741@schoolsnet.act.edu.au', '$2y$10$XqHW2.B8YMqYJOMdUd8EaOdrNZsZuSjg4L1FInFO8gyJBuSNbz99.', 2, 1, 0),
(162, 'Voitek', '0363074@schoolsnet.act.edu.au', '$2y$10$yJbi4Txx1yQS4y5GE6n22O/fKRE/cH7QYroYSvW.0WaLAK1O2K6NW', 2, 1, 0),
(163, 'Reign-Dears', 'siennajdears@gmail.com.au', '$2y$10$MH8/SsBnbtU59YluldcM2.2i8EPWJzmoQRFy4hpi.e7KBAODNzamy', 2, 0, 0),
(164, '1020500', '1020500@schoolsnet.act.edu.au', '$2y$10$Qm3gdY7lMun2hT1Exk8TSeFFzXUzqBu8I6bJ.4y/VTg5/kqgZuPZ6', 2, 1, 0),
(165, 'Isaac', '0257743@schoolsnet.act.edu.au', '$2y$10$5yIndwTrdDuDCMV2KT50hO6IivQ8Ynu0NBiGoWooA16s7EeY0shHW', 2, 1, 0),
(166, 'Jamez', '0706720@schoolsnet.act.edu', '$2y$10$bz3uL.MC58bbr01LaCHjVOjs8Ej2GUNx0U5gc7nl0POHwS4gEF9XC', 2, 1, 0),
(167, 'Qianwen', 'qianwen@qianwen.com', '$2y$10$oIcOGvclHiC.40oASKCeI.dmOEmaA4dbJHsbMdF1gYkNwxIbc9eNe', 2, 1, 122),
(168, 'Register', 'Register@Register.com', '$2y$10$UWmMxSFwOHzQyJ6NzhTPku4rwsijYdrlBdMVilo2NgbaIvhzVn/S.', 2, 0, 0),
(169, 'caelenbyrnes', '0628050@schoolsnet.act.edu.au', '$2y$10$khqLCcLoTmyWMMv3QiZ.4OrYUk75vj0fKSNkgmw60c6R56LhxD4Da', 2, 1, 0),
(170, 'Snowy', '0852604@schoolsnet.act.edu.au', '$2y$10$8jtqTMLf.i/C58oy02utDetbJ4xORLWxoAoNYpUep4AFFHWSv9eNm', 2, 0, 0),
(172, 'Dion', '0363074@schoolsnet.act.edu.au', '$2y$10$M6aghVx3Yh4FiTc6qYdbvultXPPTjAPQKVKCWxZKxTaPQ24qsM1ia', 2, 1, 12),
(173, 'ZakS', '0592695@schoolsnet.act.edu.au', '$2y$10$uwM9nunL.GYFk2JCkOutWOJdqWx/Nbqkgm73.J6IaZ6pX0HUz6zhO', 2, 1, 0),
(174, 'Clive', '1020511@schoolsnet.act.edu.au', '$2y$10$yOeIT7p9V0Z8SWo2k.h7N..HUlcIEvmEpJIkGVNQ69IY1udn3X4.e', 2, 1, 0),
(175, 'James', '0852520@schoolsnet.act.edu.au', '$2y$10$n07gztYujgQ9Iu8n6eRsI.awFRa/hLEy9svtsqd4V427Z1p853mvi', 2, 1, 0),
(176, 'John C. Smith', '9949747@schoolsnet.act.edu.au', '$2y$10$xgZtX5S9gXQsNve/g/JKh.Sj2ULvJWYhLknY5Pv5MCqQeSKyBjXH2', 2, 1, 0),
(177, 'Ryan', 'ryan.cather@ed.act.edu.au', '$2y$10$S7b/D8EVzd8j4joq1NwkwOFff7fgAHiqmoD1fj6I/DaVOYqSrZYy6', 2, 1, 0),
(178, 'snowy_fox', '0852604@schoolsnet.act.edu.au', '$2y$10$46Lq3Gm4w4DbsCismXpsnO8yJeeiHGCLsJVMJbn7EDAau7JUqX9Wy', 2, 0, 0),
(179, 'a', 'arasaka@email.com', '$2y$10$tgsEcOY43hdQC50OpzZ56./AEsV8NGBoKw2fhga.3jZv2eDydKqcy', 1, 0, 0),
(180, 'testacc', 'tesct@gmail.com', '$2y$10$6nEDp4ySPoYNZHidFfNqAeExPEbwZ5RpS1Y55XsChjBn1kdGNO6/C', 1, 0, 0),
(181, 'EthanH', '1020511@schoolsnet.act.edu.au', '$2y$10$jZqnatczy2oRGdV6Fu7eoO6ci2I0OMbW5Ys2TcWnbiUmDYgkgipcm', 1, 0, 0),
(182, '0592777', '0592777@schoolsnet.act.edu.au', '$2y$10$fcIxwnjo5kVwXM3R6Zo8TOC/G2LfWvZ9v1dA6gVOGx6ICXqT2s5r.', 1, 0, 0),
(183, 'Jack Kley', '0617887@schoolsnet.act.edu.au', '$2y$10$HLxvE32tXIf2w6C1hxHD/ud/dMhlazesF1Dlu.Yewr0WUskFpm.zu', 1, 0, 0),
(184, 'Lachlan C', '0717965@schoolsnet.act.edu.au', '$2y$10$QULOWSIuV8C/f0GoObl39eFudvkM4gtpUYzKxfp5t8vAnoerzBRbe', 1, 0, 0),
(185, 'Musa', '9965106@schoolsnet.act.edu.au', '$2y$10$Iglo.GNHn0TNsYAeVRkfqe62KACqHLZZoCkw8k71XE1VmgB0tQKP.', 1, 0, 0),
(186, 'Oscar B', '0592768@schoolsnet.act.edu.au', '$2y$10$UoPMl440yjrBXzxlz2QqROdnu1nke9P.j310s5EYwmpV0ZGNpgVGq', 1, 0, 0),
(187, 'michael', '0477055@schoolsnet.act.edu.au', '$2y$10$5hTVSYqdXsdI8TxW/QSwoeg7I5mSkEOLpRUEMRArdOpNNDXUJoPIy', 1, 0, 0),
(188, 'Zac', '0706730@schoolsnet.act.edu', '$2y$10$.tyV8ghX8DPvprak5aMExOXup0rtoMHOS13gEtGor7eC12X6JxnXm', 1, 0, 0),
(189, '0717949', '0717949@schoolsnet.act.edu.au', '$2y$10$Tyt4S2C4YX92ljtGkL/WYeKnmaesSFOtXFlQZ71CAHtjXp6yot3ji', 1, 0, 0),
(190, 'Apaardeep', '0638579@schoolsnet.act.edu.au', '$2y$10$CFbtMlAX8uy3sG8L1zSIMOPI0qoiVPtV9s141TDAp6eABvrPnfGuS', 1, 0, 0),
(191, 'mammothsqaush', 'noahgabrielstoddart@gmail.com', '$2y$10$xq3/Z//n/2PoKhCT8xrTXukUogWEAcr3jCAiSSmnpYz3LtBlYmnLS', 1, 0, 0),
(192, 'Lanyon', 'LanyonHighSchool@mail.com', '$2y$10$USUnqxD59r74mJux8m2hN.bVsq844BRZ6ps5mm7gk.1P2D39o7r3y', 1, 1, 0),
(193, 'Calwell', 'CalwellHighSchool@mail.com', '$2y$10$rABA6enUq1J1TczEYOW3v.xLBHspqV7FgvdKOhOqM2HPRojdrGJjy', 1, 1, 0),
(194, 'Chisholm', 'CarolineChisholmSchool@mail.com', '$2y$10$3cNl57rRnc6TByIawn00huPKicGqoIlZoPlbG1HMRj5DzBe7Jy39.', 1, 1, 0),
(195, 'Wanniassa', 'WanniassaSchool@mail.com', '$2y$10$bIkrUFDZTo8vmIIZG2vBv.ls2m4YOK3i1D/3vwRnCdcj08HoF8bHO', 1, 1, 0),
(196, 'Namadgi', 'NamadgiSchool@mail.com', '$2y$10$3u2/i6Av8H8j5KROHKIc3.XgDP.OD20kmM9nJs1w9V9Vk5cMzWykS', 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Challenges`
--
ALTER TABLE `Challenges`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `xChallenges_Category_id_fk` (`categoryID`);

--
-- Indexes for table `ContactUs`
--
ALTER TABLE `ContactUs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `DockerContainers`
--
ALTER TABLE `DockerContainers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eventLog`
--
ALTER TABLE `eventLog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Learn`
--
ALTER TABLE `Learn`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ModuleData`
--
ALTER TABLE `ModuleData`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ModuleData_RegisteredModules_ID_fk` (`ModuleID`);

--
-- Indexes for table `ProjectChallenges`
--
ALTER TABLE `ProjectChallenges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `UserChallenges`
--
ALTER TABLE `UserChallenges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserChallenges_Challenges_ID_fk` (`challengeID`),
  ADD KEY `UserChallenges_Users_ID_fk` (`userID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Challenges`
--
ALTER TABLE `Challenges`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `ContactUs`
--
ALTER TABLE `ContactUs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `DockerContainers`
--
ALTER TABLE `DockerContainers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `eventLog`
--
ALTER TABLE `eventLog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `Learn`
--
ALTER TABLE `Learn`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ModuleData`
--
ALTER TABLE `ModuleData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `ProjectChallenges`
--
ALTER TABLE `ProjectChallenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `UserChallenges`
--
ALTER TABLE `UserChallenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Challenges`
--
ALTER TABLE `Challenges`
  ADD CONSTRAINT `xChallenges_Category_id_fk` FOREIGN KEY (`categoryID`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
