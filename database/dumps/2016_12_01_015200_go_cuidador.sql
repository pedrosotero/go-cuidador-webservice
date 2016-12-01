-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2016 at 03:49 AM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_cuidador`
--

-- --------------------------------------------------------

--
-- Table structure for table `caregivers`
--

CREATE TABLE `caregivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `neighborhood` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `phone` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caregivers`
--

INSERT INTO `caregivers` (`id`, `user_id`, `first_name`, `last_name`, `cpf`, `uf`, `city`, `neighborhood`, `address`, `zipcode`, `paid`, `phone`, `avatar`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'Pedro', 'Sotero', '31325333190', 'RJ', 'Rio de Janeiro', 'Pavuna', 'Travessa Altair', '21520031', 1, '21993242345', 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAeZAAAAJGNhZjBmYzU5LTE5ZjItNGI5My1hZWNmLWE2YzA0N2M3N2MyMQ.jpg', '•	Ajudar, estimular e realizar, caso seja indispensável, as atividades de vida diária, ou seja, a higiene pessoal e bucal, alimentação e locomoção;\n•	Cuidar do vestuário (organizar a roupa que vai ser usada, dando sempre a pessoa idosa o direito de escolha), manter o armário e os objetos de uso arrumados e nos locais habituais; e cuidar da aparência da pessoa idosa (cuidar das unhas, cabelos) de modo a aumentar a sua auto-estima;\n•	Facilitar e estimular a comunicação com a pessoa idosa, conversando e ouvindo-a; acompanhando-a em seus passeios e incentivando-a a realizar exercícios físicos, sempre que autorizados pelos profissionais de saude, e a participar de atividades de lazer. Desta forma, ajudará na sua inclusão social e a melhorar sua saúde.\n•	Acompanhar a pessoa idosa aos exames, consultas e tratamentos de saude, e transmitir aos profissionais de saude as mudanças no comportamento, humor ou aparecimento de alterações fí¬sicas (temperatura,pressão, sono, etc.)\n•	Cuidar da medicação oral da pessoa idosa, em dose e horário prescritos pelo médico. Em caso de injeções, mesmo com receita médica, possuo treinamento técnico para esse fim.\n•	Estimular a auto-suficiência da pessoa idosa, por isto, o cuidador deverá, sempre que possível, fazer com ela e para ela.\n•	Procura proporcionar conforto e tranquilizar a pessoa idosa em situações de crise (por exemplo, quando fica agitado ou ansioso).\n•	Ajuda na comunicação com os outros, quando existem dificuldades para expressar-se.\n•	Desenvolver atividades de estimulo motor e cognitivo de acordo com orientações\nDados pessoais', NULL, NULL, NULL),
(3, 2, 'Paula', 'Lotti', '03277463273', 'RJ', 'Rio de Janeiro', 'Marechal Hermes', 'Rua boqueirao', '21555380', 1, '2199555380', 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAlbAAAAJDliZjg4NWVkLTlkZGMtNGUwMy1iZGFiLWRkNjNlZThkYTNiMw.jpg', NULL, NULL, NULL, NULL),
(4, 3, 'Ueslei', 'Japeri', '66953859121', 'RJ', 'Rio de Janeiro', 'Guaratiba', 'Rua Agostinho de Castro', '2303000', 1, '999280296', 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/033/3c5/004cd4b.jpg', NULL, NULL, NULL, NULL),
(5, 4, 'Glauce', 'Maria', '72659105129', 'RJ', 'Rio de Janeiro', 'Campo Grande', 'Rua Santa Angélica', '23078160', 1, '219901293045', NULL, NULL, NULL, NULL, NULL),
(6, 5, 'Carlos', 'Alberto', '68066432216', 'RJ', 'Rio de Janeiro', 'Padre Minguel', 'Rua Adonai', '21725276', 1, '21992738495', NULL, NULL, NULL, NULL, NULL),
(7, 6, 'glauce', 'maria', '61342541421', 'RJ', 'Rio de Janeiro', 'Campo Grande', 'Rua Oito', '23092702', 1, '21997263749', NULL, NULL, NULL, NULL, NULL),
(8, 7, 'Leandro', 'Carvalho', '16721757559', 'RJ', 'Rio de Janeiro', 'Bangu', 'Rua Formosa do Rio Preto', '21842065', 1, '21983460434', NULL, NULL, NULL, NULL, NULL),
(9, 8, 'Juliana', 'Arruda', '85987444500', 'RJ', 'Rio de Janeiro', 'Santa Cruz', 'Rua Alberto Conde Peres', '23065675', 1, '219934503404', NULL, NULL, NULL, NULL, NULL),
(10, 9, 'Leonardo', 'Sillas', '68284653265', 'RJ', 'Rio de Janeiro', 'Vigario Geral', 'Rua Vila Nova', '21011763', 1, '21908738894', NULL, NULL, NULL, NULL, NULL),
(11, 10, 'Nathalia', 'Bezerra', '73196882128', 'RJ', 'Rio de Janeiro', 'Inhoaiba', 'Rua Cinquenta e Nove', '23057086', 1, '21990433947', NULL, NULL, NULL, NULL, NULL),
(12, 11, 'Maria', 'Joana', '97532888320', 'RJ', 'Rio de Janeiro', 'Jacarepagua', 'Rua Boa Esperança', '22713551', 1, '21987653034', NULL, NULL, NULL, NULL, NULL),
(13, 12, 'Fernanda', 'Lima', '72659105129', 'RJ', 'Rio de Janeiro', 'Cural Falso', 'Beco Canaã', '23591130', 1, '21980560494', NULL, NULL, NULL, NULL, NULL),
(14, 13, 'Rodrigo', 'Emmanuel', '80885554264', 'RJ', 'Rio de Janeiro', 'Guaratiba', 'Rua Doutor Cotrim', '23030190', 1, '21970605043', NULL, NULL, NULL, NULL, NULL),
(15, 14, 'Leandro', 'Marques', '96770241676', 'RJ', 'Rio de Janeiro', 'Realengo', 'Rua Claudino Barata', '21770200', 1, '21996040303', NULL, NULL, NULL, NULL, NULL),
(16, 15, 'Bruno', 'Custodio', '36332538740', 'RJ', 'Rio de Janeiro', 'Marechal Hermes', 'Rua Maracaipe', '21557040', 1, '21992930402', NULL, NULL, NULL, NULL, NULL),
(17, 16, 'Maycol', 'Vidal', '68475150829', 'RJ', 'Rio de Janeiro', 'Ramos', 'Rua Ari Leão', '21040005', 1, '21994050643', NULL, NULL, NULL, NULL, NULL),
(18, 17, 'Solange', 'Almeida', '25394914303', 'RJ', 'Rio de Janeiro', 'Estacio', 'Rua Ademar Barcelos', '20211018', 1, '21995635764', NULL, NULL, NULL, NULL, NULL),
(19, 18, 'Carla', 'Coelho', '11115954296', 'RJ', 'Rio de Janeiro', 'Sepetiba', 'Estrada da Estiva', '23530075', 1, '21992930405', NULL, NULL, NULL, NULL, NULL),
(20, 19, 'Amanda', 'Avila', '55875026197', 'RJ', 'Nova Iguaçu', 'Lagoinha', 'Rua Mercúrio', '26296540', 1, '21993940503', NULL, NULL, NULL, NULL, NULL),
(21, 20, 'Thatiana', 'Pessoa', '27022380848', 'RJ', 'Nova Iguaçu', 'Centro', 'Rua Capitão Chaves', '26221010', 1, '21999304950', NULL, NULL, NULL, NULL, NULL),
(22, 30, 'Marcelo', 'Henrique', '11642468797', 'RJ', 'Nova Iguaçu', 'Jardim Iguaçu', 'Rua Oito de Novembro', '26281333', 1, '21999304850', NULL, NULL, NULL, NULL, NULL),
(23, 21, 'Luciana', 'Mesquita', '43733078659', 'RJ', 'Nova Iguaçu', 'Santa Rita', 'Rua Camapuã', '26050300', 1, '21988394022', NULL, NULL, NULL, NULL, NULL),
(24, 22, 'Carol', 'Pinto', '59160826142', 'RJ', 'Niteroi', 'Engenho do Mato', 'Rua Cinco', '24344106', 1, '219893048503', NULL, NULL, NULL, NULL, NULL),
(25, 23, 'Maria', 'Eduarda', '74116857122', 'RJ', 'Niteroi', 'Piratininga', 'Rua Doutor Moacyr Gomes de Azevedo', '24358290', 1, '21989304858', NULL, NULL, NULL, NULL, NULL),
(26, 24, 'Ludimila', 'Rosa', '82460278322', 'RJ', 'Niteroi', 'Fonseca', 'Alameda São Boaventura', '24120192', 1, '219823949503', NULL, NULL, NULL, NULL, NULL),
(27, 26, 'Manoela', 'Rego', '82634563124', 'RJ', 'Niteroi', 'Marazul', 'Rua dos Pampos', '24358470', 1, '219883940203', NULL, NULL, NULL, NULL, NULL),
(28, 27, 'Jaqueline', 'Neto', '67610493341', 'RJ', 'Niteroi', 'Centro', 'Avenida Visconde do Rio Branco', '24020002', 1, '219829304053', NULL, NULL, NULL, NULL, NULL),
(29, 28, 'Joelma', 'Leite', '12764650507', 'RJ', 'Niteroi', 'Itaipui', 'Travessa B', '24346055', 1, '219823934563', NULL, NULL, NULL, NULL, NULL),
(30, 29, 'Dirce', 'Katia', '16116755534', 'RJ', 'Niteroi', 'Engenhoca', 'Travessa Luiz Carlos Esteves', '24110146', 1, '21983457694', NULL, NULL, NULL, NULL, NULL),
(31, 25, 'Rafaela', 'Medeiros', '14673833503', 'RJ', 'Niteroi', 'São Francisco', 'Rua Dr Diógenes Travessa', '24360090', 1, '21982394947', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caregiver_types`
--

CREATE TABLE `caregiver_types` (
  `id` int(11) NOT NULL,
  `caregiver_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caregiver_types`
--

INSERT INTO `caregiver_types` (`id`, `caregiver_id`, `type_id`, `doc`) VALUES
(1, 2, 1, 'http://www.pdf995.com/samples/pdf.pdf'),
(2, 2, 3, 'http://www.pdf995.com/samples/pdf.pdf'),
(3, 2, 4, 'http://www.pdf995.com/samples/pdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 35, 'go', 'cuidador', '2016-11-30 16:31:16', '2016-11-30 16:31:16', NULL),
(2, 36, 'teste', 'subteste', '2016-11-30 22:36:11', '2016-11-30 22:36:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `caregiver_id` int(10) UNSIGNED NOT NULL,
  `rate` int(1) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `client_id`, `caregiver_id`, `rate`, `description`) VALUES
(1, 1, 2, 4, 'teste'),
(2, 1, 3, 4, ''),
(3, 1, 4, 5, 'teste'),
(4, 1, 5, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`) VALUES
(1, 'Idosos'),
(3, 'Portadores de necessidades especiais'),
(4, 'Babá');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numbers` tinyint(4) DEFAULT '0',
  `token` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `numbers`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'thiagomeritello@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(2, 'thiagomeritello#2@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(3, 'thiagomeritello#3@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(4, 'thiagomeritello#4@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(5, 'thiagomeritello#5@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(6, 'thiagomeritello#6@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(7, 'thiagomeritello#7@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(8, 'thiagomeritello#8@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(9, 'thiagomeritello#9@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(10, 'thiagomeritello#10@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(11, 'thiagomeritello#11@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(12, 'thiagomeritello#12@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(13, 'thiagomeritello#13@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(14, 'thiagomeritello#14@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(15, 'thiagomeritello#15@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(16, 'thiagomeritello#16@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(17, 'thiagomeritello#17@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(18, 'thiagomeritello#18@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(19, 'thiagomeritello#19@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(20, 'thiagomeritello#20@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(21, 'thiagomeritello#21@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(22, 'thiagomeritello#22@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(23, 'thiagomeritello#23@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(24, 'thiagomeritello#24@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(25, 'thiagomeritello#25@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(26, 'thiagomeritello#26@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(27, 'thiagomeritello#27@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(28, 'thiagomeritello#28@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(29, 'thiagomeritello#29@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(30, 'thiagomeritello#30@hotmail.com', 'teste2016', 1, NULL, NULL, NULL, NULL),
(35, 'gocuidador@email.com.br', '$2y$10$SxF7GR2zvt1/Zs6zxH3ivOOJx/1KJAj4HFXHOrS4KA3IQWnv99Ily', 2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ImROR3FaOTEwYjNBTVBSSG5EbjRRR0prWG4yT2FxMEU1IiwidXNlcm5hbWUiOiJnb2N1aWRhZG9yQGVtYWlsLmNvbS5iciIsImlzcyI6Imh0dHA6XC9cLzllMDc3ZDNmLm5ncm9rLmlvXC9hcGlcL2F1dGgiLCJpYXQiOjE0ODA1NjM0NzEsImV4cCI6MTQ4MDU2NzA3MSwibmJmIjoxNDgwNTYzNDcxLCJqdGkiOiI4Y2JhNDhiOWFkZjczMDZmNzg0ZDNhOTVmZDVjNTA2ZCJ9.6NrDBVPQq0h5_0v3etq2EsSLqWskygKd8NPnPAujIRM', '2016-11-30 16:31:16', '2016-12-01 05:37:51', NULL),
(36, 'teste@email.com.br', '$2y$10$P6qsL9nJXCuHM.IHYpbPqu.KQ6nObqU94AtJ5wfLPghGue6witvai', 2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ImROR3FaOTEwYjNBTVBSSG5EbjRRR0prWG4yT2FxMEU1IiwidXNlcm5hbWUiOiJ0ZXN0ZUBlbWFpbC5jb20uYnIiLCJpc3MiOiJodHRwOlwvXC85ZTA3N2QzZi5uZ3Jvay5pb1wvYXBpXC9hdXRoIiwiaWF0IjoxNDgwNTU2NTA3LCJleHAiOjE0ODA1NjAxMDcsIm5iZiI6MTQ4MDU1NjUwNywianRpIjoiMDI5MWY3NjY5YjA3MDUyN2ZhNTVjM2FlMDU4N2M4YjYifQ.bzjh4g8Hki_kCuVB-GUu9m21XHBbv7n2GMRLMPDqSR8', '2016-11-30 22:36:10', '2016-12-01 03:41:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caregivers`
--
ALTER TABLE `caregivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caregivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `caregiver_types`
--
ALTER TABLE `caregiver_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caregivers_id_foreign` (`caregiver_id`),
  ADD KEY `types_caregivers_id_foreign` (`type_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caregivers_id_foreign` (`caregiver_id`),
  ADD KEY `clients_id_foreign` (`client_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caregivers`
--
ALTER TABLE `caregivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `caregiver_types`
--
ALTER TABLE `caregiver_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `caregivers`
--
ALTER TABLE `caregivers`
  ADD CONSTRAINT `caregivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `caregiver_types`
--
ALTER TABLE `caregiver_types`
  ADD CONSTRAINT `caregivers_id_foreign` FOREIGN KEY (`caregiver_id`) REFERENCES `caregivers` (`id`),
  ADD CONSTRAINT `types_caregives_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `caregivers_id_foreign_rates` FOREIGN KEY (`caregiver_id`) REFERENCES `caregivers` (`id`),
  ADD CONSTRAINT `clients_id_foreign_rates` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
