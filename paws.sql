-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 05:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mangola`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `user_id`) VALUES
(94, 8, 41),
(91, 2, 33),
(88, 6, 18),
(98, 5, 45),
(89, 3, 18),
(96, 1, 46),
(107, 5, 47),
(111, 1, 48),
(112, 16, 19);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `quantity` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`details_id`, `user_id`, `product_id`, `address`, `quantity`) VALUES
(23, 45, 4, 'Opposite of Remidy Medical, flat no. 5, Garia, Kolkata-700084', 2),
(21, 41, 2, 'Pratapgarh, Garia, Kolkata-700103', 7),
(22, 46, 6, 'Kamalgazi, Kolkata-700135', 5),
(19, 33, 6, '2/3 E Block, Surat, Gujrat-395002', 5),
(20, 40, 3, 'Mahamayatala, Garia, Kolkata-84', 3),
(24, 47, 2, 'dhwfbchw', 2),
(25, 47, 3, '123RDF', 0),
(26, 49, 4, 'adimaly', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`) VALUES
(70, 51, 18),
(69, 1, 18),
(64, 49, 4),
(63, 47, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(50) NOT NULL,
  `product_image3` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_image2`, `product_image3`) VALUES
(18, 'Shince Tony', 50000, 'no daddy,,nadan patti.', 'shince.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_heading` varchar(255) NOT NULL,
  `review_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `product_id`, `user_id`, `review_heading`, `review_text`) VALUES
(34, 5, 34, 'This is so sweet!', 'Unique sweet and rich taste. They are moderately juicy and aromatic with a maize-yellow colour. Love it!'),
(33, 1, 34, 'Best of its all', 'Raw mango is a sweet-smelling fruit which is liked by al for its tart flavor. The colour varies in shades of greens and the inner flesh is white in colour. Its potent health benefits makes totapuri mango puree concentrate - an important food item.'),
(28, 8, 33, 'Never tried before', 'I tried it for the first time and oh boi its great! Must try this one'),
(37, 2, 40, 'Takes me back to childhood.', 'Whenever I have this it always reminds me of my childhood. This will always be my favorite.'),
(26, 1, 33, 'A bit expensive!', 'These are the best and a bit costly, but thanks to Mangola for selling me with a discount of 25%. #happy_shopping :D'),
(25, 4, 33, 'I love this variety!', 'One of the best mangoes compared to all its categories. I love this one.'),
(35, 4, 37, 'Great! This is my favourite.', 'I love this one. It tastes so great man!'),
(36, 4, 39, 'Its a bit over priced.', 'Mangola you are selling it a bit over priced. Otherwise its all good.'),
(38, 6, 40, 'No words can describe howmuch I love these.', 'This has always been my favorite. I always reccomend this variety ti others.'),
(39, 5, 41, 'Thanks to Mangola for the discount1', 'I bought like 8Kgs of these and got a discount of 40% on it. Thanks to mangola. Happy Shopping.'),
(40, 7, 43, 'So delicious!', 'Just one look at  the picture brings water to my mouth.'),
(41, 7, 40, 'Over priced.', 'Dude Mangola is selling this over-priced. I\'m not buying it. Sorry!'),
(42, 7, 44, 'This is love', 'My fav and will always be my fav. I love it more than Alponso'),
(43, 1, 36, 'This is the best!', 'Its suites my standards! This is the best!'),
(53, 2, 36, 'I was importing them from Canada', 'I love them so much that I decided to import them from Canada but then I came across Mangola.'),
(54, 8, 39, 'This variety is only for true mango lovers', 'Tastes good, smells good, and the company delivers good.'),
(55, 7, 46, 'Inshallah its great!', 'I am buying it for all my wives and children.'),
(56, 5, 45, 'I don\'t like this variety.', 'I don\'t know why but I kind of don\'t like this variety.'),
(57, 4, 44, 'Superb', 'Just amazing! And mangola delivered before expected time of delivery.'),
(58, 3, 42, 'Loved it!', 'It took a while for mangola to deliver but a wait for mangoes is worth a while.'),
(59, 3, 41, 'I can have this all day', 'I like these soo much that I can have it all day.'),
(60, 3, 40, 'I am returning home this Monday', 'I am returning home this Monday hope it gets delivered by then.'),
(61, 6, 39, 'Very Sweet', 'Its so sweet in test!'),
(62, 1, 39, 'Its so juicy', 'The best variety of mangoes.'),
(63, 6, 33, 'Great!', 'Its very nice!'),
(64, 2, 47, 'wfwfwvw', 'ddfef'),
(65, 4, 49, 'hshabkhc', 'mbasncb,nc,mncxms,'),
(66, 7, 47, 'djhqkdh', 'kjhdkjqehd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(53, 'shince', 'shincetony@gmail.com', '298af43393584b6844130b86428ab40c'),
(1, 'admin', 'admin@paws.com', 'paws1234'),
(31, '', '', ''),
(34, 'Rahul', 'gandhi.rahul@congress.com', 'abcd'),
(33, 'Modi', 'narendra_modi@bjp.com', 'namo'),
(18, 'Anirban', 'anirban@anirban.com', '1234'),
(43, 'Niloy', 'niloyburdhan@hotmail.com', 'niloy'),
(44, 'Rana Pratap', 'ranapratap@hotmail.com', 'ranapratap'),
(45, 'Sourav', 'souravnaskar@rediffmail.com', 'sourav'),
(46, 'Subhradip', 'subhradiprustyroy@rediffmail.com', 'rusty'),
(47, 'test', 'test@email.com', 'test'),
(48, 'test1', 'test1@gmail.com', 'test1'),
(49, 'ALAN', 'alan@gmail.com', 'alan'),
(50, 'user1', 'user@paws.com', '1234'),
(51, 'alan abilash', 'alanabilash@gmail.com', 'alan1234');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(54, 5, 36),
(53, 5, 33),
(56, 7, 39),
(55, 8, 40),
(60, 1, 41),
(50, 1, 18),
(52, 3, 33),
(51, 8, 18),
(58, 6, 42),
(59, 4, 42),
(61, 7, 46),
(62, 2, 46),
(63, 1, 45),
(64, 2, 45),
(65, 2, 47),
(67, 3, 47),
(69, 3, 49),
(72, 1, 48);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
