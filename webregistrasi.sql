-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2022 at 02:56 PM
-- Server version: 10.2.6-MariaDB-log
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webregistrasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Formregist', 'Formregist', '2022-05-15 06:15:39', '2022-05-15 06:15:39'),
(2, 'Private', 'Private', '2022-05-15 06:15:39', '2022-05-15 06:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_15_054904_create_posts_table', 1),
(6, '2022_05_15_070412_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Similique aut dolor velit illum officia.', 'harum-vitae-ut-similique-voluptate-ipsum-voluptate-illo', 'Quisquam aliquid ea adipisci cumque cumque dolores non. Eveniet consequuntur tempora odit nisi omnis. Consequatur est qui nihil rem.', 'Quis dignissimos ut id minus iusto. Vitae aut non placeat quia omnis dolor expedita doloribus. Et suscipit a nam at quo dicta. Velit impedit dolores explicabo molestiae. Qui voluptas mollitia recusandae. Et aliquid atque iure. Dolores aspernatur mollitia et aut. Magnam qui neque neque voluptatum aspernatur.', NULL, '2022-05-15 06:15:39', '2022-05-15 06:15:39'),
(2, 1, 1, 'Nisi unde explicabo veritatis recusandae.', 'facere-corrupti-quam-rerum-atque', 'Dolorem nam et expedita voluptatum quasi. Exercitationem eum aperiam adipisci nihil.', 'Sed maxime quia voluptas facere neque laborum. Doloremque impedit iure nisi occaecati quia. Qui dolore vel facilis quasi nam. Iure dignissimos eos eum voluptate reprehenderit. Culpa sed dignissimos quidem. Et similique repellat sed atque sint sit doloremque debitis. Blanditiis magni eligendi veritatis nostrum.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(3, 2, 1, 'Illo autem ipsum aliquid aut.', 'dolor-unde-dolorum-ut-rem', 'Quia architecto adipisci et iure natus aut. Rerum aperiam aut similique tenetur omnis. Error velit quibusdam voluptatem odio reiciendis aliquid sed. Accusamus nulla hic praesentium laborum corrupti nesciunt sunt.', 'Velit aut et delectus autem maiores. Nulla accusantium mollitia aut. Nobis impedit dignissimos voluptatem ut nemo quia molestiae. Totam autem nemo itaque.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(4, 2, 2, 'Non facere maxime odio vel id iusto soluta consequatur eos.', 'repellat-repellendus-nisi-voluptatibus-ipsam-rerum-quia', 'Sit ipsum iste hic vel harum aut consequatur. Sunt qui blanditiis excepturi cupiditate excepturi et adipisci. Ad iusto illum voluptatem consequatur ea.', 'Eveniet commodi dolorem quia doloribus est cum modi. Blanditiis omnis nulla cupiditate iusto ea eveniet. Suscipit laborum accusamus est error. Qui eaque nobis et et. Quaerat labore voluptate sed. Itaque fuga optio quos eum. Maiores unde eaque beatae ut eum vel vitae. Aspernatur impedit voluptates perferendis qui praesentium possimus doloribus sint. Reprehenderit dicta quos reprehenderit ducimus. Placeat ea est veritatis reiciendis dolore nisi animi. Laboriosam ut debitis autem. Atque ratione sunt quod sunt cupiditate libero similique quae.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(5, 2, 2, 'Temporibus aut voluptas accusamus.', 'ea-dolorem-itaque-consequuntur-consequatur', 'Accusamus sed laboriosam expedita nam praesentium voluptate ex. Dolorem enim ea cum voluptatem quibusdam aspernatur iusto. Pariatur est ipsa sed qui quo id nostrum. Explicabo odio dolorem culpa vel voluptatibus in.', 'Minus dolores deleniti et ea nam. Amet illum placeat facilis aut atque sint. Provident praesentium aspernatur molestiae explicabo harum. Tempore error occaecati nemo et aliquid architecto rerum. Culpa ut suscipit dolorem delectus. Non et quo ea doloribus quibusdam rerum doloremque expedita. Suscipit iusto nisi sit repellat omnis. Corrupti nisi tempore saepe sit qui officiis eum quis.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(6, 1, 1, 'Voluptates facilis molestiae illum impedit quod.', 'mollitia-unde-consequatur-consectetur-quia-unde-facere', 'Repellendus excepturi harum error ea rerum iusto molestiae dicta. Rerum exercitationem et sunt itaque consectetur magni. Et voluptate enim error veritatis. Quidem in incidunt sed facilis vitae architecto.', 'Dolorem debitis magnam dignissimos qui dignissimos tempore odio. Ut similique nesciunt commodi a ipsa. Rem et voluptas quibusdam voluptatem rerum facilis iste. Ipsam molestiae laudantium laboriosam incidunt qui molestias illum. Perferendis ipsum neque quis ipsum est itaque perferendis soluta. Non est quisquam sint modi.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(7, 1, 3, 'Accusamus maxime consequatur alias nemo.', 'quidem-omnis-voluptas-sunt-sed', 'Sit distinctio repellendus et. Veritatis magni ab dolorem voluptatibus numquam. Autem quo sint cum quos alias expedita.', 'Libero quam libero rerum cum vero. Suscipit non ea hic et ullam. Nihil et mollitia ut optio. Unde laboriosam recusandae sapiente est qui dignissimos. Et eaque doloremque nihil tenetur qui modi. Deserunt ea iste nisi nulla nihil. Dolorem dolores sint in illo eaque. Officiis illo hic sit nihil sit et dicta. Aut laboriosam quos fuga tenetur. Doloremque at amet similique error dolore eum omnis nulla. Modi autem voluptas qui.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(8, 2, 3, 'Qui et non sequi quis aut odit commodi et dolore.', 'rem-at-dolores-velit-quis-quis', 'Omnis quo voluptas aliquam consequatur. Quia autem et quia molestias. Earum nam dolor non omnis sequi impedit. Quos dolorum molestiae repellat sapiente dolores aut quaerat.', 'Aliquid ab voluptas voluptatem quia. Enim corporis commodi eligendi nostrum. Illo iste recusandae et ea quos et. Repudiandae provident sit nostrum sapiente.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(9, 2, 2, 'A sequi quis consequatur eos quisquam voluptatem dolore suscipit sapiente veritatis.', 'et-alias-omnis-ut-et-fugit', 'Delectus debitis fugit et laboriosam nam. Non corrupti id et. Velit et sed neque fuga fugit non aliquam nobis.', 'Perferendis commodi voluptas nobis necessitatibus hic quo. Sint error ut in quos consequatur. Iste ut non et. Dolores tempore voluptas vitae officiis qui officiis minus. Aut magnam et illo aut corporis explicabo. Qui magni sapiente laudantium vero et. Consequatur autem aut quia dolorem voluptatem accusantium. Molestiae itaque molestiae occaecati voluptatem quam et deleniti. Saepe repudiandae sapiente mollitia qui ut dolor dolorem.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(10, 2, 3, 'Porro odit atque consequatur facere est maxime quidem ut.', 'deleniti-totam-veniam-corporis-qui-earum-quo-et', 'Totam maxime maxime explicabo eligendi nihil. Quia occaecati eaque eius et quasi omnis. Ea similique quisquam sit commodi aut ipsa ut. Deserunt numquam in provident aliquam magni.', 'Aut alias rerum rem et. Velit blanditiis et labore doloribus quia. Iste nihil sit labore voluptates. Labore magni mollitia rerum aut qui qui. Tenetur repellendus ab inventore similique. Quasi facilis consectetur suscipit iusto. Ut optio expedita aut perspiciatis iusto.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(11, 1, 2, 'Eos eos quasi cupiditate perspiciatis est temporibus debitis.', 'consequatur-qui-aliquid-numquam-architecto-alias-molestiae', 'Omnis voluptas debitis est perspiciatis autem aliquam eaque. Magnam aliquam culpa corporis libero incidunt corrupti aut rerum. Quod ratione aut et quos. Quia voluptates numquam maiores.', 'Quae iste deserunt ab ipsum asperiores. Et ratione laborum eum et delectus. Doloribus magni non velit non alias ut. Aspernatur et consequatur nam molestiae iure nemo ex. Placeat sit omnis et explicabo rerum quam rerum quia. Aut in nisi qui doloremque illum.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(12, 2, 3, 'Ipsa error eum nam.', 'aut-expedita-ut-deserunt-voluptas-ut-consequatur-totam', 'Porro ut eligendi eaque atque quisquam natus quaerat. Molestias voluptas et fugit nihil quo vitae qui. Ut et sed facere.', 'Inventore magnam et inventore ea quae animi. Et animi ut velit itaque perferendis cupiditate voluptates. Dolore at et pariatur quod. Debitis qui nemo tempora non in. Distinctio vitae libero iusto atque possimus eaque sit nemo. Nobis impedit dignissimos qui doloremque et. Eaque dolorem molestiae consequatur aut error hic. Iusto est quisquam omnis dolores assumenda. Sed tempore vel eum molestiae. Omnis non veniam nesciunt quis sit.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(13, 2, 3, 'Et dolorum consequatur voluptatem quisquam provident minus commodi at et.', 'dolor-quos-minima-magni-quia', 'Minima quis quia et et amet quod quis blanditiis. Quae quia voluptas necessitatibus et. Rerum dolorem neque nobis ratione. Ea praesentium adipisci corrupti repellat inventore non repellat.', 'Nobis voluptas unde vitae et accusantium quisquam. Perspiciatis amet et iste laudantium. Explicabo aspernatur aspernatur dignissimos non rem autem dolor. Laboriosam quam quos delectus laboriosam nam commodi aut. Quam quaerat quisquam laudantium. Corrupti sequi eum cupiditate quo harum omnis vitae. Eveniet rem ab qui illo reprehenderit.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(14, 1, 3, 'Ullam perspiciatis quis velit vel labore et sunt ab.', 'quisquam-non-rerum-odio-molestias', 'Non et et autem aut quod ut. Saepe non autem voluptates autem pariatur. Quisquam minus voluptatibus in enim suscipit ipsum.', 'Qui facere ut quia perferendis neque blanditiis et. Et beatae sed eum aut autem. Dignissimos reiciendis corporis doloribus ab numquam. Voluptatum perspiciatis eveniet ullam tenetur sed. Ullam fugit et quia quam et magni eaque. Rerum aut illo dolores iusto. Architecto soluta facilis placeat facere incidunt nemo quidem. Et ipsam maiores delectus dolorem voluptatum. Temporibus blanditiis cumque animi. Qui et dolorem in officiis et.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(15, 2, 3, 'Magni repellat voluptates reprehenderit aspernatur sunt enim error.', 'maxime-deleniti-minima-nesciunt-laborum-sed-quos', 'Voluptatem ut aut voluptate adipisci maiores. Voluptatibus sit non ut optio voluptas eveniet. Amet adipisci modi quas velit et unde et. Quis quam officiis aut modi.', 'Soluta illum nihil minima cupiditate facere itaque esse. Voluptate nesciunt laborum sit blanditiis et. Voluptas omnis labore cum. Ab dolore facilis autem iure ex neque non. Ullam voluptas eius officiis rem vero deserunt qui pariatur. Exercitationem molestiae nulla quibusdam. Et esse explicabo totam assumenda.', NULL, '2022-05-15 06:15:40', '2022-05-15 06:15:40'),
(16, 2, 1, 'Officiis facere.', 'error-id-veniam-nihil-dolorum', 'Dolore repellendus ratione eum ipsam modi perferendis. Aperiam accusantium rerum omnis. Laborum aut occaecati quo quis facere quis qui.', 'Nostrum voluptas perferendis culpa voluptatem facere quis libero labore. Autem expedita dolorem reiciendis eum aliquam. Sunt error sit et et autem enim. Porro cumque voluptatem facere quidem nihil aut. Odit quae perferendis distinctio nisi. Atque ut ut dolor corrupti.', NULL, '2022-05-15 06:15:41', '2022-05-15 06:15:41'),
(17, 1, 1, 'Velit facere.', 'quaerat-et-quis-fuga', 'Omnis ut quo assumenda architecto totam. Velit animi est voluptatum voluptatem dignissimos impedit. Dolorum tempora similique molestiae. Odit perspiciatis nam veniam error deserunt.', 'Libero magni nobis omnis doloribus. Labore ut libero consequatur ipsum tempora rerum amet. Optio aspernatur nesciunt iure qui non. Et consequatur temporibus sunt voluptatem porro est placeat. Possimus sed officiis necessitatibus voluptas. Velit eum ea quod voluptatem assumenda. Aut vel vel et ut ratione aut. Sunt sit autem saepe non et voluptate.', NULL, '2022-05-15 06:15:41', '2022-05-15 06:15:41'),
(18, 1, 2, 'Ullam provident praesentium maxime.', 'occaecati-aut-sit-debitis-et-expedita', 'Eum quo labore ea eos sequi commodi. Consequuntur vel amet repellat consequuntur accusamus.', 'Deleniti et ut voluptas corporis amet sequi perferendis. Et unde sequi minima. Fugiat amet tempore qui minus eveniet quo. Sed odit perspiciatis nemo magni nostrum temporibus. Quia doloremque repellat delectus dolores vel autem ratione. Eos velit ut dolorem qui rem quidem magnam. Id dolor harum ut ullam veniam vitae repellat. Non ut omnis porro delectus saepe tenetur voluptatem. Cumque recusandae odio qui dolores excepturi eligendi.', NULL, '2022-05-15 06:15:41', '2022-05-15 06:15:41'),
(19, 1, 3, 'Deleniti nihil.', 'sit-reprehenderit-dolor-culpa-ipsam-neque', 'Cum incidunt voluptates autem aliquid quas. Dolore praesentium molestiae repudiandae quia possimus dolorum fuga. Aliquam et temporibus dolor et. Voluptate omnis molestiae accusantium est porro eum quisquam.', 'Inventore corporis sit in at consequuntur in. Tenetur qui cumque ex repellendus odit tenetur alias tempore. Illum ut voluptates consequuntur vel voluptates esse dolores. Architecto animi accusamus vel alias et. Consectetur quod incidunt accusamus laborum ut sit quos praesentium. Dolor nesciunt sit perferendis sit cupiditate nesciunt quo nihil. Maiores quam odit unde dolore dolore. Maiores quis est laudantium temporibus itaque praesentium laboriosam sequi. Modi consequuntur aliquid nemo perferendis. Voluptates adipisci animi suscipit neque est quia aliquam. Facilis saepe beatae est qui. Consectetur perferendis autem deserunt itaque nostrum optio consequatur. Fugit placeat hic temporibus rerum provident provident doloribus. Facilis et dicta iure neque eius.', NULL, '2022-05-15 06:15:41', '2022-05-15 06:15:41'),
(20, 1, 1, 'In quaerat pariatur ea vel assumenda ratione consequatur.', 'molestiae-est-sed-blanditiis-eum-ex', 'Alias debitis aut officiis consequatur debitis molestiae modi. Asperiores vel non rerum quis. Expedita molestias et sequi praesentium facere nihil porro. Labore molestias sit labore in ipsum iusto est.', 'Nam debitis qui quia ea. Accusantium soluta est nihil dolores. Aliquam aut qui provident qui incidunt asperiores dolores. Neque facilis delectus et et possimus. Quas fuga excepturi magnam consequatur.', NULL, '2022-05-15 06:15:41', '2022-05-15 06:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Carla Ellis Laksita S.Farm', 'zahra.hassanah', 'qoktaviani@example.net', '2022-05-15 06:15:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y96cu3cvCj', '2022-05-15 06:15:39', '2022-05-15 06:15:39'),
(2, 'Asirwanda Irawan', 'raditya.kusmawati', 'parman.hassanah@example.com', '2022-05-15 06:15:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v0LTspseaf', '2022-05-15 06:15:39', '2022-05-15 06:15:39'),
(3, 'Virman Manullang', 'nuraini.mariadi', 'rharyanto@example.com', '2022-05-15 06:15:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EZVOiX0gtv', '2022-05-15 06:15:39', '2022-05-15 06:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
