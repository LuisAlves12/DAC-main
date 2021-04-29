-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Abr-2021 às 19:11
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dac`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `frames`
--

CREATE TABLE `frames` (
  `id` int(255) NOT NULL,
  `img_frame` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `frames`
--

INSERT INTO `frames` (`id`, `img_frame`, `nome`) VALUES
(1, '1619078849_Dragon Lore.png', 'Dragon Lore'),
(2, '1619078858_Fire.png', 'Fire'),
(3, '1619078944_Zup! Fireball.png', 'Zup! Fireball'),
(4, '1619711129_perseguição.png', 'perseguição');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id` int(11) NOT NULL,
  `musica` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hiddankill@gmail.com', '$2y$10$3em1Gnsx/YlswR08urrLs.ZLtJA.2MILP/g1v9UJot35jFVXpv7mS', '2021-03-28 14:40:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `textos`
--

CREATE TABLE `textos` (
  `id_user` int(10) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `id_texto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `musica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1617612267_logo.jpg',
  `tipo_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'membro',
  `id_frame` int(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `musica`, `texto`, `status`, `bio`, `img_perfil`, `tipo_user`, `id_frame`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LethalArms', 'hiddankill@gmail.com', 'Teste Musica2', 'Teste Texto2', 'Teste Status2', 'Teste Bio2', '1616965888_transferir.png', 'admin', 3, NULL, '$2y$10$l03QmGFhuu8EyH84Og83bujfGwaUizoH.76fbrgUSZydSQaVyhtcK', 'eQYssR4yQl6OmC12VHbGMBtyN3P0ytoAqMrL7rIDWC8UFA0aLhAXMgTOqKEH', '2021-03-26 23:16:51', '2021-04-22 07:09:58'),
(3, 'nel', 'joana@aedah.pt', 'mala', NULL, NULL, 'tolo', 'default.jpg', 'membro', NULL, NULL, '$2y$10$znXVpdAFeOwcNo9qOkHQ7.NoegPNVPeKJXoj/.07po/1DW.jULuH2', NULL, '2021-03-29 12:46:10', '2021-03-29 12:46:52'),
(4, 'Luis Alves', 'a15016@aedah.pt', NULL, NULL, NULL, NULL, 'default.jpg', 'admin', NULL, NULL, '$2y$10$u5k1e2pCsvdtA2w28ctG9uDNp6IT9toA6Bg3DVGXLvJYWo4UcF6Vy', NULL, '2021-04-29 13:54:00', '2021-04-29 13:54:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `frames`
--
ALTER TABLE `frames`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `frames`
--
ALTER TABLE `frames`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
