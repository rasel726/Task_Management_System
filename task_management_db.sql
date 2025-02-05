-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 04:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `recipient` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `recipient`, `type`, `date`, `is_read`) VALUES
(1, '\'Customer Feedback Survey Analysis\' has been assigned to you. Please review and start working on it.', 7, 'New Task Assigned', '2024-09-05', 1),
(2, '\'test task\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '0000-00-00', 1),
(3, '\'Example task 2\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2006-09-24', 1),
(4, '\'test\' has been assigned to you. Please review and start working on it', 8, 'New Task Assigned', '2009-06-24', 0),
(5, '\'test task 3\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 1),
(6, '\'Prepare monthly sales report\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 1),
(7, '\'Update client database\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 1),
(8, '\'Fix server downtime issue\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-09-06', 0),
(9, '\'Plan annual marketing strategy\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-09-06', 0),
(10, '\'Onboard new employees\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 0),
(11, '\'Design new company website\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-09-06', 0),
(12, '\'Conduct software testing\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 0),
(13, '\'Schedule team meeting\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-09-06', 0),
(14, '\'Prepare budget for Q4\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 0),
(15, '\'Write blog post on industry trend\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2024-09-06', 0),
(16, '\'Renew software license\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-09-06', 0),
(17, '\'Renew software license\' has been assigned to you. Please review and start working on it', 10, 'New Task Assigned', '2025-01-27', 1),
(18, '\'Write blog post on industry trend\' has been assigned to you. Please review and start working on it', 8, 'New Task Assigned', '2025-01-28', 0),
(19, '\'Prepare budget for Q4\' has been assigned to you. Please review and start working on it', 10, 'New Task Assigned', '2025-01-28', 0),
(20, '\'Schedule team meeting\' has been assigned to you. Please review and start working on it', 11, 'New Task Assigned', '2025-01-28', 0),
(21, '\'Conduct software testing\' has been assigned to you. Please review and start working on it', 12, 'New Task Assigned', '2025-01-28', 0),
(22, '\'an\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2025-01-30', 1),
(23, '\'new task\' has been assigned to you. Please review and start working on it', 19, 'New Task Assigned', '2025-01-30', 1),
(24, '\'new task\' has been assigned to you. Please review and start working on it', 7, 'New Task Assigned', '2025-01-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('pending','in_progress','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `assigned_to`, `due_date`, `status`, `created_at`) VALUES
(1, 'Quarterly Inventory Audit', 'Conduct a thorough audit of inventory levels across all warehouses and update the inventory management system accordingly.', 7, '2025-01-29', 'completed', '2024-08-29 16:47:37'),
(4, 'Monthly Financial Report Preparation', 'Prepare and review the monthly financial report, including profit and loss statements, balance sheets, and cash flow analysis.', 7, '2025-01-30', 'completed', '2024-08-31 10:50:20'),
(5, 'Customer Feedback Survey Analysis', 'Collect and analyze data from the latest customer feedback survey to identify areas for improvement in customer service.', 7, '2025-02-13', 'in_progress', '2024-08-31 10:50:47'),
(6, 'Website Maintenance and Update', 'Perform regular maintenance on the company website, update content, and ensure all security patches are applied.', 7, '2025-02-14', 'pending', '2024-08-31 10:51:12'),
(7, 'Quarterly Inventory Audit', 'Conduct a thorough audit of inventory levels across all warehouses and update the inventory management system accordingly.', 2, '2025-01-31', 'completed', '2024-08-31 10:51:45'),
(8, 'Employee Training Program Development', 'Develop and implement a new training program focused on enhancing employee skills in project management and teamwork.', 2, '2025-02-05', 'pending', '2024-08-31 10:52:11'),
(17, 'Prepare monthly sales report', 'Compile and analyze sales data for the previous month', 7, '2025-02-11', 'pending', '2024-09-06 08:01:48'),
(18, 'Update client database', 'Ensure all client information is current and complete', 7, '2025-02-17', 'pending', '2024-09-06 08:02:27'),
(19, 'Fix server downtime issue', 'Investigate and resolve the cause of recent server downtimes', 2, '2025-02-18', 'pending', '2024-09-06 08:02:59'),
(20, 'Plan annual marketing strategy', 'Develop a comprehensive marketing strategy for the next year', 2, '2025-02-20', 'pending', '2024-09-06 08:03:21'),
(21, 'Onboard new employees', 'Complete HR onboarding tasks for the new hires', 7, '0000-00-00', 'pending', '2024-09-06 08:03:44'),
(22, 'Design new company website', 'Create wireframes and mockups for the new website design', 2, '2025-02-15', 'pending', '2024-09-06 08:04:20'),
(23, 'Conduct software testing', 'Run tests on the latest software release to identify bugs', 7, '2025-02-05', 'pending', '2024-09-06 08:04:39'),
(24, 'Schedule team meeting', 'Organize a meeting to discuss project updates', 2, '2025-02-12', 'pending', '2024-09-06 08:04:57'),
(25, 'Prepare budget for Q4', 'Create and review the budget for the upcoming quarter', 7, '2025-02-19', 'pending', '2024-09-06 08:05:21'),
(26, 'Write blog post on industry trend', 'Draft and publish a blog post about current industry trend', 7, '2025-02-05', 'pending', '2024-09-06 08:10:50'),
(27, 'Renew software license', 'Ensure all software licenses are renewed and up to date', 2, '2025-02-12', 'pending', '2024-09-06 08:11:28'),
(28, 'Renew software license', 'Ensure all software licenses are renewed and up to date', 10, '2025-02-03', 'in_progress', '2025-01-27 17:48:22'),
(29, 'Write blog post on industry trend', 'Draft and publish a blog post about current industry trend', 8, '2025-01-31', 'in_progress', '2025-01-28 17:58:51'),
(30, 'Prepare budget for Q4', 'Create and review the budget for the upcoming quarter', 10, '2025-02-06', 'pending', '2025-01-28 17:59:16'),
(31, 'Schedule team meeting', 'Organize a meeting to discuss project updates', 11, '2025-01-24', 'in_progress', '2025-01-28 17:59:38'),
(32, 'Conduct software testing', 'Run tests on the latest software release to identify bugs', 12, '2025-01-30', 'completed', '2025-01-28 17:59:59'),
(33, 'an', 'na', 2, '0000-00-00', 'in_progress', '2025-01-30 12:28:51'),
(34, 'new task', 'na', 19, '2025-01-31', 'in_progress', '2025-01-30 12:38:48'),
(35, 'new task', 'nanananna', 7, '2025-02-05', 'in_progress', '2025-01-30 12:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Rasel Sarkar', 'admin', '$2y$10$TnyR1Y43m1EIWpb0MiwE8Ocm6rj0F2KojE3PobVfQDo9HYlAHY/7O', 'admin', '2024-08-28 07:10:04'),
(2, 'Mahin Kabir', 'mahin', '$2y$10$GqGdJWYvuzzzTwKCHfX2jOzQ8hgzObQHjX2HhJKG7Xu9EdDOEGGfC', 'employee', '2024-08-28 07:10:40'),
(7, 'Ariful Islam', 'arif', '$2y$10$rWQ8u0Fu.aWm4H7jzsdRpu9VazpKpFL1u.bc15FKHmzHbqnsKn4T6', 'employee', '2024-08-29 17:11:21'),
(8, 'Shanto Mozumder', 'shanto', '$2y$10$omGPlLdjkO9JG6ZPDAwK3ucPodzZoCN4v/jtRrhPB97xM9PxX5oly', 'employee', '2024-08-29 17:11:34'),
(10, 'Tamal Rahman', 'tamal', '$2y$10$tNwo8W3VPvzW5IWaPEBNGOGgfBmYBqLKZtoTHZ6z2aASP/eRzCLbm', 'employee', '2025-01-27 17:44:29'),
(11, 'Rakib Hossain', 'rakib', '$2y$10$BhQuHOkrRVqAJu89HMTZTefS2oaenyNtrx8bNz674avq3XnThQJda', 'employee', '2025-01-28 17:54:33'),
(12, 'Sohel Rana', 'sohel', '$2y$10$EvvtXyGXBq6uTxJ9Kg3Ml.VBET2PebK4JcC1mhXE5zfykzWEXiZri', 'employee', '2025-01-28 17:55:13'),
(13, 'Tushar Ahmed', 'tushar', '$2y$10$Rzfgyw/G4yMnGiMnmagwXOs8uq3iRdSR2U8TLhinnX7BmUEpClQGi', 'employee', '2025-01-28 17:55:28'),
(14, 'Rashedul Islam', 'rashedul', '$2y$10$bAwFBzoyYz0UB3aA2jY9m.v455VwYjKuHqOe9uoF3YMZ.4NEc2QlO', 'employee', '2025-01-28 17:56:08'),
(15, 'Emon Khan', 'emon', '$2y$10$6SnSvkUFN.JeEEGq5/ow3.bK.bsaxmygd1fH5mXXWCwJCSGSxWDnS', 'employee', '2025-01-28 17:56:30'),
(17, 'Suman Halder', 'suman', '$2y$10$2fQKb3NI7EaCjSLuz1bTgu2dF/Whn54oTHepMnYWy2SLsvQvD1Qt.', 'employee', '2025-01-28 18:02:41'),
(19, 'Kabir Hossen', 'kabir', '$2y$10$AQqn8Wo04R3LMX0GIVTpiuEnnxNV4CG88Iw3vtrprJkuXAbn6JxZm', 'employee', '2025-01-30 12:36:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;