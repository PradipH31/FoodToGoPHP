-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 07:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_foodtogo`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_special` tinyint(1) NOT NULL,
  `image_link` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `price`, `is_special`, `image_link`) VALUES
(1, 'Personal Pizza', 'Luscious pizza with a tangy sauce', '8.99', 1, 'https://wallpaperaccess.com/full/424516.jpg'),
(2, 'Medium Pizza', 'Luscious pizza with a tangy sauce', '2.99', 0, 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2021%2F06%2F15%2Fmozzarella-pizza-margherita-FT-RECIPE0621.jpg'),
(3, 'Large Pizza', 'Pick your own toppings', '8.99', 0, 'https://image.freepik.com/free-photo/pepperoni-pizza-with-mushrooms-table_140725-997.jpg'),
(4, 'Mini Burger', 'A classic, perfected burger with buttered bun', '5.99', 0, 'https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
(5, 'Burger', 'A classic, perfected burger with buttered bun', '7.99', 0, 'https://images.pexels.com/photos/3738730/pexels-photo-3738730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
(6, 'Turkey Burger', 'A classic, perfected burger with buttered bun', '7.99', 1, 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_03/1401615/anne-burrell-killer-turkey-burger-today-main-today-190114-02.jpg'),
(7, 'Bottled Water', 'Purified bottle of water', '1.99', 0, 'https://cdn.abcotvs.com/dip/images/3718644_070618-cc-ss-water-bottle-warning-img.jpg'),
(8, 'Medium Soda', 'A refreshing can of your favorite soda', '2.99', 0, 'https://img.wallpapic.com/i1810-629-93/thumb/drinks-soft-drink-cocktail-food-wallpaper.jpg'),
(9, 'Large Soda', 'A refreshing can of your favorite soda', '3.99', 0, 'https://c0.wallpaperflare.com/preview/647/595/624/beverages-carbonated-drink-cold-drink-colorful.jpg'),
(10, 'Chocolate Milk Shake', 'A classic chocolate dessert, topped with whipped cream and a cherry', '4.99', 0, 'https://www.mashed.com/img/gallery/chocolate-milkshake/l-intro-1620929808.jpg'),
(11, 'Strawberry Milk Shake', 'A classic strawberry dessert, topped with whipped cream and a cherry', '4.99', 1, 'https://c4.wallpaperflare.com/wallpaper/147/926/442/strawberry-milkshake-wallpaper-preview.jpg'),
(12, 'Vanilla Milk Shake', 'A classic vanilla dessert, topped with whipped cream and a cherry', '4.99', 0, 'https://w0.peakpx.com/wallpaper/867/793/HD-wallpaper-milkshakes-milk-food-milkshake-sweet.jpg'),
(13, 'Fries', 'Don\'t let your main dish be lonely', '3.99', 0, 'https://img5.goodfon.com/original/1920x1080/4/b9/fried-potatoes-french-fries-yellow.jpg'),
(14, 'Caesar Salad', 'Don\'t let your main dish be lonely', '3.99', 0, 'https://wallpapercave.com/wp/wp2170726.jpg'),
(15, 'Small Coleslaw', 'Don\'t let your main dish be lonely', '1.99', 0, 'https://c0.wallpaperflare.com/preview/501/485/111/food-and-drink-salad-salads.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
