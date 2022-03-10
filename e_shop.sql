-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2022 at 05:05 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(4, 'SAMSUNG', 'samsung', 'public/files/brand/samsung.png', '1', NULL, NULL),
(5, 'Hp', 'hp', 'public/files/brand/hp.png', '1', NULL, NULL),
(6, 'Nike', 'nike', 'public/files/brand/nike.png', '1', NULL, NULL),
(7, 'Adidas', 'adidas', 'public/files/brand/adidas.png', '1', NULL, NULL),
(8, 'puma', 'puma', 'public/files/brand/puma.png', '1', NULL, NULL),
(9, 'unia', 'unia', 'public/files/brand/unia.png', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(10, '5g seanaker shoes', '2022-03-03', '2022-03-10', 'public/files/campaign/nice.jpg', '1', '4', 'March', '2022', NULL, NULL),
(11, 'mens shoes', '2022-03-03', '2022-03-05', 'public/files/campaign/mens-shoes.jpeg', '1', '4', 'March', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `icon`, `home_page`, `created_at`, `updated_at`) VALUES
(6, 'Mens Fashions', 'mens-fashions', 'public/files/category/mens-fashions.png', '1', NULL, NULL),
(8, 'Womens Fashions', 'womens-fashions', 'public/files/category/womens-fashions.png', '1', NULL, NULL),
(9, 'Electronics', 'electronics', 'public/files/category/electronics.png', '1', NULL, NULL),
(10, 'Womens Dress', 'womens-dress', 'public/files/category/womens-dress.png', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 6, 2, 'Apex', 'apex', NULL, NULL),
(3, 6, 4, 'Rebook', 'rebook', NULL, NULL),
(6, 6, 2, 'Adidas', 'adidas', NULL, NULL),
(8, 9, 5, 'Samsung', 'samsung', NULL, NULL),
(9, 9, 5, 'Redmi', 'redmi', NULL, NULL),
(10, 9, 5, 'Nokia', 'nokia', NULL, NULL),
(11, 6, 4, 'cats paw', 'cats-paw', NULL, NULL),
(12, 10, 7, 'Regal', 'regal', NULL, NULL),
(13, 8, 3, 'Sneaker', 'sneaker', NULL, NULL),
(14, 8, 3, 'Heels', 'heels', NULL, NULL),
(15, 8, 3, 'Ponds', 'ponds', NULL, NULL),
(16, 6, 10, 'Sneakers', 'sneakers', NULL, NULL),
(17, 10, 12, 'china', 'china', NULL, NULL),
(18, 9, 6, 'Hp', 'hp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaild_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `vaild_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(3, 'laravel', '2022-02-16', 1, 12000, 'Active', NULL, NULL),
(4, 'laragon', '2022-02-02', 1, 1100, 'Active', NULL, NULL),
(5, 'Apex', '2022-02-02', 1, 1400, 'Active', NULL, NULL),
(6, '4020', '2022-03-02', 1, 1200, 'Active', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2022_01_23_130903_create_categories_table', 2),
(5, '2022_01_23_135838_create_subcategories_table', 3),
(6, '2022_01_25_074744_create_childcategories_table', 4),
(7, '2022_01_26_045920_create_warehouses_table', 5),
(8, '2022_01_26_090701_create_brands_table', 6),
(9, '2022_01_27_053534_create_seos_table', 7),
(10, '2022_01_27_082633_create_settings_table', 8),
(11, '2022_01_27_155708_create_pages_table', 9),
(12, '2022_01_28_054853_create_products_table', 10),
(13, '2022_01_28_132527_create_pickup_points_table', 11),
(14, '2022_01_31_134042_create_smtp_table', 12),
(15, '2022_01_31_153001_create_coupons_table', 13),
(16, '2022_02_22_064221_create_wbreviews_table', 14),
(17, '2022_02_23_163827_create_wishlists_table', 15),
(18, '2022_03_01_093457_create_campaigns_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(5, 1, 'trams and condistion', 'trams-and-condistion', 'trams and condistion or purching our products', '<p><span>In publishing and graphic design, Lorem ipsum is a placeholder \r\ntext commonly used to demonstrate the visual form of a document or a \r\ntypeface without relying on meaningful content. Lorem ipsum may be used \r\nas a placeholder before the final copy is available.</span><span><span> </span><a class=\"ruhjFe NJLBac fl\" href=\"https://en.wikipedia.org/wiki/Lorem_ipsum\" data-jsarwt=\"1\" data-usg=\"AOvVaw0_rKsmfs2-75sm_MYbRlS3\" data-ved=\"2ahUKEwi_qLfb1tP1AhUyIbcAHUCaBacQmhN6BAgdEAI\">Wikipedia</a></span></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('customer@gmail.com', '$2y$10$rKjxcPam6fVX1sSvMui8TenpDzl2DoJm/N1DCOHLrHQSZK8.SuuQO', '2022-01-22 00:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'Rangpur Branch', 'Rangpur Bangladesh', '0394898378', '01837438', NULL, NULL),
(3, 'Dhaka Branch', 'dhaka bngladesh', '017xxxxxxxxxxxxx', '017xxxxxxxxxxxxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `color` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slider` int(11) DEFAULT NULL,
  `product_view` int(11) DEFAULT NULL,
  `trendy` int(11) DEFAULT NULL,
  `flash_id_deal` int(11) DEFAULT NULL,
  `cash_on_delivery` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `color`, `size`, `product_slider`, `product_view`, `trendy`, `flash_id_deal`, `cash_on_delivery`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(4, 8, 3, 7, 4, 1, 'Women shoes', 'women-shoes', 'Sp12', 'unite4', 'women shoes', NULL, '122', '170', '160', '343', '1', '<p>This Scholl men\'s wide fit fisherman style sandal is a lightweight, \r\npractical &amp; durable sandal for everyday summer wear. Scholl uses \r\nleather to create supportive, comfortable &amp; breathable footwear for a\r\n large variety of feet. A single touch fastening strap over instep for \r\neasy on &amp; off and fit adjustment, cut outs for ventilation, combined\r\n with a smooth leather upper create a distinctive &amp; stylish look.<br> <br> <strong>FEATURES:</strong><br> - Type: Sandal<br> - Gender: Men<br> - Upper Material: Leather<br> - Color: Black<br> - Sole:&nbsp;PU<br> - Closing: Open</p>', 'women-shoes.jpeg', '[\"1725532944104090.jpeg\",\"1725532944256652.jpeg\",\"1725532944361254.jpeg\"]', 1, NULL, 1, 'black', '33', NULL, 3, 1, NULL, NULL, 1, '23-02-2022', 'February', NULL, NULL),
(5, 8, 3, 7, 4, 1, 'adidas Yeezy Boost 350 V2 \'Yeezreel\'', 'adidas-yeezy-boost-350-v2-yeezreel', 'sn-12', 'complex1', 'Nike,snekers', 'watch?v=j62cyLpw1k4', '3588', '4900', '4700', '12', '1', '<p><a class=\"C8TUKc rllt__link a-no-hover-decoration\" role=\"link\" tabindex=\"0\" data-cid=\"12792415446316083499\" data-ved=\"2ahUKEwillpWUlpD2AhXw8XMBHRMwCQQQvS56BAhqEGc\"><div class=\"rllt__details\"><div class=\"dbg0pd OSrXXb\" aria-level=\"3\" role=\"heading\"><span>টপ সুজ হাউজ</span></div><div>No reviews · Shoe store</div><div>Town Plaza, North Circular Road</div><div>Open ⋅ Closes 11PM</div><div class=\"dXnVAb\"><span class=\"BI0Dve\"><span><span aria-label=\"In-store shopping\">In-store shopping</span></span></span></div></div></a></p>', 'adidas-yeezy-boost-350-v2-yeezreel.jpg', '[\"1725532459028415.jpg\",\"1725532459109158.jpg\"]', 1, 0, 1, 'blak,red', '32,31,35', NULL, 3, 1, NULL, NULL, 1, '23-02-2022', 'February', NULL, NULL),
(6, 8, 3, 13, 4, 1, 'Women\'s SAS Tour Casual Fashion Sneakers', 'womens-sas-tour-casual-fashion-sneakers', 'P-841126', 'complex2', 'nike,Sneaker', 'watch?v=j62cyLpw1k4', '2000', '2500', '200', '23', '1', '<p><em><u><strong>Features and Benefits</strong></u></em></p><ul><li>Leather and mesh upper is durable, breathable, and soft to support various activities</li><li>EZ Lace™ system prevents discomfort across the instep with easy slide through D-shaped rings</li><li>Multilayered,\r\n flexible, cushioned, and durable Comfort Outsole™ with a non-marking \r\ncompound design provides consistent grip and comfort</li><li>SAS Foot-Shape Last® follows the natural shape of your foot and provide plenty of room for all-day comfort</li><li>SAS Arcfit™ Heel Stabilizer offers firm but gentle support to encourage proper heel strike on all types of surfaces</li><li>CoolSTEP™ Duo dual-density polyurethane foam footbed cushions and supports your heel</li><li>Removable OrthoLite® and CoolSTEP™ Duo Footbed keeps the foot cool and dry</li></ul>', 'womens-sas-tour-mesh-sneaker.png', '[\"1725368878171006.png\",\"1725368878436705.png\"]', 1, 1, 1, 'white,red,green', '32,33,34', 1, 3, 1, NULL, NULL, 1, '21-02-2022', 'February', NULL, NULL),
(7, 6, 10, 16, 8, 3, 'GLOBALWIN Mens Casual Fashion Sneakers', 'globalwin-mens-casual-fashion-sneakers', 'p-4543', 'complex1', 'phuma,sneakers', 'watch?v=j62cyLpw1k4', '3400', '4000', '500', '34', 'warehouse1', '<h2>Product details</h2>\r\n     <div id=\"detailBullets_feature_div\">\r\n                <ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\"><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">Is Discontinued By Manufacturer\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>No</span> </span></li><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">Package Dimensions\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>12.1 x 6.7 x 4.1 inches; 1.6 Pounds</span> </span></li><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">Item model number\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>GW-M1802-3-sz7</span> </span></li><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">Department\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>Mens</span> </span></li><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">Date First Available\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>May 5, 2018</span> </span></li><li><span class=\"a-list-item\"> <span class=\"a-text-bold\">ASIN\r\n                                    ‏\r\n                                        :\r\n                                    ‎\r\n                                </span> <span>B07BN6WQ3R</span> </span></li></ul>   </div>', 'globalwin-mens-casual-fashion-sneakers.png', '[\"1725389093986993.png\",\"1725389094190534.png\",\"1725389094458312.png\"]', NULL, 1, 1, 'black,white,green', '32,33,34', 1, 1, NULL, NULL, NULL, 1, '21-02-2022', 'February', NULL, NULL),
(8, 6, 10, 16, 6, 3, 'Jazba Skydrive 100 White Cricket Shoes', 'jazba-skydrive-100-white-cricket-shoes', 'WRDS001', 'complex1', 'shoes,sneakers', 'watch?v=j62cyLpw1k4', '1200', '2400', '2000', '23', 'warehouse1', '<div id=\"content_description\" class=\"ty-wysiwyg-content content-description\">\r\n                                                        \r\n    <div><h4>Product Description:</h4><ul><li>Product Type:Cricket Shoes</li><li>Durable</li><li>Lightweight</li><li>Flexible</li><li>Size available</li></ul><hr><p><strong>AboutJazba Skydrive 100 White</strong><br>Play\r\n your best on the field by wearing these Sky drive 100 cricket shoes for\r\n men by Jazba. White in colour, these lace-ups feature a mesh, synthetic\r\n leather upper and mesh lining. Furthermore, the rubber out-sole with \r\nspikes will ensure a firm grip on the ground.</p></div>\r\n\r\n                            \r\n                </div>', 'jazba-skydrive-100-white-cricket-shoes.jpg', '[\"1725530323212125.jpg\",\"1725530323315806.jpg\",\"1725530323420704.jpg\"]', 1, 1, 1, 'green,white', '32,33,34', NULL, 27, 1, NULL, NULL, 1, '23-02-2022', 'February', NULL, NULL),
(9, 6, 10, 16, 7, 1, '5G Sneaker For Men', '5g-sneaker-for-men', 'p-48584', 'complex1', 'adidas,shoes,mens', 'watch?v=j62cyLpw1k4', '1299', '1700', '1600', '55', 'warehouse1', '<div id=\"content_description\" class=\"ty-wysiwyg-content content-description\">\r\n                                                        \r\n    <div><h4>Product Description:</h4><ul><li>Product Types:Sneakers</li><li>Main Material: Mesh</li><li>Sole Material: Rubber</li><li>Gender:Men</li><li>size: 40 to 44</li></ul></div>\r\n\r\n                            \r\n                </div>', '5g-sneaker-for-men.jpg', '[\"1725530525208915.jpg\",\"1725530525571251.jpg\",\"1725530525703453.jpg\"]', 1, 0, 1, 'black,red', '43,32,33,34', NULL, 19, 1, NULL, NULL, 1, '23-02-2022', 'February', NULL, NULL),
(10, 8, 3, 13, 8, 1, 'Yeezy Boost 700 V3 Green', 'yeezy-boost-700-v3-green', 'gr-bi', 'complex2', 'womens,shoes,fashions', 'watch?v=j62cyLpw1k4', '2000', '2500', '2300', '66', 'warehouse2', '<h4>Product Description:</h4><ul><li>Product Type:Shoe</li><li>Sole Material: Rubber</li></ul>', 'yeezy-boost-700-v3-green.jpg', '[\"1725530810847610.jpg\",\"1725530810974530.jpg\",\"1725530811113213.jpg\"]', 1, 1, 1, 'green', '32,33,34', NULL, 9, NULL, NULL, NULL, 1, '23-02-2022', 'February', NULL, NULL),
(11, 10, 12, 17, 7, 3, 'Latest Collection Afsan Screen Print Cotton Three Piece [3PC],Jama,Orna,Salower', 'latest-collection-afsan-screen-print-cotton-three-piece-3pcjamaornasalower', 'dr-123', 'complex2', 'top dress,china,white dress', 'watch?v=j62cyLpw1k4', '1200', '1600', '1500', '123', 'warehouse3', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.5682s1dks1dkOJ\">Product details of Latest Collection Afsan Screen Print Cotton Three Piece [3PC],Jama,Orna,Salower</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Three Piece</li><li class=\"\">Color: Same As Picture.</li><li class=\"\">Main Material: Cotton</li><li class=\"\">Clothing - Cotton</li><li class=\"\">Uorna - Cotton</li><li class=\"\">Salwar - Cotton</li><li class=\"\">Type - Unstitched</li><li class=\"\">Length - 48 inches long.</li><li class=\"\">Width - 54 inches Body.</li></ul></div>', 'latest-collection-afsan-screen-print-cotton-three-piece-3pcjamaornasalower.jpg', '[\"1726299638153981.jpg\",\"1726299638263302.jpg\",\"1726299638372998.jpg\"]', 1, 1, 1, 'white,red,green', 'm,l,x,xl', NULL, NULL, 1, NULL, NULL, 1, '03-03-2022', 'March', NULL, NULL),
(12, 9, 6, 18, 5, 1, 'News  HP Pavilion 13, 14, and 15 laptops made with ocean-bound plastics launched in India', 'news-hp-pavilion-13-14-and-15-laptops-made-with-ocean-bound-plastics-launched-in-india', 'lp-3y4u34', 'complex3', 'hp,laptop', 'watch?v=j62cyLpw1k4', '60000', '70000', '68000', '45', 'warehouse3', '<p><br>https://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpg\r\nhttps://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpghttps://www.91-cdn.com/hub/wp-content/uploads/2021/02/hp_pavilion_13_14_15_featured.jpg</p>', 'news-hp-pavilion-13-14-and-15-laptops-made-with-ocean-bound-plastics-launched-in-india.jpg', '[\"1726300279989310.jpg\",\"1726300280055889.jpg\",\"1726300280120689.jpg\"]', 1, 1, 1, 'white,ash,black', '5.66\"', NULL, NULL, 1, NULL, NULL, 1, '03-03-2022', 'March', NULL, NULL),
(13, 10, 12, 17, 9, 1, 'Latest Collection Afsan Screen Print Cotton Three Piece [3PC],Jama,Orna,Salower', 'latest-collection-afsan-screen-print-cotton-three-piece-3pcjamaornasalower', 'dr-45465', 'complex3', 'top,womens fashion', 'watch?v=j62cyLpw1k4', '470', '600', '550', '33', 'warehouse3', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.73dbZJzyZJzymp\">roduct details of Latest Collection Afsan Screen Print Cotton Three Piece [3PC],Jama,Orna,Salower</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Three Piece</li><li class=\"\">Color: Same As Picture.</li><li class=\"\">Main Material: Cotton</li><li class=\"\">Clothing - Cotton&nbsp;</li><li class=\"\">Uorna -&nbsp; Cotton</li><li class=\"\">Salwar - Cotton&nbsp;</li><li class=\"\">Type - Unstitched</li><li class=\"\">Length - 48 inches long.</li><li class=\"\">Width - 54 inches Body.</li></ul></div></div></div>', 'latest-collection-afsan-screen-print-cotton-three-piece-3pcjamaornasalower.jpg', '[\"1726302087975058.jpg\",\"1726302088194023.jpg\",\"1726302088362542.jpg\"]', 1, NULL, 1, 'white,red,blue', 'm,l,x,xl', NULL, NULL, NULL, NULL, NULL, 1, '03-03-2022', 'March', NULL, NULL),
(14, 10, 12, 17, 8, 1, 'Women\'s SAS Tour top Fashion Sneakers', 'womens-sas-tour-top-fashion-sneakers', 'dr-3i848', 'complex3', 'dress', 'watch?v=j62cyLpw1k4', '400', '600', '560', '43', 'warehouse3', '<div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Saree and Panjabi</li><li class=\"\">Color: same as picture</li><li class=\"\">Main Material: Saree Half Silk and Panjabi Dhupian Silk</li><li class=\"\">Work Details: Block Print</li><li class=\"\">Panjabi: Semi Long Regular Fit</li><li class=\"\">Hand:12hat Saree Without Blouse Piece</li><li class=\"\">Fashionable and Attractive Designan Panjabi For Combo Couple Dress</li></ul></div>', 'womens-sas-tour-top-fashion-sneakers.jpg', '[\"1726302645407712.jpg\",\"1726302645555034.jpg\"]', 1, 1, 1, 'white', 'm,x,l', NULL, NULL, 1, NULL, NULL, 1, '03-03-2022', 'March', NULL, NULL),
(15, 10, 12, 17, 4, 1, 'Three Piece [3PC],Jama,Orna,Salower', 'three-piece-3pcjamaornasalower', 'dr-546544', 'complex3', 'top dress,fashions', 'watch?v=j62cyLpw1k4', '790', '1000', '9000', '45', '1', '<p>Nice color combinations and print top drss<br></p>', 'three-piece-3pcjamaornasalower.png', '[\"1726450110299803.jpg\",\"1726450110412466.png\"]', 1, 1, 1, 'blue,gray,red', 'm,x,xl', NULL, NULL, 1, NULL, NULL, 1, '05-03-2022', 'March', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `google_verification`, `google_analytics`, `alexa_verification`, `google_adsense`, `created_at`, `updated_at`) VALUES
(1, 'ABC Ecommerce', 'ABC coder', 'online shop, online ecomeerce', 'ABC ecomerce is the best marketplace', 'online shop, online ecomeerce', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '017xxxxxxx', '017xxxxxxx', 'dds@gmail.com', 'dds@gmail.com', 'public/files/setting/61f2b630b2c8b.png', 'public/files/setting/61f2b61c267fb.jpg', 'dhaka,b bangladesh', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', 'www.linkedin.com', 'www.youtube.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`id`, `mailer`, `host`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.oi', 'eshop', '12345678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(2, 6, 'watchs', 'watchs', NULL, NULL),
(3, 8, 'Shoes', 'shoes', NULL, NULL),
(4, 6, 'shirts', 'shirts', NULL, NULL),
(5, 9, 'Mobile', 'mobile', NULL, NULL),
(6, 9, 'Laptop', 'laptop', NULL, NULL),
(7, 10, 'Chair', 'chair', NULL, NULL),
(8, 6, 'dress', 'dress', NULL, NULL),
(9, 6, 'Jacket', 'jacket', NULL, NULL),
(10, 6, 'Shoes', 'shoes', NULL, NULL),
(11, 10, 'Print Cotton', 'print-cotton', NULL, NULL),
(12, 10, 'Top', 'top', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$6ZzNhPJ0l8XpY6P40WZ8vuEnYo60RtvTsCNNXPyET9lt7wQRkA3EK', NULL, 1, NULL, '2022-01-21 09:01:01', '2022-01-26 23:20:12'),
(2, 'customer', 'customer@gmail.com', NULL, '$2y$10$rOfEWXmEmpT9M/JEgBpF5OxjzZE41xSqxvbMbvYlh2BFHWgVqDoGG', NULL, NULL, NULL, '2022-01-21 11:35:07', '2022-01-21 11:35:07'),
(3, 'Nurul', 'nurul@gmail.com', NULL, '$2y$10$dD/gTtbZ9ql4L2NTmlcNhuXq/dD8LNewtVZbBkZjD5SHMjV78VLMy', NULL, NULL, NULL, '2022-02-22 11:00:38', '2022-02-22 11:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(1, 'warehouse1', 'Dinajpur', '017xxxxxxxxxxxxx', NULL, NULL),
(2, 'warehouse2', 'Rangpur Bangladesh', '017xxxxxxxxx', NULL, NULL),
(3, 'warehouse3', 'Dinajpur Bangladesh', '017xxxxxxxxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wbreviews`
--

CREATE TABLE `wbreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_month` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_year` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wbreviews`
--

INSERT INTO `wbreviews` (`id`, `user_id`, `product_id`, `name`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(2, 1, 7, 'admin', 'Onk sundor product..use kortechi ond aramdaiok.', 5, '23 ,February 2022', NULL, NULL, NULL, NULL),
(3, 2, 6, 'customer', 'Awsome color and usable', 3, '23 ,February 2022', NULL, NULL, NULL, NULL),
(4, 3, 7, 'Nurul', 'sundor products', 2, '23 ,February 2022', NULL, NULL, NULL, NULL),
(5, 1, 6, 'admin', 'onk sundor product', 5, '27-02-2022', 'February', '2022', NULL, NULL),
(6, 1, 4, 'admin', 'nice', 4, '27-02-2022', 'February', '2022', NULL, NULL),
(7, 1, 9, 'admin', 'osthir products', 4, '27-02-2022', 'February', '2022', NULL, NULL),
(8, 1, 5, 'admin', 'khub sundor', 5, '28-02-2022', 'February', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 3, 7, 'Wed ,February 2022', NULL, NULL),
(2, 3, 7, 'Wed ,February 2022', NULL, NULL),
(3, 3, 7, 'Wed ,February 2022', NULL, NULL),
(4, 3, 6, 'Wed ,February 2022', NULL, NULL),
(5, 2, 6, 'Thu ,February 2022', NULL, NULL),
(6, 2, 7, 'Sat ,February 2022', NULL, NULL),
(7, 1, 9, 'Sat ,February 2022', NULL, NULL),
(8, 1, 8, 'Sat ,February 2022', NULL, NULL),
(9, 1, 5, 'Sat ,February 2022', NULL, NULL),
(10, 2, 9, 'Sun ,February 2022', NULL, NULL),
(11, 1, 6, 'Sun ,February 2022', NULL, NULL),
(12, 1, 4, 'Sun ,February 2022', NULL, NULL),
(13, 2, 8, 'Thu ,March 2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbreviews`
--
ALTER TABLE `wbreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wbreviews_user_id_foreign` (`user_id`),
  ADD KEY `wbreviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wbreviews`
--
ALTER TABLE `wbreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wbreviews`
--
ALTER TABLE `wbreviews`
  ADD CONSTRAINT `wbreviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wbreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
