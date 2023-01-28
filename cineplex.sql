-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 11:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cineplex`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`) VALUES
(1, 'Mihai', 'Brad', 'm.brad@gmail.com', 79899546, '$2y$10$BoXBu/Lt2uc7KqPdJs4Bg.dO5u4XsH3//avU.61kEPVinVOD/nq1S'),
(2, 'Artiom', 'Volcov', 'a.volcov@gmail.com', 67544689, '$2y$10$arQgn4kYpav3Gn1OSZ15i.KMZSmIqgVUJRuUMfObcuZbCvMhyND.C'),
(3, 'Phil', 'Ghost', 'p.ghost@gmail.com', 98765984, '$2y$10$H2lcnmK2kRQEbK/ICUhDv.BrSqq0dXEC9HWdBX93VGf/ChYt632YG'),
(4, 'Ecaterina', 'Galer', 'katrina.cernei@gmail.com', 79800123, '12345'),
(5, 'Ecaterina', 'Galer', 'katrina.cernei@gmail.com', 79800123, '12345'),
(6, 'Ecaterina', 'Galer', 'katrina.cernei@gmail.com', 79800123, '$2y$10$kVe4QQgxvCErAr/6av.dc.msKcIz0VJAegil2YfrUkQqDdB6W/.x6'),
(7, 'Igor', 'Step', 'i.step@gmail.com', 987654, '$2y$10$NuIP3BNgpWcaSz8pRuP1h.OEzX51faDY5rR1U7rDcR.en2rnPNTFy'),
(8, 'Ecaterina', 'Galer', 'katrina.cernei@gmail.com', 79800123, '$2y$10$Kv85b5AYhpUGG1RIrdhjoufzcxPdBn2pHYkSbE7Cqn2qp47MbwKry'),
(9, 'Tristan', 'Panco', 't.panco@gmail.com', 79800124, '$2y$10$aT0gVBEU1de5B0Gl74GWqO7ffh5OwHblje6SxHO7.ql0qv9W6kMl2'),
(10, 'Sebi', 'Galer', 's.galer@gmail.com', 76011110, '$2y$10$Hn9Dtgw/KHy9zi2Wl0F7b.n4sGcKvNkNFk25i/jgiGTK9mdn.X1yi'),
(11, 'Sebi', 'Galer', 's.galer@gmail.com', 76011110, '$2y$10$Rn4Xr7jbj64OqsE1iQ4uJeEWyJv8J8baE8KJsURImhdbQDiRQZTDi'),
(12, 'Sofia', 'Galer', 's.galer@gmail.com', 76011110, '$2y$10$q1/Ovv1nnqLQ6Hf5e11Imec0ZD8aS57bG35X0vCDPqBo0EWrnvjqG'),
(13, 'Sofia', 'Galer', 's.galer@gmail.com', 76011110, '$2y$10$W1LIRRoL0GCjc4ErN8Fli.S6I6qm1BAM8qWM5XQ0xE4zlMytewyx6'),
(14, 'Sebi', 'Galer', 't.panco2341@gmail.com', 987654, '$2y$10$Gka0wEMaE6JR3khbLi4N2Obi.cQ0ghH5sSoZ0LQIXsLUwHkKFztqe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
