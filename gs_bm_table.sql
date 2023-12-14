-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-14 23:32:29
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_bm_table`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bm_main`
--

CREATE TABLE `bm_main` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `URL` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `summary` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postby` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `bm_main`
--

INSERT INTO `bm_main` (`id`, `name`, `URL`, `summary`, `postby`, `date`) VALUES
(1, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00'),
(2, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00'),
(3, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `bm_review`
--

CREATE TABLE `bm_review` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `rating` int(1) NOT NULL,
  `review` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `bm_tag`
--

CREATE TABLE `bm_tag` (
  `id` int(11) NOT NULL,
  `tag_1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag_2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag_3` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`id`, `user_id`, `pass`, `nickname`) VALUES
(1, '[value-1]', '[value-2]', '[value-3]'),
(2, 'gstest', 'passgs', 'gs_taro2023'),
(3, 'dsato', '1111', 'daisuke'),
(4, 'dsatoｓ', '$2y$10$8wJQpJND5twW.YEI8a5hEu4DuRBk9FVcHvZ2NtF9VikH9QCCPQjha', 'daisuke'),
(5, 'test1', '$2y$10$ajL6SdtlAjdly2zF/BQMq.b6pwNVa9BVwEzEu6O1nrdA.plubSMQ2', 'daisuke'),
(6, 'test2', '$2y$10$8ekIOKKZYfPYeXkIYWvfC.u6OYrlmWkfBq3GtAYPDFgsDSZ0vSMQi', 'daisuke');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_tag`
--

CREATE TABLE `user_tag` (
  `user_id` int(11) NOT NULL,
  `tag_1` varchar(20) NOT NULL,
  `tag_2` varchar(20) NOT NULL,
  `tag_3` varchar(20) NOT NULL,
  `tag_4` varchar(20) NOT NULL,
  `tag_5` varchar(20) NOT NULL,
  `tag_6` varchar(20) NOT NULL,
  `tag_7` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bm_main`
--
ALTER TABLE `bm_main`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- テーブルのインデックス `user_tag`
--
ALTER TABLE `user_tag`
  ADD KEY `on_user_deleted` (`user_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `bm_main`
--
ALTER TABLE `bm_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
