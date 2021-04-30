-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Abr-2021 às 17:37
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
(4, '1619711129_perseguição.png', 'perseguição'),
(5, '1619796906_darkege rgb.png', 'Darkege RGB'),
(6, '1619796930_ghost sparkle frame.png', 'Ghost Sparkle Frame'),
(7, '1619796948_glicth.png', 'Glicth'),
(8, '1619796964_ionized.png', 'Ionized'),
(9, '1619796984_orange god rays.png', 'Orange God Rays'),
(10, '1619797001_vampirism.png', 'Vampirism'),
(11, '1619797018_zup! fire.png', 'Zup! Fire');

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
  `id_musica` int(11) NOT NULL,
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
  `img_perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
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
(1, 'LethalArms', 'hiddankill@gmail.com', NULL, 'Teste Texto2', 'Teste Status2', 'Teste Bio2', '1619774073_Logo-AEDAH.jpg', 'admin', 3, NULL, '$2y$10$l03QmGFhuu8EyH84Og83bujfGwaUizoH.76fbrgUSZydSQaVyhtcK', 'TkaqLhiFKPC4eOYwvk21YHWNK52j8szWN3PqsJkgQRRFNs9evTdsmbU8BTGa', '2021-03-26 23:16:51', '2021-04-30 08:14:34'),
(5, 'André Neto', 'a15005@aedah.pt', '1619795562_Josh Groban - You Raise Me Up (Official Music Video).mp3', '\"O Homem é do tamanho do seu sonho / Tudo o que chega, chega sempre por alguma razão\" - Fernando Pessoa', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$EqTK/oMQbmUwUHtu6Ogma.EtM2UfJpWrqdcdJ3gUQseXqJeNIbbv.', NULL, '2021-04-30 12:35:19', '2021-04-30 14:12:43'),
(6, 'César Neto', 'a16611@aedah.pt', '1619795630_Yves LaRock - Rise Up.mp3', '\"Aprende com o que vives,nunca vivas com o que aprendes\" - Dillaz', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 3, NULL, '$2y$10$1vIaBvox4A.wJ774K49OAO/t01pgAsZQNoVXHNRa9VlAtPTZMM7zu', NULL, '2021-04-30 12:36:13', '2021-04-30 14:13:50'),
(7, 'Daniel Correia', 'a15033@aedah.pt', '1619795672_Lost Frequencies feat. Janieck Devy - Reality (Official Music Video).mp3', '\"Aquele que não tem coragem de assumir riscos não alcançará nada na vida.\" - Muhammad Ali', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$3holythFiT4KVfKbvmQCPOlGxYLSMZiBRac5CWkl5mRZK9WZlZASe', NULL, '2021-04-30 12:37:24', '2021-04-30 14:14:32'),
(8, 'Diogo Martins', 'a16629@aedah.pt', '1619795732_Swedish House Mafia - Dont You Worry Child ft. John Martin.mp3', '\"A ironia é a expressão mais perfeita do pensamento.\" - Florbela Espanca', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 1, NULL, '$2y$10$D4Npwp5BWcusjbGSoTLvQ.RTkMVX.00cD9GSpUf3Vv4uR6qqchBCK', NULL, '2021-04-30 12:39:42', '2021-04-30 14:15:32'),
(9, 'Diogo Oliveira', 'a14883@aedah.pt', '1619795778_Jonas Blue - Fast Car ft. Dakota.mp3', '\"Metas são como flechas quanto mais alto miras, mais longe irás alcançar os teus objetivos.\" - Fernando  ngelo', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$q4a6G3JzuqShg/FOlccArO9U.0U.HLrGmmcAbGpQUu47thLtm6XUC', NULL, '2021-04-30 12:40:27', '2021-04-30 14:16:18'),
(10, 'Diogo Pereira', 'a16654@aedah.pt', '1619795816_Fernando Daniel - Voltas.mp3', '\"O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis.\" - José de Alencar', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$C2m0ZtbAzY/Un/cs5nxqkuLIItB7nmNZGSepzFIlckPdbK4MRC4gC', NULL, '2021-04-30 12:41:35', '2021-04-30 14:16:56'),
(11, 'Filipe Figueiredo', 'a13914@aedah.pt', '1619795882_Lindecis - Soulful.mp3', '\"Falei de tudo quanto amei. /\r\n		De coisas que te dou /\r\n		para que tu as ames comigo: /\r\n		a juventude, o vento e as areias.\" - Eugénio de Andrade', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 3, NULL, '$2y$10$9gaF3OQMHj4BcKsb.Q8uN.nr9k.tnOVP8oa0ju/bF6yl27.K9Dx.m', NULL, '2021-04-30 12:42:25', '2021-04-30 14:18:02'),
(12, 'Fábio Pereira', 'a16616@aedah.pt', '1619795927_Morad-30 llamadas con Lebara.mp3', '\"Simpatia para ganhar dinheiro: acorde cedo, tome banho e vá trabalhar.\" - Guilherme Fernandes', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$1MXuGVMB3iAwR5c.nCZIIux65nfwY5.WptAxKeP7RmMwUaeWTCXlq', NULL, '2021-04-30 12:43:11', '2021-04-30 14:18:47'),
(13, 'Helder Costa', 'a16606@aedah.pt', '1619795979_Logic - Confessions of a Dangerous Mind.mp3', '\"A gente tem que sonhar, senão as coisas não acontecem\" - Oscar Niemeyer', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$fP9wzyhQJYUm359Rr3msaev15a4kKg29HEHBvljmWJigcIEQo8Av6', NULL, '2021-04-30 12:45:12', '2021-04-30 14:19:39'),
(14, 'Henrique Caridade', 'a14202@aedah.pt', '1619796031_Fernando Daniel - Espera.mp3', '\"A força não provem da capacidade física. Provém de uma vontade indomável.\" -Mahatma Gandhi', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$eOJE8jXr.nXJ4dkNh.5mlumaAUUfJLy2RzHxqqGBW9eogM.2QWYmW', NULL, '2021-04-30 12:45:55', '2021-04-30 14:20:32'),
(15, 'João Torres', 'a14121@aedah.pt', '1619796088_Martin Garrix feat. Bonn - High On Life (Official Video).mp3', '\"Tudo é considerado impossivel até acontecer.\" - Nelson Mandela', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 1, NULL, '$2y$10$zeJl9f/nt/faXR/m46iumO6JgqOaFxw1t2bRPyb2Ieglx7KIEhQ8S', NULL, '2021-04-30 12:47:32', '2021-04-30 14:21:28'),
(16, 'Jorge Gonçalves', 'a16610@aedah.pt', '1619796127_Coldplay - Viva La Vida.mp3', '\"Cada sonho que deixas para trás, é um pedaço do teu futuro que deixa de existir.\" - Steve Jobs', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$lksg1f1odWfdqmQU9i2czeZar5elLd9Ag4bVTajNuZFJZXrXj62C.', NULL, '2021-04-30 12:48:03', '2021-04-30 14:22:08'),
(17, 'José Sousa', 'a14184@aedah.pt', '1619796169_The Score - Stronger.mp3', '\"Quando tudo parecer estar contra ti, lembre-se que o avião descola contra o vento, não com a ajuda dele.\" -henry ford', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$bYRiuECwnOOo7cRQUa/7Re5QvIVUPn6Yknd6dz0k5iFzYGLz6sq1u', NULL, '2021-04-30 12:48:39', '2021-04-30 14:22:49'),
(18, 'Luis Alves', 'a15016@aedah.pt', '1619796206_Murta - Porquê.mp3', '\"É fácil trocar as palavras,/ Difícil é interpretar os silêncios!/ É fácil caminhar lado a lado,/ Difícil é saber como se encontrar!/ É fácil beijar o rosto,/ Difícil é chegar ao coração!\" - Fernando Pessoa', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'admin', 11, NULL, '$2y$10$ZCg551vPkKKTndOgATenUOK3PY6lXinvm.AwOC99fugA7luZIvdSy', NULL, '2021-04-30 12:49:03', '2021-04-30 14:37:25'),
(19, 'Luís Cunha', 'a14181@aedah.pt', '1619796253_Lil Peep - crybaby (Official Video).mp3', '\"Não sei quantas almas tenho\" - Fernando Pessoa', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$12WSSMMAnFmunu6e9bu0XOhpbhBOBm2aVcL2uahoSMVBcxtNI5JMa', NULL, '2021-04-30 12:49:50', '2021-04-30 14:24:13'),
(20, 'Marcelo Nogueira', 'a14122@aedah.pt', NULL, '\"Não deixe o ruído das opiniões dos outros abafar a sua própria voz interior.\" - Steve Jobs', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'admin', 3, NULL, '$2y$10$bpHcxZlkjc..tmdBzQMT/OniekQbbFJzaECon6DseCCi41GCYHGxK', NULL, '2021-04-30 12:50:48', '2021-04-30 13:24:45'),
(21, 'Noel Penela', 'a16598@aedah.pt', '1619796296_Matuê - Máquina do Tempo.mp3', '\"Cada um cumpre o destino que lhe cumpre\" - Ricardo Reis', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$Z4qjv.RJbjYzJ7y1aJL/q.4MbLFXozEhwyBLzlnd88vcn/gwMVnGa', NULL, '2021-04-30 12:52:06', '2021-04-30 14:24:56'),
(22, 'Rafael Sousa', 'a15027@aedah.pt', '1619796338_DIllaz - Protagonista.mp3', '\"Nem tudo é dias de sol, e a chuva, quando falta muito, pede-se\" - Fernando Pessoa', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 3, NULL, '$2y$10$RGfTbEKnTgP8zvlD.YlA0uRV1UWjU5ccQ/N8mGS6ktIME6wiYzoda', NULL, '2021-04-30 12:52:53', '2021-04-30 14:25:38'),
(23, 'Ricardo Granja', 'a16594@aedah.pt', '1619796375_BISPO - Aviola II (Acústico).mp3', NULL, 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$I/RA9jmblnVmMc2P61zNGexZ2p6crA0i/vwu7veZxpqEBYEPXmc5C', NULL, '2021-04-30 12:53:50', '2021-04-30 14:26:15'),
(24, 'Rúben Castro', 'a16609@aedah.pt', '1619796442_Eminem - Not Afraid.mp3', '\"É melhor conquistar a si mesmo do que vencer mil batalhas.\" - Buda', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 4, NULL, '$2y$10$aGDQn/kDt7ZiHOn2gdFaAe9hDesczOF5SNJCElA9XpIPv3KDJ50WG', NULL, '2021-04-30 12:56:10', '2021-04-30 14:27:22'),
(25, 'Rúben Monteiro', 'a14019@aedah.pt', '1619796479_Travie McCoy Billionaire ft. Bruno Mars [OFFICIAL VIDEO].mp3', '\"Enquanto a cor da pele for mais importante que o brilho dos olhos, haverá sempre guerra\" - Bob Marley', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 1, NULL, '$2y$10$3tHCEHfpewbTcQvRIiWU9.uon/x4EhgCqtRsshqMUdAHiXTQsjRrS', NULL, '2021-04-30 12:57:04', '2021-04-30 14:27:59'),
(26, 'Rui Nunes', 'a14111@aedah.pt', '1619796519_Kawe - Gigante ( Prod. Cita  Jay ).mp3', '\"A persistência é o caminho para o sucesso\" - Charles Chaplin', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$LICSNunklZRaFVCz0ErHFu60RTpQKgy34hgpGQPcpFYq9fFLCI3FG', NULL, '2021-04-30 12:57:41', '2021-04-30 14:28:39'),
(27, 'Tiago Costa', 'a16605@aedah.pt', '1619796562_The Weeknd - Blinding Lights (Audio).mp3', '\"Que o vento levo o necessário e me traga o suficiente\" - Ester Correia', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 3, NULL, '$2y$10$gqU0UmAUKzPPpNmhwnY6l.40nYY1LFxMVoCoJBpRbvjLoBRF0GKxe', NULL, '2021-04-30 12:58:28', '2021-04-30 14:29:22'),
(28, 'Tiago Monteiro', 'a14207@aedah.pt', '1619796600_Eminem - Lose Yourself [HD].mp3', '\"Tryna see, will i still be like this tomorrow?\" - Eminem', 'Estudante...', 'Curso de Gestão e Programação de sistemas informáticos', 'default.jpg', 'membro', 2, NULL, '$2y$10$qnwV3hkwQC7DLdKH9vlMpOdK6i/KRZO9yT9PtoH39mHrnaTspeVUW', NULL, '2021-04-30 12:59:04', '2021-04-30 14:30:00');

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
  ADD PRIMARY KEY (`id_musica`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
