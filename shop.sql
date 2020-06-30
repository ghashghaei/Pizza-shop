-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 11:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `donya_action_logs`
--

CREATE TABLE `donya_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_action_logs`
--

INSERT INTO `donya_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-05-02 11:17:46', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":10000,\"name\":\"Persian\",\"extension_name\":\"Persian\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:18:32', 'com_installer', 234, 10000, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":10001,\"name\":\"Persian\",\"extension_name\":\"Persian\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:18:32', 'com_installer', 234, 10001, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10002,\"name\":\"Persian Language Pack\",\"extension_name\":\"Persian Language Pack\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:18:32', 'com_installer', 234, 10002, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":10003,\"name\":\"donyadideh\",\"extension_name\":\"donyadideh\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:19:01', 'com_installer', 234, 10003, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10004,\"name\":\"EShop\",\"extension_name\":\"EShop\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10004, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":10005,\"name\":\"Omnipay\",\"extension_name\":\"Omnipay\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10005, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10006,\"name\":\"Eshop Advanced Search\",\"extension_name\":\"Eshop Advanced Search\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10006, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10007,\"name\":\"Eshop Cart\",\"extension_name\":\"Eshop Cart\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10007, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10008,\"name\":\"Eshop Category\",\"extension_name\":\"Eshop Category\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10008, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10009,\"name\":\"Eshop Currency\",\"extension_name\":\"Eshop Currency\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10009, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10010,\"name\":\"Eshop Manufacturer\",\"extension_name\":\"Eshop Manufacturer\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10010, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10011,\"name\":\"Eshop Product\",\"extension_name\":\"Eshop Product\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10011, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10012,\"name\":\"Eshop Products Filter\",\"extension_name\":\"Eshop Products Filter\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10012, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10013,\"name\":\"Eshop Quote\",\"extension_name\":\"Eshop Quote\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10013, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10014,\"name\":\"Eshop Search\",\"extension_name\":\"Eshop Search\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10014, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10015,\"name\":\"EShop Tags\",\"extension_name\":\"EShop Tags\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10015, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10016,\"name\":\"Eshop Category content plugin\",\"extension_name\":\"Eshop Category content plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10016, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10017,\"name\":\"Eshop Currency\",\"extension_name\":\"Eshop Currency\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10017, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10018,\"name\":\"Eshop Notify\",\"extension_name\":\"Eshop Notify\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10018, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10019,\"name\":\"Eshop Product content plugin\",\"extension_name\":\"Eshop Product content plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10019, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10020,\"name\":\"Eshop Reminder\",\"extension_name\":\"Eshop Reminder\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10020, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10021,\"name\":\"Installer - EShop\",\"extension_name\":\"Installer - EShop\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10021, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10022,\"name\":\"EShop - AcyMailing 6 plugin\",\"extension_name\":\"EShop - AcyMailing 6 plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10022, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10023,\"name\":\"EShop - Also Bought plugin\",\"extension_name\":\"EShop - Also Bought plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10023, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10024,\"name\":\"EShop - Membership Pro Plans plugin\",\"extension_name\":\"EShop - Membership Pro Plans plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10024, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10025,\"name\":\"Membership Pro - Eshop Plugin\",\"extension_name\":\"Membership Pro - Eshop Plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10025, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10026,\"name\":\"Search - EShop\",\"extension_name\":\"Search - EShop\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10026, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10027,\"name\":\"User - Eshop plugin\",\"extension_name\":\"User - Eshop plugin\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10027, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10028,\"name\":\"EShop Package\",\"extension_name\":\"EShop Package\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:20:19', 'com_installer', 234, 10028, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:35:31', 'com_config.application', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:27', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":89,\"title\":\"Privacy Dashboard\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=89\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:27', 'com_modules.module', 234, 89, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:29', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":88,\"title\":\"Latest Actions\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=88\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:29', 'com_modules.module', 234, 88, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:30', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":87,\"title\":\"Sample Data\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=87\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:30', 'com_modules.module', 234, 87, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:32', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10,\"title\":\"Logged-in Users\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:32', 'com_modules.module', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:35', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":86,\"title\":\"Joomla Version\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=86\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:35', 'com_modules.module', 234, 86, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:37', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":9,\"title\":\"Quick Icons\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=9\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:37', 'com_modules.module', 234, 9, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":12,\"title\":\"Admin Menu\",\"extension_name\":\"Admin Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=12\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:53:47', 'com_modules.module', 234, 12, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 11:53:47', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":100,\"title\":\"\\u0622\\u0645\\u0627\\u0631 \\u0648 \\u0622\\u06cc\\u06a9\\u0646 \\u062f\\u0627\\u0634\\u0628\\u0631\\u062f\",\"extension_name\":\"\\u0622\\u0645\\u0627\\u0631 \\u0648 \\u0622\\u06cc\\u06a9\\u0646 \\u062f\\u0627\\u0634\\u0628\\u0631\\u062f\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=100\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 11:54:27', 'com_modules.module', 234, 100, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:00:01', 'com_content.article', 234, 1, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:00:20', 'com_menus.item', 234, 101, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-05-02 12:00:20', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:01:02', 'com_menus.item', 234, 103, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"uk\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:01:48', 'com_content.article', 234, 2, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"uk\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:02:09', 'com_menus.item', 234, 104, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":10029,\"name\":\"yootheme\",\"extension_name\":\"yootheme\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:22:12', 'com_installer', 234, 10029, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10030,\"name\":\"System - YOOtheme Framework\",\"extension_name\":\"System - YOOtheme Framework\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:22:12', 'com_installer', 234, 10030, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10031,\"name\":\"Installer - YOOtheme\",\"extension_name\":\"Installer - YOOtheme\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:22:12', 'com_installer', 234, 10031, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":10032,\"name\":\"Builder\",\"extension_name\":\"Builder\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:22:12', 'com_installer', 234, 10032, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10033,\"name\":\"YOOtheme\",\"extension_name\":\"YOOtheme\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:22:12', 'com_installer', 234, 10033, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"extension_name\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:29:47', 'com_templates.style', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"extension_name\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:34:49', 'com_templates.style', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":96,\"title\":\"Eshop Products Filter\",\"extension_name\":\"Eshop Products Filter\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=96\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:36:55', 'com_modules.module', 234, 96, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 12:36:55', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":96,\"title\":\"Eshop Products Filter\",\"extension_name\":\"Eshop Products Filter\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=96\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:37:07', 'com_modules.module', 234, 96, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 12:37:07', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 12:37:17', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"extension_name\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 12:40:41', 'com_templates.style', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":91,\"title\":\"Eshop Cart\",\"extension_name\":\"Eshop Cart\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=91\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 13:22:35', 'com_modules.module', 234, 91, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 13:22:35', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 13:57:47', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"cart\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 13:58:19', 'com_menus.item', 234, 105, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"checkout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 15:37:56', 'com_menus.item', 234, 106, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"extension_name\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 16:14:38', 'com_templates.style', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"extension_name\":\"yootheme - \\u067e\\u06cc\\u0634 \\u0641\\u0631\\u0636\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 16:23:54', 'com_templates.style', 234, 10, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-02 18:50:26', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-02 19:14:40', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-05-02 20:06:39', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:22:05', 'com_modules.module', 234, 16, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 20:22:05', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-02 20:22:16', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"profile\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:22:43', 'com_menus.item', 234, 107, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10027,\"title\":\"User - Eshop plugin\",\"extension_name\":\"User - Eshop plugin\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10027\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:36:25', 'com_plugins.plugin', 234, 10027, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__extensions\"}', '2020-05-02 20:36:25', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10026,\"title\":\"Search - EShop\",\"extension_name\":\"Search - EShop\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10026\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:36:33', 'com_plugins.plugin', 234, 10026, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__extensions\"}', '2020-05-02 20:36:33', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__extensions\"}', '2020-05-02 20:36:55', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__extensions\"}', '2020-05-02 20:37:09', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"customer\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:39:18', 'com_menus.item', 234, 108, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-05-02 20:39:22', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"profile\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-02 20:39:22', 'com_menus.item', 234, 107, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-05-02 20:43:28', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-05-03 08:38:15', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__content\"}', '2020-05-03 09:41:18', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__content\"}', '2020-05-03 09:59:33', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-03 10:42:57', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-05-03 12:03:09', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-03 12:03:09', 'com_modules.module', 234, 16, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-05-03 14:07:01', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-06 12:39:16', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-07 15:27:29', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-10 18:26:49', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-11 08:58:04', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-05-19 10:01:11', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"\\u067e\\u06cc\\u0634 \\u062e\\u0631\\u06cc\\u062f\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-19 10:02:02', 'com_menus.item', 234, 109, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"\\u0645\\u0642\\u0627\\u06cc\\u0633\\u0647\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-19 11:36:06', 'com_menus.item', 234, 110, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"\\u0639\\u0644\\u0627\\u0642\\u0647 \\u0645\\u0646\\u062f\\u06cc\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-19 12:00:20', 'com_menus.item', 234, 111, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"235\",\"username\":\"user\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=235\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2020-05-19 12:02:35', 'com_users', 235, 0, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-05-19 16:09:17', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"profile\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-05-19 16:09:17', 'com_menus.item', 234, 107, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-06-28 08:22:38', 'com_users', 234, 0, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-06-28 08:24:28', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"hidden menu\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=2\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 08:26:10', 'com_menus.menu', 234, 2, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__modules\"}', '2020-06-28 08:30:30', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":96,\"title\":\"Eshop Products Filter\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=96\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 08:30:30', 'com_modules.module', 234, 96, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 08:47:33', 'com_menus.item', 234, 103, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-06-28 08:47:33', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 08:50:43', 'com_menus.item', 234, 103, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-06-28 08:50:43', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 09:03:08', 'com_menus.item', 234, 103, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-06-28 09:03:08', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 09:04:01', 'com_menus.item', 234, 103, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-06-28 09:04:01', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"234\",\"title\":\"shop\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"table\":\"#__menu\"}', '2020-06-28 09:11:40', 'com_checkin', 234, 234, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\"}', '2020-06-28 09:11:40', 'com_menus.item', 234, 101, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `donya_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(123, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"234\",\"userid\":\"234\",\"username\":\"shop\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=234\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2020-06-28 09:22:52', 'com_users', 234, 234, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `donya_action_logs_extensions`
--

CREATE TABLE `donya_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_action_logs_extensions`
--

INSERT INTO `donya_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Table structure for table `donya_action_logs_users`
--

CREATE TABLE `donya_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_action_log_config`
--

CREATE TABLE `donya_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_action_log_config`
--

INSERT INTO `donya_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `donya_assets`
--

CREATE TABLE `donya_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_assets`
--

INSERT INTO `donya_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 147, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 24, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 29, 32, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 33, 34, 1, 'com_login', 'com_login', '{}'),
(13, 1, 35, 36, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 37, 38, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 39, 40, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 41, 46, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 47, 48, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 49, 110, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 111, 114, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 115, 116, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 117, 118, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 119, 120, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 121, 122, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 123, 126, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 127, 128, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 112, 113, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 124, 125, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 129, 130, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 131, 132, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 133, 134, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 135, 136, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 137, 138, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 139, 140, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 50, 51, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 52, 53, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 54, 55, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 56, 57, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 58, 59, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 60, 61, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 62, 63, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 64, 65, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 66, 67, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 68, 69, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 70, 71, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 72, 73, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 74, 75, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 76, 77, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 78, 79, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 42, 43, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 80, 81, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 141, 142, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 143, 144, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 82, 83, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 84, 85, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 11, 30, 31, 2, 'com_languages.language.2', 'Persian (Iran)', '{}'),
(61, 1, 145, 146, 1, 'com_eshop', 'EShop', '{}'),
(62, 18, 86, 87, 2, 'com_modules.module.90', 'Eshop Advanced Search', '{}'),
(63, 18, 88, 89, 2, 'com_modules.module.91', 'Eshop Cart', '{}'),
(64, 18, 90, 91, 2, 'com_modules.module.92', 'Eshop Category', '{}'),
(65, 18, 92, 93, 2, 'com_modules.module.93', 'Eshop Currency', '{}'),
(66, 18, 94, 95, 2, 'com_modules.module.94', 'Eshop Manufacturer', '{}'),
(67, 18, 96, 97, 2, 'com_modules.module.95', 'Eshop Product', '{}'),
(68, 18, 98, 99, 2, 'com_modules.module.96', 'Eshop Products Filter', '{}'),
(69, 18, 100, 101, 2, 'com_modules.module.97', 'Eshop Quote', '{}'),
(70, 18, 102, 103, 2, 'com_modules.module.98', 'Eshop Search', '{}'),
(71, 18, 104, 105, 2, 'com_modules.module.99', 'EShop Tags', '{}'),
(72, 18, 106, 107, 2, 'com_modules.module.100', 'آمار و آیکن داشبرد', '{}'),
(73, 27, 19, 20, 3, 'com_content.article.1', 'home', '{}'),
(74, 27, 21, 22, 3, 'com_content.article.2', 'uk', '{}'),
(75, 18, 108, 109, 2, 'com_modules.module.101', 'Builder', '{}'),
(76, 16, 44, 45, 2, 'com_menus.menu.2', 'hidden menu', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `donya_associations`
--

CREATE TABLE `donya_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_banners`
--

CREATE TABLE `donya_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_banner_clients`
--

CREATE TABLE `donya_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_banner_tracks`
--

CREATE TABLE `donya_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_categories`
--

CREATE TABLE `donya_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_categories`
--

INSERT INTO `donya_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 234, '2020-05-02 11:17:38', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_contact_details`
--

CREATE TABLE `donya_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_content`
--

CREATE TABLE `donya_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_content`
--

INSERT INTO `donya_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 73, 'home', 'home', '', '<!-- {\"type\":\"layout\",\"children\":[{\"type\":\"section\",\"props\":{\"style\":\"default\",\"width\":\"default\",\"vertical_align\":\"middle\",\"title_position\":\"top-left\",\"title_rotation\":\"left\",\"title_breakpoint\":\"xl\",\"image_position\":\"center-center\",\"text_color\":\"\",\"width_expand\":\"\",\"height\":\"\",\"padding\":\"\",\"header_transparent\":\"\",\"animation\":\"\"},\"children\":[{\"type\":\"row\",\"props\":{\"layout\":\"1-1\",\"breakpoint\":\"m\",\"fixed_width\":\"large\",\"column_gap\":\"\",\"row_gap\":\"\",\"width\":\"\",\"width_expand\":\"\",\"height\":\"\",\"margin\":\"\"},\"children\":[{\"type\":\"column\",\"props\":{\"image_position\":\"center-center\",\"media_overlay_gradient\":\"\",\"vertical_align\":\"\",\"style\":\"\",\"text_color\":\"\",\"padding\":\"\"},\"children\":[]}]}]}],\"version\":\"2.0.8\"} -->', 1, 2, '2020-05-02 12:00:01', 234, '', '2020-05-19 21:04:21', 234, 0, '0000-00-00 00:00:00', '2020-05-02 12:00:01', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{}', 8, 1, '', '', 1, 60, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');
INSERT INTO `donya_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(2, 74, 'uk', 'uk', '<body class=\"uk-animation-fade\"><div class=\"uk-offcanvas-content\">\r\n\r\n    <nav class=\"uk-navbar-container\">\r\n        <div class=\"uk-container\">\r\n            <div uk-navbar=\"\" class=\"uk-navbar\">\r\n                <div class=\"uk-navbar-left\">\r\n\r\n                    <a class=\"uk-navbar-item uk-logo\" href=\"#\">Logo</a>\r\n\r\n                    <ul class=\"uk-navbar-nav\">\r\n                        <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                        <li>\r\n                            <a href=\"#\" aria-expanded=\"false\">Parent</a>\r\n                            <div class=\"uk-navbar-dropdown\">\r\n                                <ul class=\"uk-nav uk-navbar-dropdown-nav\">\r\n                                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                                    <li class=\"uk-parent\">\r\n                                        <a href=\"#\">Parent</a>\r\n                                        <ul class=\"uk-nav-sub\">\r\n                                            <li><a href=\"#\">Sub item</a></li>\r\n                                            <li><a href=\"#\">Sub item</a></li>\r\n                                        </ul>\r\n                                    </li>\r\n                                    <li class=\"uk-nav-header\">Header</li>\r\n                                    <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: table\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"table\"><rect x=\"1\" y=\"3\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"7\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"11\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"15\" width=\"18\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                                    <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: thumbnails\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"thumbnails\"><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect></svg></span> Item</a></li>\r\n                                    <li class=\"uk-nav-divider\"></li>\r\n                                    <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: trash\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"trash\"><polyline fill=\"none\" stroke=\"#000\" points=\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\"></polyline><polyline fill=\"none\" stroke=\"#000\" points=\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\"></polyline><rect x=\"8\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"11\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"2\" y=\"3\" width=\"16\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                                </ul>\r\n                            </div>\r\n                        </li>\r\n                        <li><a href=\"#\">Item</a></li>\r\n                        <li><a href=\"#\">Item</a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div class=\"uk-navbar-right\">\r\n                    <a class=\"uk-navbar-toggle uk-icon\" href=\"#modal\" uk-icon=\"icon: more-vertical\" uk-toggle=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"more-vertical\"><circle cx=\"10\" cy=\"3\" r=\"2\"></circle><circle cx=\"10\" cy=\"10\" r=\"2\"></circle><circle cx=\"10\" cy=\"17\" r=\"2\"></circle></svg></a>\r\n                    <a class=\"uk-navbar-toggle uk-search-icon uk-icon\" href=\"#modal-search\" uk-search-icon=\"\" uk-toggle=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"search-icon\"><circle fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" cx=\"9\" cy=\"9\" r=\"7\"></circle><path fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" d=\"M14,14 L18,18 L14,14 Z\"></path></svg></a>\r\n                    <a class=\"uk-navbar-toggle uk-navbar-toggle-icon uk-icon\" href=\"#offcanvas\" uk-navbar-toggle-icon=\"\" uk-toggle=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"navbar-toggle-icon\"><rect y=\"9\" width=\"20\" height=\"2\"></rect><rect y=\"3\" width=\"20\" height=\"2\"></rect><rect y=\"15\" width=\"20\" height=\"2\"></rect></svg></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </nav>\r\n\r\n    <div class=\"uk-section uk-section-default\">\r\n        <div class=\"uk-container\">\r\n\r\n            <div uk-grid=\"\" class=\"uk-grid\">\r\n                <div class=\"uk-width-2-3@m uk-first-column\">\r\n\r\n                    <ul class=\"uk-breadcrumb\">\r\n                        <li><a href=\"#\">Home</a></li>\r\n                        <li><a href=\"#\">Blog</a></li>\r\n                        <li class=\"uk-disabled\"><a>Category</a></li>\r\n                        <li><span>Post</span></li>\r\n                    </ul>\r\n\r\n                    <article class=\"uk-article\">\r\n\r\n                        <h1 class=\"uk-article-title\"><a class=\"uk-link-reset\" href=\"#\">Article Title</a></h1>\r\n\r\n                        <hr class=\"uk-divider-small\">\r\n\r\n                        <p class=\"uk-text-lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n                        <p class=\"uk-column-1-2@s uk-dropcap\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n                        <p class=\"uk-article-meta\">Written by <a href=\"#\">Super User</a> on 12 April 2012. Posted in <a href=\"#\">Blog</a></p>\r\n\r\n                        <hr class=\"uk-divider-icon uk-margin-medium\">\r\n\r\n                        <div class=\"uk-grid-small uk-child-width-auto uk-flex-middle uk-margin-medium uk-grid\" uk-grid=\"\">\r\n                            <div class=\"uk-first-column\">\r\n                                <button class=\"uk-button uk-button-default\" aria-expanded=\"false\">Default</button>\r\n                                <div uk-dropdown=\"mode: click\" class=\"uk-dropdown\">\r\n                                    <ul class=\"uk-nav uk-dropdown-nav\">\r\n                                        <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                                        <li class=\"uk-parent\">\r\n                                            <a href=\"#\">Parent</a>\r\n                                            <ul class=\"uk-nav-sub\">\r\n                                                <li><a href=\"#\">Sub item</a></li>\r\n                                                <li><a href=\"#\">Sub item</a></li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class=\"uk-nav-header\">Header</li>\r\n                                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: table\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"table\"><rect x=\"1\" y=\"3\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"7\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"11\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"15\" width=\"18\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: thumbnails\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"thumbnails\"><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect></svg></span> Item</a></li>\r\n                                        <li class=\"uk-nav-divider\"></li>\r\n                                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: trash\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"trash\"><polyline fill=\"none\" stroke=\"#000\" points=\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\"></polyline><polyline fill=\"none\" stroke=\"#000\" points=\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\"></polyline><rect x=\"8\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"11\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"2\" y=\"3\" width=\"16\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                            <div>\r\n                                <button class=\"uk-button uk-button-primary\">Primary</button>\r\n                            </div>\r\n                            <div>\r\n                                <button class=\"uk-button uk-button-secondary\">Secondary</button>\r\n                            </div>\r\n                            <div>\r\n                                <button class=\"uk-button uk-button-danger\">Danger</button>\r\n                            </div>\r\n                            <div>\r\n                                <button class=\"uk-button uk-button-default\" disabled=\"\">Disabled</button>\r\n                            </div>\r\n                        </div>\r\n\r\n                        <hr class=\"uk-margin-medium\">\r\n\r\n                        <div class=\"uk-child-width-1-2 uk-child-width-1-4@s uk-margin uk-grid\" uk-grid=\"\">\r\n                            <div class=\"uk-first-column\">\r\n                                <ul class=\"uk-list\">\r\n                                    <li><a href=\"#\">a element</a></li>\r\n                                    <li><abbr title=\"Title text\">abbr element</abbr></li>\r\n                                    <li><code>code element</code></li>\r\n                                    <li><del>del element</del></li>\r\n                                    <li><dfn title=\"Title text\">dfn element</dfn></li>\r\n                                    <li><a href=\"#\" class=\"uk-link-muted\">Link Muted</a></li>\r\n                                </ul>\r\n                            </div>\r\n                            <div>\r\n                                <ul class=\"uk-list\">\r\n                                    <li><em>em element</em></li>\r\n                                    <li><ins>ins element</ins></li>\r\n                                    <li><mark>mark element</mark></li>\r\n                                    <li><q>q <q>inside</q> a q</q></li>\r\n                                    <li><strong>strong element</strong></li>\r\n                                    <li><a href=\"#\" class=\"uk-link-reset\">Link Reset</a></li>\r\n                                </ul>\r\n                            </div>\r\n                            <div>\r\n                                <ul class=\"uk-list\">\r\n                                    <li class=\"uk-text-muted\">Text Muted</li>\r\n                                    <li class=\"uk-text-primary\">Text Primary</li>\r\n                                    <li class=\"uk-text-success\">Text Success</li>\r\n                                    <li class=\"uk-text-warning\">Text Warning</li>\r\n                                    <li class=\"uk-text-danger\">Text Danger</li>\r\n                                    <li class=\"uk-text-meta\">Text Meta</li>\r\n                                </ul>\r\n                            </div>\r\n                            <div>\r\n                                <ul class=\"uk-list\">\r\n                                    <li><span class=\"uk-label\">Default</span></li>\r\n                                    <li><span class=\"uk-label uk-label-success\">Success</span></li>\r\n                                    <li><span class=\"uk-label uk-label-warning\">Warning</span></li>\r\n                                    <li><span class=\"uk-label uk-label-danger\">Danger</span></li>\r\n                                    <li><a class=\"uk-badge\" href=\"#\">1</a></li>\r\n                                    <li>\r\n                                        <a class=\"uk-icon-button uk-icon\" href=\"#\" uk-icon=\"icon: home\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"home\"><polygon points=\"18.65 11.35 10 2.71 1.35 11.35 0.65 10.65 10 1.29 19.35 10.65\"></polygon><polygon points=\"15 4 18 4 18 7 17 7 17 5 15 5\"></polygon><polygon points=\"3 11 4 11 4 18 7 18 7 12 12 12 12 18 16 18 16 11 17 11 17 19 11 19 11 13 8 13 8 19 3 19\"></polygon></svg></a>\r\n                                        <a class=\"uk-icon-button uk-icon\" href=\"#\" uk-icon=\"icon: github\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"github\"><path d=\"M10,1 C5.03,1 1,5.03 1,10 C1,13.98 3.58,17.35 7.16,18.54 C7.61,18.62 7.77,18.34 7.77,18.11 C7.77,17.9 7.76,17.33 7.76,16.58 C5.26,17.12 4.73,15.37 4.73,15.37 C4.32,14.33 3.73,14.05 3.73,14.05 C2.91,13.5 3.79,13.5 3.79,13.5 C4.69,13.56 5.17,14.43 5.17,14.43 C5.97,15.8 7.28,15.41 7.79,15.18 C7.87,14.6 8.1,14.2 8.36,13.98 C6.36,13.75 4.26,12.98 4.26,9.53 C4.26,8.55 4.61,7.74 5.19,7.11 C5.1,6.88 4.79,5.97 5.28,4.73 C5.28,4.73 6.04,4.49 7.75,5.65 C8.47,5.45 9.24,5.35 10,5.35 C10.76,5.35 11.53,5.45 12.25,5.65 C13.97,4.48 14.72,4.73 14.72,4.73 C15.21,5.97 14.9,6.88 14.81,7.11 C15.39,7.74 15.73,8.54 15.73,9.53 C15.73,12.99 13.63,13.75 11.62,13.97 C11.94,14.25 12.23,14.8 12.23,15.64 C12.23,16.84 12.22,17.81 12.22,18.11 C12.22,18.35 12.38,18.63 12.84,18.54 C16.42,17.35 19,13.98 19,10 C19,5.03 14.97,1 10,1 L10,1 Z\"></path></svg></a>\r\n                                        <a class=\"uk-icon-link uk-icon\" href=\"#\" uk-icon=\"icon: trash\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"trash\"><polyline fill=\"none\" stroke=\"#000\" points=\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\"></polyline><polyline fill=\"none\" stroke=\"#000\" points=\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\"></polyline><rect x=\"8\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"11\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"2\" y=\"3\" width=\"16\" height=\"1\"></rect></svg></a>\r\n                                    </li>\r\n                                </ul>\r\n                            </div>\r\n                        </div>\r\n\r\n                        <pre class=\"uk-pre uk-margin-medium\"><code>&lt;div class=\"myclass\"&gt;...&lt;div&gt;</code></pre>\r\n\r\n                        <blockquote class=\"uk-margin-medium\" cite=\"#\">\r\n                            <p>The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a footer or cite element.</p>\r\n                            <footer>Someone famous in <cite><a href=\"#\">Source Title</a></cite></footer>\r\n                        </blockquote>\r\n\r\n                        <div class=\"uk-grid-small uk-grid\" uk-grid=\"\">\r\n                            <div class=\"uk-first-column\">\r\n                                <a class=\"uk-button uk-button-text\" href=\"#\">Read more</a>\r\n                            </div>\r\n                            <div>\r\n                                <a class=\"uk-button uk-button-text\" href=\"#\">5 Comments</a>\r\n                            </div>\r\n                        </div>\r\n\r\n                    </article>\r\n\r\n                    <hr class=\"uk-margin-medium\">\r\n\r\n                    <ul class=\"uk-comment-list uk-margin-medium\">\r\n                        <li>\r\n                            <article class=\"uk-comment uk-visible-toggle\" tabindex=\"-1\">\r\n                                <header class=\"uk-comment-header uk-position-relative\">\r\n                                    <div class=\"uk-grid-medium uk-flex-middle uk-grid\" uk-grid=\"\">\r\n                                        <div class=\"uk-width-auto uk-first-column\">\r\n                                            <canvas class=\"uk-comment-avatar test-img-small\" width=\"50\" height=\"50\"></canvas>\r\n                                        </div>\r\n                                        <div class=\"uk-width-expand\">\r\n                                            <h4 class=\"uk-comment-title uk-margin-remove\"><a class=\"uk-link-reset\" href=\"#\">Author</a></h4>\r\n                                            <p class=\"uk-comment-meta uk-margin-remove-top\"><a class=\"uk-link-reset\" href=\"#\">12 days ago</a></p>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"uk-position-top-right uk-position-small uk-hidden-hover\"><a class=\"uk-button uk-button-text\" href=\"#\">Reply</a></div>\r\n                                </header>\r\n                                <div class=\"uk-comment-body\">\r\n                                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\r\n                                </div>\r\n                            </article>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <ul class=\"uk-pagination uk-flex-center\" uk-margin=\"\">\r\n                        <li class=\"uk-first-column\"><a href=\"#\"><span uk-pagination-previous=\"\" class=\"uk-pagination-previous uk-icon\"><svg width=\"7\" height=\"12\" viewBox=\"0 0 7 12\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"pagination-previous\"><polyline fill=\"none\" stroke=\"#000\" stroke-width=\"1.2\" points=\"1 1 6 6 1 11\"></polyline></svg></span></a></li>\r\n                        <li><a href=\"#\">1</a></li>\r\n                        <li class=\"uk-disabled\"><span>...</span></li>\r\n                        <li><a href=\"#\">4</a></li>\r\n                        <li><a href=\"#\">5</a></li>\r\n                        <li><a href=\"#\">6</a></li>\r\n                        <li class=\"uk-active\"><span>7</span></li>\r\n                        <li><a href=\"#\">8</a></li>\r\n                        <li><a href=\"#\">9</a></li>\r\n                        <li><a href=\"#\">10</a></li>\r\n                        <li class=\"uk-disabled\"><span>...</span></li>\r\n                        <li><a href=\"#\">20</a></li>\r\n                        <li><a href=\"#\"><span uk-pagination-next=\"\" class=\"uk-pagination-next uk-icon\"><svg width=\"7\" height=\"12\" viewBox=\"0 0 7 12\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"pagination-next\"><polyline fill=\"none\" stroke=\"#000\" stroke-width=\"1.2\" points=\"6 1 1 6 6 11\"></polyline></svg></span></a></li>\r\n                    </ul>\r\n\r\n                    <h1 class=\"uk-heading-hero\">Hero Heading</h1>\r\n\r\n                </div>\r\n                <div class=\"uk-width-expand@m\">\r\n\r\n                    <div class=\"uk-margin-medium-bottom\">\r\n                        <form class=\"uk-search uk-search-default uk-width-1-1\">\r\n                            <span uk-search-icon=\"\" class=\"uk-search-icon uk-icon\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"search-icon\"><circle fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" cx=\"9\" cy=\"9\" r=\"7\"></circle><path fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" d=\"M14,14 L18,18 L14,14 Z\"></path></svg></span>\r\n                            <input class=\"uk-search-input\" type=\"search\" placeholder=\"Search...\">\r\n                        </form>\r\n                    </div>\r\n\r\n                    <ul class=\"uk-nav-default uk-nav-parent-icon uk-margin-medium uk-nav\" uk-nav=\"\">\r\n                        <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                        <li class=\"uk-parent\">\r\n                            <a href=\"#\">Parent</a>\r\n                            <ul class=\"uk-nav-sub\" hidden=\"\" aria-hidden=\"true\">\r\n                                <li><a href=\"#\">Sub item</a></li>\r\n                                <li><a href=\"#\">Sub item</a>\r\n                                    <ul>\r\n                                        <li><a href=\"#\">Sub item</a></li>\r\n                                        <li><a href=\"#\">Sub item</a></li>\r\n                                    </ul>\r\n                                </li>\r\n                            </ul>\r\n                        </li>\r\n                        <li class=\"uk-parent\">\r\n                            <a href=\"#\">Parent</a>\r\n                            <ul class=\"uk-nav-sub\" hidden=\"\" aria-hidden=\"true\">\r\n                                <li><a href=\"#\">Sub item</a></li>\r\n                                <li><a href=\"#\">Sub item</a></li>\r\n                            </ul>\r\n                        </li>\r\n                        <li class=\"uk-nav-header\">Header</li>\r\n                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: table\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"table\"><rect x=\"1\" y=\"3\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"7\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"11\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"15\" width=\"18\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: thumbnails\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"thumbnails\"><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect></svg></span> Item</a></li>\r\n                        <li class=\"uk-nav-divider\"></li>\r\n                        <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: trash\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"trash\"><polyline fill=\"none\" stroke=\"#000\" points=\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\"></polyline><polyline fill=\"none\" stroke=\"#000\" points=\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\"></polyline><rect x=\"8\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"11\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"2\" y=\"3\" width=\"16\" height=\"1\"></rect></svg></span> Item</a></li>\r\n                    </ul>\r\n\r\n                    <div class=\"uk-card uk-card-body uk-card-default uk-card-hover\">\r\n                        <h3 class=\"uk-card-title\">Default</h3>\r\n                        <p>Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur sadipscing.</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-margin uk-card uk-card-body uk-card-primary uk-card-hover\">\r\n                        <h3 class=\"uk-card-title\">Primary</h3>\r\n                        <p>Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur sadipscing.</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-margin uk-card uk-card-body uk-card-secondary uk-card-hover\">\r\n                        <h3 class=\"uk-card-title\">Secondary</h3>\r\n                        <p>Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur sadipscing.</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-margin uk-card uk-card-body uk-card-hover\">\r\n                        <h3 class=\"uk-card-title\">Hover</h3>\r\n                        <p>Lorem ipsum <a href=\"#\">dolor</a> sit amet, consectetur sadipscing.</p>\r\n                    </div>\r\n\r\n                    <div uk-alert=\"\" class=\"uk-alert\">\r\n                        <a href=\"#\" class=\"uk-alert-close uk-close uk-icon\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></a>\r\n                        <p>Default</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-alert-primary uk-alert\" uk-alert=\"\">\r\n                        <a href=\"#\" class=\"uk-alert-close uk-close uk-icon\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></a>\r\n                        <p>Primary</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-alert-success uk-alert\" uk-alert=\"\">\r\n                        <a href=\"#\" class=\"uk-alert-close uk-close uk-icon\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></a>\r\n                        <p>Success</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-alert-warning uk-alert\" uk-alert=\"\">\r\n                        <a href=\"#\" class=\"uk-alert-close uk-close uk-icon\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></a>\r\n                        <p>Warning</p>\r\n                    </div>\r\n\r\n                    <div class=\"uk-alert-danger uk-margin-remove-bottom uk-alert\" uk-alert=\"\">\r\n                        <a href=\"#\" class=\"uk-alert-close uk-close uk-icon\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></a>\r\n                        <p>Danger</p>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-large\">\r\n\r\n            <div class=\"uk-grid-divider uk-child-width-expand@m uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                    <div class=\"uk-child-width-expand@s uk-grid\" uk-grid=\"\">\r\n                        <div class=\"uk-first-column\">\r\n\r\n                            <form class=\"uk-form-stacked\">\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                    <label class=\"uk-form-label\">Text</label>\r\n                                    <input class=\"uk-input\" type=\"text\" placeholder=\"Some text...\">\r\n                                </div>\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                    <select class=\"uk-select\">\r\n                                        <option>Option 01</option>\r\n                                        <option>Option 02</option>\r\n                                    </select>\r\n                                </div>\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                     <textarea class=\"uk-textarea\" rows=\"2\" placeholder=\"Some text...\"></textarea>\r\n                                </div>\r\n\r\n                                <div class=\"uk-grid-small uk-child-width-auto uk-grid\" uk-grid=\"\">\r\n                                    <div class=\"uk-first-column\">\r\n                                        <label><input class=\"uk-radio\" type=\"radio\" name=\"radio\"> Radio</label>\r\n                                    </div>\r\n                                    <div>\r\n                                        <label><input class=\"uk-checkbox\" type=\"checkbox\"> Checkbox</label>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                    <input class=\"uk-range\" type=\"range\" value=\"2\" min=\"0\" max=\"10\" step=\"0.1\">\r\n                                </div>\r\n\r\n                            </form>\r\n\r\n                        </div>\r\n                        <div>\r\n\r\n                            <form class=\"uk-form-stacked\">\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                    <label class=\"uk-form-label\">States</label>\r\n                                    <input class=\"uk-input\" type=\"text\" placeholder=\":disabled\" disabled=\"\">\r\n                                </div>\r\n\r\n                                <div class=\"uk-margin-small\">\r\n                                    <input class=\"uk-input uk-form-danger\" type=\"text\" placeholder=\"form-danger\" value=\"form-danger\">\r\n                                </div>\r\n                                <div class=\"uk-margin-small\">\r\n                                    <input class=\"uk-input uk-form-success\" type=\"text\" placeholder=\"form-success\" value=\"form-success\">\r\n                                </div>\r\n                                <div class=\"uk-margin-small\">\r\n                                    <input class=\"uk-input uk-form-blank\" type=\"text\" placeholder=\"form-blank\">\r\n                                </div>\r\n\r\n                            </form>\r\n\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"uk-overflow-auto uk-margin-large-top\">\r\n                        <table class=\"uk-table uk-table-divider uk-table-hover uk-table-small\">\r\n                            <thead>\r\n                                <tr>\r\n                                    <th>Table Heading</th>\r\n                                    <th>Table Heading</th>\r\n                                    <th>Table Heading</th>\r\n                                </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                    <td>Table Data</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                    </div>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <h1 class=\"uk-heading-primary\">Primary Heading</h1>\r\n\r\n                    <h1 class=\"uk-margin-small\">H1 heading</h1>\r\n                    <h2 class=\"uk-margin-small\">H2 heading</h2>\r\n                    <h3 class=\"uk-margin-small\">H3 heading</h3>\r\n                    <h4 class=\"uk-margin-small\">H4 heading</h4>\r\n                    <h5 class=\"uk-margin-small\">H5 heading</h5>\r\n                    <h6 class=\"uk-margin-small\">H6 heading</h6>\r\n\r\n                    <h3 class=\"uk-heading-divider\">Heading divider</h3>\r\n                    <h3 class=\"uk-heading-bullet\">Heading bullet</h3>\r\n                    <h3 class=\"uk-heading-line\"><span>Heading line</span></h3>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-medium\">\r\n\r\n            <div class=\"uk-child-width-1-2@s uk-child-width-expand@m uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                    <div class=\"uk-inline\">\r\n                        <canvas width=\"800\" height=\"600\" class=\"test-img\"></canvas>\r\n                        <a class=\"uk-position-absolute uk-transform-center uk-marker uk-icon\" style=\"left: 20%; top: 30%\" href=\"#\" uk-marker=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"marker\"><rect x=\"9\" y=\"4\" width=\"1\" height=\"11\"></rect><rect x=\"4\" y=\"9\" width=\"11\" height=\"1\"></rect></svg></a>\r\n                        <a class=\"uk-position-absolute uk-transform-center uk-marker uk-icon\" style=\"left: 60%; top: 40%\" href=\"#\" uk-marker=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"marker\"><rect x=\"9\" y=\"4\" width=\"1\" height=\"11\"></rect><rect x=\"4\" y=\"9\" width=\"11\" height=\"1\"></rect></svg></a>\r\n                        <a class=\"uk-position-absolute uk-transform-center uk-marker uk-icon\" style=\"left: 80%; top: 70%\" href=\"#\" uk-marker=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"marker\"><rect x=\"9\" y=\"4\" width=\"1\" height=\"11\"></rect><rect x=\"4\" y=\"9\" width=\"11\" height=\"1\"></rect></svg></a>\r\n                    </div>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <div class=\"uk-inline-clip\">\r\n                        <canvas width=\"800\" height=\"600\" class=\"test-img\"></canvas>\r\n                        <div class=\"uk-overlay uk-overlay-default uk-position-bottom\">\r\n                            <p>Default Lorem ipsum dolor sit amet, consectetur.</p>\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <div class=\"uk-inline-clip\">\r\n                        <canvas width=\"800\" height=\"600\" class=\"test-img\"></canvas>\r\n                        <div class=\"uk-overlay uk-overlay-primary uk-position-bottom\">\r\n                            <p>Primary Lorem ipsum dolor sit amet, consectetur.</p>\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <div class=\"uk-inline\">\r\n                        <canvas width=\"800\" height=\"600\" class=\"test-img\"></canvas>\r\n                        <div class=\"uk-position-center\">\r\n                            <span uk-overlay-icon=\"\" class=\"uk-overlay-icon uk-icon\"><svg width=\"40\" height=\"40\" viewBox=\"0 0 40 40\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"overlay-icon\"><rect x=\"19\" y=\"0\" width=\"1\" height=\"40\"></rect><rect x=\"0\" y=\"19\" width=\"40\" height=\"1\"></rect></svg></span>\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-medium\">\r\n\r\n            <div class=\"uk-grid-divider uk-child-width-auto@m uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                    <ul class=\"uk-dotnav\">\r\n                        <li class=\"uk-active\"><a href=\"#\">Item 1</a></li>\r\n                        <li><a href=\"#\">Item 2</a></li>\r\n                        <li><a href=\"#\">Item 3</a></li>\r\n                        <li><a href=\"#\">Item 4</a></li>\r\n                        <li><a href=\"#\">Item 5</a></li>\r\n                        <li><a href=\"#\">Item 6</a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <a href=\"#\" uk-slidenav-previous=\"\" class=\"uk-slidenav-previous uk-icon uk-slidenav\"><svg width=\"14px\" height=\"24px\" viewBox=\"0 0 14 24\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"slidenav-previous\"><polyline fill=\"none\" stroke=\"#000\" stroke-width=\"1.4\" points=\"1.225,23 12.775,12 1.225,1 \"></polyline></svg></a>\r\n                    <a href=\"#\" uk-slidenav-next=\"\" class=\"uk-slidenav-next uk-icon uk-slidenav\"><svg width=\"14px\" height=\"24px\" viewBox=\"0 0 14 24\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"slidenav-next\"><polyline fill=\"none\" stroke=\"#000\" stroke-width=\"1.4\" points=\"12.775,1 1.225,12 12.775,23 \"></polyline></svg></a>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <ul class=\"uk-thumbnav\">\r\n                        <li class=\"uk-active\"><a href=\"#\"><canvas width=\"60\" height=\"40\" class=\"test-img\"></canvas></a></li>\r\n                        <li><a href=\"#\"><canvas width=\"60\" height=\"40\" class=\"test-img\"></canvas></a></li>\r\n                        <li><a href=\"#\"><canvas width=\"60\" height=\"40\" class=\"test-img\"></canvas></a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <div class=\"uk-tooltip uk-tooltip-top-center uk-display-inline-block uk-margin-remove uk-position-relative\">Tooltip</div>\r\n\r\n                </div>\r\n                <div class=\"uk-width-expand@m\">\r\n\r\n                    <progress class=\"uk-progress\" value=\"45\" max=\"100\">45%</progress>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <button type=\"button\" uk-close=\"\" class=\"uk-close uk-icon\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></button>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <a href=\"#\" uk-totop=\"\" class=\"uk-totop uk-icon\"><svg width=\"18\" height=\"10\" viewBox=\"0 0 18 10\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"totop\"><polyline fill=\"none\" stroke=\"#000\" stroke-width=\"1.2\" points=\"1 9 9 1 17 9 \"></polyline></svg></a>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-medium\">\r\n\r\n            <div class=\"uk-grid-divider uk-child-width-expand@m uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                    <ul class=\"uk-subnav uk-subnav-divider\" uk-margin=\"\">\r\n                        <li class=\"uk-active uk-first-column\"><a href=\"#\">Active</a></li>\r\n                        <li><a href=\"#\">Item</a></li>\r\n                        <li class=\"uk-disabled\"><a>Disabled</a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <ul class=\"uk-subnav uk-subnav-pill\" uk-margin=\"\">\r\n                        <li class=\"uk-active uk-first-column\"><a href=\"#\">Active</a></li>\r\n                        <li><a href=\"#\">Item</a></li>\r\n                        <li class=\"uk-disabled\"><a>Disabled</a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <ul uk-tab=\"\" class=\"uk-tab\">\r\n                        <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                        <li><a href=\"#\">Item</a></li>\r\n                        <li class=\"uk-disabled\"><a>Disabled</a></li>\r\n                    </ul>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-medium\">\r\n\r\n            <div class=\"uk-grid-divider uk-child-width-expand@m uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                    <ul class=\"uk-list uk-list-bullet uk-margin-medium\">\r\n                        <li>List item 1</li>\r\n                        <li>List item 2</li>\r\n                        <li>List item 3</li>\r\n                     </ul>\r\n\r\n                    <ul class=\"uk-list uk-list-striped\">\r\n                        <li>List item 1</li>\r\n                        <li>List item 2</li>\r\n                        <li>List item 3</li>\r\n                    </ul>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <ul class=\"uk-list uk-list-divider uk-margin-medium\">\r\n                        <li>List item 1</li>\r\n                        <li>List item 2</li>\r\n                        <li>List item 3</li>\r\n                    </ul>\r\n\r\n                    <dl class=\"uk-description-list uk-description-list-divider\">\r\n                        <dt>Description lists</dt>\r\n                        <dd>A description text</dd>\r\n                        <dt>Description lists</dt>\r\n                        <dd>A description text</dd>\r\n                    </dl>\r\n\r\n                </div>\r\n                <div>\r\n\r\n                    <ul uk-accordion=\"\" class=\"uk-accordion\">\r\n                        <li class=\"uk-open\">\r\n\r\n                            <a class=\"uk-accordion-title\" href=\"#\">Item 1</a>\r\n                            <div class=\"uk-accordion-content\" aria-hidden=\"false\">\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n                            </div>\r\n\r\n                        </li>\r\n                        <li>\r\n\r\n                            <a class=\"uk-accordion-title\" href=\"#\">Item 2</a>\r\n                            <div class=\"uk-accordion-content\" hidden=\"\" aria-hidden=\"true\">\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n                            </div>\r\n\r\n                        </li>\r\n                        <li>\r\n\r\n                            <a class=\"uk-accordion-title\" href=\"#\">Item 3</a>\r\n                            <div class=\"uk-accordion-content\" hidden=\"\" aria-hidden=\"true\">\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\r\n                            </div>\r\n\r\n                        </li>\r\n                    </ul>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <hr class=\"uk-margin-medium\">\r\n\r\n            <div class=\"uk-grid-divider uk-child-width-auto uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-first-column\">\r\n\r\n                        <img width=\"150\" src=\"images/image.svg\" alt=\"\" uk-svg=\"\" hidden=\"true\"><svg class=\" uk-svg\" width=\"150\" viewBox=\"0 0 350 340\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"images/image.svg\">\r\n    <polygon class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" points=\"142.6 273.5 92.4 273.5 64 322 171 322 142.6 273.5\"></polygon>\r\n    <rect class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" x=\"102\" y=\"263\" width=\"31\" height=\"10\"></rect>\r\n    <rect class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" x=\"41\" y=\"248\" width=\"102\" height=\"15\"></rect>\r\n    <polyline class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" points=\"186.8 200.4 277.9 25.7 296.8 12.3\"></polyline>\r\n    <polyline class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" points=\"89.1 190.6 257 1.5 296.8 12.3 336.9 89\"></polyline>\r\n    <circle class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" cx=\"338.4\" cy=\"94.8\" r=\"5.3\"></circle>\r\n    <line class=\"uk-stroke-muted\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" x1=\"338.4\" y1=\"207.4\" x2=\"338.4\" y2=\"100.1\"></line>\r\n    <path class=\"uk-stroke-primary\" fill=\"none\" stroke=\"#0045d4\" stroke-width=\"2\" d=\"M332.5,228.4a8,8,0,0,0-.5,2.1,6.77,6.77,0,1,0,8.2-6.1,2.36,2.36,0,0,1-1.8-2.3h0v-5.2\"></path>\r\n    <circle class=\"uk-stroke-primary\" fill=\"none\" stroke=\"#0045d4\" stroke-width=\"2\" cx=\"338.5\" cy=\"212.7\" r=\"4.2\"></circle>\r\n    <rect class=\"uk-fill-default-background uk-stroke-default\" fill=\"#fff\" stroke=\"#000\" stroke-width=\"2\" x=\"3\" y=\"191\" width=\"140\" height=\"57\"></rect>\r\n    <polygon class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" points=\"193 201 193 242 179 263 143 263 143 197 193 201\"></polygon>\r\n    <polygon class=\"uk-stroke-primary\" fill=\"none\" stroke=\"#0045d4\" stroke-width=\"2\" points=\"185 243 175 258 160 258 160 243 185 243\"></polygon>\r\n    <rect class=\"uk-stroke-primary\" fill=\"none\" stroke=\"#0045d4\" stroke-width=\"2\" x=\"160\" y=\"209\" width=\"26\" height=\"28\"></rect>\r\n    <polyline class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" points=\"220.2 135.2 139.8 135.2 170.8 199.1\"></polyline>\r\n    <rect class=\"uk-fill-muted-background uk-stroke-default\" fill=\"#eee\" stroke=\"#000\" stroke-width=\"2\" x=\"57\" y=\"322\" width=\"120\" height=\"17\"></rect>\r\n    <line class=\"uk-stroke-default\" fill=\"none\" stroke=\"#000\" stroke-width=\"2\" x1=\"257\" y1=\"1.5\" x2=\"334\" y2=\"90.7\"></line>\r\n</svg>\r\n    \r\n                </div>\r\n                <div>\r\n\r\n                    <div class=\"uk-grid-small uk-child-width-auto uk-margin uk-countdown uk-grid\" uk-grid=\"\" js-countdown=\"\">\r\n                        <div class=\"uk-first-column\">\r\n                            <div class=\"uk-countdown-number uk-countdown-days\"><span>0</span><span>6</span></div>\r\n                        </div>\r\n                        <div class=\"uk-countdown-separator\">:</div>\r\n                        <div>\r\n                            <div class=\"uk-countdown-number uk-countdown-hours\"><span>2</span><span>3</span></div>\r\n                        </div>\r\n                        <div class=\"uk-countdown-separator\">:</div>\r\n                        <div>\r\n                            <div class=\"uk-countdown-number uk-countdown-minutes\"><span>5</span><span>4</span></div>\r\n                        </div>\r\n                        <div class=\"uk-countdown-separator\">:</div>\r\n                        <div>\r\n                            <div class=\"uk-countdown-number uk-countdown-seconds\"><span>2</span><span>1</span></div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <script>\r\n\r\n                        UIkit.countdown(\'[js-countdown]\', {date: (new Date(Date.now() + 864e5 * 7)).toISOString()});\r\n\r\n                    </script>\r\n\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-section uk-padding-remove-vertical\">\r\n        <div class=\"uk-child-width-1-2@s uk-child-width-1-4@l uk-grid-collapse uk-grid-match uk-grid\" uk-grid=\"\">\r\n            <div class=\"uk-first-column\">\r\n                <div class=\"uk-tile uk-tile-default\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</div>\r\n            </div>\r\n            <div>\r\n                <div class=\"uk-tile uk-tile-muted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</div>\r\n            </div>\r\n            <div>\r\n                <div class=\"uk-tile uk-tile-primary\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</div>\r\n            </div>\r\n            <div>\r\n                <div class=\"uk-tile uk-tile-secondary\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-section uk-section-default\">\r\n        <div class=\"uk-container\">\r\n\r\n            <div class=\"uk-grid-large uk-flex-middle uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-width-expand@m uk-first-column\">\r\n                    <p class=\"uk-text-large\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>\r\n                </div>\r\n                <div class=\"uk-width-auto@m\">\r\n                    <a class=\"uk-button uk-button-default uk-button-large\" href=\"#\">Button</a>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-section uk-section-muted\">\r\n        <div class=\"uk-container\">\r\n\r\n            <div class=\"uk-grid-large uk-flex-middle uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-width-expand@m uk-first-column\">\r\n                    <p class=\"uk-text-large\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>\r\n                </div>\r\n                <div class=\"uk-width-auto@m\">\r\n                    <a class=\"uk-button uk-button-default uk-button-large\" href=\"#\">Button</a>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-section uk-section-primary\">\r\n        <div class=\"uk-container\">\r\n\r\n            <div class=\"uk-grid-large uk-flex-middle uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-width-expand@m uk-first-column\">\r\n                    <p class=\"uk-text-large\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>\r\n                </div>\r\n                <div class=\"uk-width-auto@m\">\r\n                    <a class=\"uk-button uk-button-default uk-button-large\" href=\"#\">Button</a>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"uk-section uk-section-secondary\">\r\n        <div class=\"uk-container\">\r\n\r\n            <div class=\"uk-grid-large uk-flex-middle uk-grid\" uk-grid=\"\">\r\n                <div class=\"uk-width-expand@m uk-first-column\">\r\n                    <p class=\"uk-text-large\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>\r\n                </div>\r\n                <div class=\"uk-width-auto@m\">\r\n                    <a class=\"uk-button uk-button-default uk-button-large\" href=\"#\">Button</a>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n    <div id=\"modal\" uk-modal=\"\" class=\"uk-modal\">\r\n        <div class=\"uk-modal-dialog\">\r\n            <button class=\"uk-modal-close-default uk-close uk-icon\" type=\"button\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></button>\r\n            <div class=\"uk-modal-header\">\r\n                <h2 class=\"uk-modal-title\">Headline</h2>\r\n            </div>\r\n            <div class=\"uk-modal-body\">\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n            </div>\r\n            <div class=\"uk-modal-footer uk-text-right\">\r\n                <button class=\"uk-button uk-button-default uk-modal-close\" type=\"button\">Cancel</button>\r\n                <button class=\"uk-button uk-button-primary\" type=\"button\">Save</button>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div id=\"modal-search\" class=\"uk-modal-full uk-modal\" uk-modal=\"\">\r\n        <div class=\"uk-modal-dialog uk-flex uk-flex-center uk-flex-middle\" uk-height-viewport=\"\" style=\"min-height: calc(100vh);\">\r\n\r\n            <button class=\"uk-modal-close-full uk-close-large uk-close uk-icon\" type=\"button\" uk-close=\"\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-large\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.4\" x1=\"1\" y1=\"1\" x2=\"19\" y2=\"19\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.4\" x1=\"19\" y1=\"1\" x2=\"1\" y2=\"19\"></line></svg></button>\r\n\r\n            <div>\r\n\r\n                <ul class=\"uk-nav-primary uk-nav-center uk-nav\" uk-nav=\"\">\r\n                    <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n                    <li><a href=\"#\">Item</a></li>\r\n                    <li><a href=\"#\">Item</a></li>\r\n                    <li><a href=\"#\">Item</a></li>\r\n                </ul>\r\n\r\n                <div class=\"uk-margin\">\r\n                    <form class=\"uk-search uk-search-large\">\r\n                        <input class=\"uk-search-input uk-text-center\" type=\"search\" placeholder=\"Search...\">\r\n                    </form>\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n\r\n<div id=\"offcanvas\" uk-offcanvas=\"flip: true; overlay: true\" class=\"uk-offcanvas\">\r\n    <div class=\"uk-offcanvas-bar\">\r\n\r\n        <button class=\"uk-offcanvas-close uk-close uk-icon\" type=\"button\" uk-close=\"\"><svg width=\"14\" height=\"14\" viewBox=\"0 0 14 14\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"close-icon\"><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"1\" y1=\"1\" x2=\"13\" y2=\"13\"></line><line fill=\"none\" stroke=\"#000\" stroke-width=\"1.1\" x1=\"13\" y1=\"1\" x2=\"1\" y2=\"13\"></line></svg></button>\r\n\r\n        <ul class=\"uk-nav uk-nav-default\">\r\n            <li class=\"uk-active\"><a href=\"#\">Active</a></li>\r\n            <li class=\"uk-parent\">\r\n                <a href=\"#\">Parent</a>\r\n                <ul class=\"uk-nav-sub\">\r\n                    <li><a href=\"#\">Sub item</a></li>\r\n                    <li><a href=\"#\">Sub item</a></li>\r\n                </ul>\r\n            </li>\r\n            <li class=\"uk-nav-header\">Header</li>\r\n            <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: table\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"table\"><rect x=\"1\" y=\"3\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"7\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"11\" width=\"18\" height=\"1\"></rect><rect x=\"1\" y=\"15\" width=\"18\" height=\"1\"></rect></svg></span> Item</a></li>\r\n            <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: thumbnails\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"thumbnails\"><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"3.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"11.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect><rect fill=\"none\" stroke=\"#000\" x=\"3.5\" y=\"11.5\" width=\"5\" height=\"5\"></rect></svg></span> Item</a></li>\r\n            <li class=\"uk-nav-divider\"></li>\r\n            <li><a href=\"#\"><span class=\"uk-margin-small-right uk-icon\" uk-icon=\"icon: trash\"><svg width=\"20\" height=\"20\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" data-svg=\"trash\"><polyline fill=\"none\" stroke=\"#000\" points=\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\"></polyline><polyline fill=\"none\" stroke=\"#000\" points=\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\"></polyline><rect x=\"8\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"11\" y=\"7\" width=\"1\" height=\"9\"></rect><rect x=\"2\" y=\"3\" width=\"16\" height=\"1\"></rect></svg></span> Item</a></li>\r\n        </ul>\r\n\r\n        <h3>Title</h3>\r\n\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n    </div>\r\n</div>\r\n<div class=\"yo-inspect\" style=\"top: 4554px; left: 438px;\" hidden=\"\">section</div></body>', '', 1, 2, '2020-05-02 12:01:48', 234, '', '2020-05-02 12:01:48', 0, 0, '0000-00-00 00:00:00', '2020-05-02 12:01:48', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{}', 1, 0, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `donya_contentitem_tag_map`
--

CREATE TABLE `donya_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `donya_content_frontpage`
--

CREATE TABLE `donya_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_content_rating`
--

CREATE TABLE `donya_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_content_types`
--

CREATE TABLE `donya_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_content_types`
--

INSERT INTO `donya_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `donya_core_log_searches`
--

CREATE TABLE `donya_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_addresses`
--

CREATE TABLE `donya_eshop_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `address_1` varchar(128) DEFAULT NULL,
  `address_2` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `eu_vat_number` text DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_addresses`
--

INSERT INTO `donya_eshop_addresses` (`id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `company`, `company_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `eu_vat_number`, `created_date`, `modified_date`) VALUES
(1, 235, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 101, 1538, NULL, '2020-05-02 19:14:40', '2020-05-19 22:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_attributedetails`
--

CREATE TABLE `donya_eshop_attributedetails` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_name` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_attributegroupdetails`
--

CREATE TABLE `donya_eshop_attributegroupdetails` (
  `id` int(11) NOT NULL,
  `attributegroup_id` int(11) DEFAULT NULL,
  `attributegroup_name` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_attributegroups`
--

CREATE TABLE `donya_eshop_attributegroups` (
  `id` int(11) NOT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_attributes`
--

CREATE TABLE `donya_eshop_attributes` (
  `id` int(11) NOT NULL,
  `attributegroup_id` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_carts`
--

CREATE TABLE `donya_eshop_carts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cart_data` varbinary(50000) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_categories`
--

CREATE TABLE `donya_eshop_categories` (
  `id` int(11) NOT NULL,
  `category_parent_id` int(11) DEFAULT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_layout` varchar(32) NOT NULL DEFAULT 'default',
  `category_customergroups` text DEFAULT NULL,
  `products_per_page` int(11) DEFAULT NULL,
  `products_per_row` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_categories`
--

INSERT INTO `donya_eshop_categories` (`id`, `category_parent_id`, `category_image`, `category_layout`, `category_customergroups`, `products_per_page`, `products_per_row`, `published`, `ordering`, `hits`, `params`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`, `level`) VALUES
(1, 0, '1000012827.jpg', 'default', '', 0, 0, 1, 1, 17, '{\"default_sorting\":\"\"}', '2020-05-02 12:25:09', 234, '2020-05-02 12:25:09', 234, 0, '0000-00-00 00:00:00', 1),
(2, 0, '1000012825.jpg', 'default', '', 0, 0, 1, 2, 7, '{\"default_sorting\":\"\"}', '2020-05-02 12:25:26', 234, '2020-05-02 12:25:26', 234, 0, '0000-00-00 00:00:00', 1),
(3, 0, '3790.jpg', 'default', '', 0, 0, 1, 3, 2, '{\"default_sorting\":\"\"}', '2020-06-28 08:31:56', 234, '2020-06-28 08:48:53', 234, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_categorydetails`
--

CREATE TABLE `donya_eshop_categorydetails` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_alias` varchar(255) DEFAULT NULL,
  `category_desc` text DEFAULT NULL,
  `category_page_title` varchar(255) DEFAULT NULL,
  `category_page_heading` varchar(255) DEFAULT NULL,
  `category_alt_image` varchar(255) DEFAULT NULL,
  `meta_key` varchar(400) DEFAULT NULL,
  `meta_desc` varchar(400) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_categorydetails`
--

INSERT INTO `donya_eshop_categorydetails` (`id`, `category_id`, `category_name`, `category_alias`, `category_desc`, `category_page_title`, `category_page_heading`, `category_alt_image`, `meta_key`, `meta_desc`, `language`) VALUES
(1, 1, 'گروه یک محصولات', 'g1', '', '', '', '', '', '', 'fa-IR'),
(2, 2, 'گروه دو محصولات', 'g2', '', '', '', '', '', '', 'fa-IR'),
(3, 3, 'pizza', 'pizza', '', '', '', '', '', '', 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_configs`
--

CREATE TABLE `donya_eshop_configs` (
  `id` int(11) NOT NULL,
  `config_key` varchar(50) DEFAULT NULL,
  `config_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_configs`
--

INSERT INTO `donya_eshop_configs` (`id`, `config_key`, `config_value`) VALUES
(1, 'download_id', ''),
(2, 'store_name', 'فروشگاه ایشاپ'),
(3, 'store_owner', 'حسین دنیادیده'),
(4, 'address', 'تفلیس'),
(5, 'email', 'donyadideh@outlook.com'),
(6, 'telephone', '0995597905155'),
(7, 'fax', '0995597905155'),
(8, 'introduction_display_on', 'front_page'),
(9, 'debug_mode', '0'),
(10, 'country_id', '101'),
(11, 'zone_id', '1538'),
(12, 'postcode', '1234567890'),
(13, 'default_currency_code', 'USD'),
(14, 'auto_update_currency', '0'),
(15, 'currency_convert_api_key', 'd3d91dd1c0af62db625b'),
(16, 'show_eshop_update', '0'),
(17, 'length_id', '1'),
(18, 'weight_id', '1'),
(19, 'catalog_limit', '15'),
(20, 'items_per_row', '3'),
(21, 'start_quantity_number', '1'),
(22, 'quantity_step', '1'),
(23, 'shop_offline', '0'),
(24, 'catalog_mode', '0'),
(25, 'quote_cart_mode', '1'),
(26, 'add_category_path', '1'),
(27, 'default_menu_item', '103'),
(28, 'product_sku_validation', '0'),
(29, 'product_count', '1'),
(30, 'rich_snippets', '1'),
(31, 'allow_reviews', '0'),
(32, 'enable_reviews_captcha', '0'),
(33, 'enable_register_account_captcha', '0'),
(34, 'enable_checkout_captcha', '0'),
(35, 'enable_quote_captcha', '0'),
(36, 'allow_notify', '1'),
(37, 'allow_wishlist', '1'),
(38, 'allow_compare', '1'),
(39, 'allow_ask_question', '1'),
(40, 'allow_email_to_a_friend', '1'),
(41, 'allow_download_pdf_product', '0'),
(42, 'dynamic_price', '1'),
(43, 'dynamic_info', '1'),
(44, 'display_price', 'public'),
(45, 'display_option_price', 'only_option_price'),
(46, 'display_option_price_with_tax', '1'),
(47, 'product_custom_fields', '0'),
(48, 'assign_same_options', '0'),
(49, 'tax_class', '0'),
(50, 'tax', '0'),
(51, 'display_ex_tax', '0'),
(52, 'include_tax_anywhere', '0'),
(53, 'enable_eu_vat_rules', '0'),
(54, 'eu_vat_rules_based_on', 'payment'),
(55, 'tax_default', 'shipping'),
(56, 'customergroup_id', '1'),
(57, 'customer_group_display', '1'),
(58, 'account_terms', '0'),
(59, 'display_privacy_policy', 'payment_method_step'),
(60, 'checkout_terms', '0'),
(61, 'show_privacy_policy_checkbox', '0'),
(62, 'privacy_policy_article', '0'),
(63, 'acymailing_integration', '0'),
(64, 'mailchimp_integration', '0'),
(65, 'start_order_id', '0'),
(66, 'min_sub_total', '0'),
(67, 'min_quantity', '0'),
(68, 'store_cart', '0'),
(69, 'only_free_shipping', '0'),
(70, 'one_add_to_cart_button', '0'),
(71, 'active_https', '0'),
(72, 'allow_re_order', '0'),
(73, 'allow_coupon', '1'),
(74, 'allow_voucher', '0'),
(75, 'cart_weight', '1'),
(76, 'checkout_weight', '0'),
(77, 'require_shipping', '1'),
(78, 'require_shipping_address', '1'),
(79, 'shipping_estimate', '1'),
(80, 'enable_existing_addresses', '1'),
(81, 'checkout_type', 'guest_and_registered'),
(82, 'order_edit', ''),
(83, 'order_status_id', '8'),
(84, 'complete_status_id', '4'),
(85, 'canceled_status_id', '1'),
(86, 'delivery_date', '0'),
(87, 'completed_url', ''),
(88, 'continue_shopping_url', ''),
(89, 'idevaffiliate_integration', '0'),
(90, 'idevaffiliate_path', ''),
(91, 'conversion_tracking_code', ''),
(92, 'api_key_mailchimp', ''),
(93, 'stock_manage', '1'),
(94, 'stock_display', '1'),
(95, 'stock_warning', '0'),
(96, 'stock_checkout', '0'),
(97, 'stock_status_id', '2'),
(98, 'hide_out_of_stock_products', '0'),
(99, 'threshold', '0'),
(100, 'file_extensions_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),
(101, 'file_mime_types_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),
(102, 'enable_checkout_donate', '0'),
(103, 'donate_amounts', ''),
(104, 'donate_explanations', ''),
(105, 'enable_checkout_discount', '0'),
(106, 'checkout_discount_type', 'total'),
(107, 'total_range', ''),
(108, 'quantity_range', ''),
(109, 'discount_range', ''),
(110, 'ga_tracking_id', ''),
(111, 'ga_js_type', 'ga.js'),
(112, 'variation_type', 'none'),
(113, 'view_image', 'zoom'),
(114, 'resized_image_background', 'FFFFFF'),
(115, 'product_image_rollover', '0'),
(116, 'image_category_width', '500'),
(117, 'image_category_height', '333'),
(118, 'category_image_size_function', 'cropsizeImage'),
(119, 'image_manufacturer_width', '200'),
(120, 'image_manufacturer_height', '200'),
(121, 'manufacturer_image_size_function', 'cropsizeImage'),
(122, 'image_thumb_width', '500'),
(123, 'image_thumb_height', '500'),
(124, 'thumb_image_size_function', 'cropsizeImage'),
(125, 'image_popup_width', '1000'),
(126, 'image_popup_height', '1000'),
(127, 'popup_image_size_function', 'cropsizeImage'),
(128, 'image_list_width', '300'),
(129, 'image_list_height', '300'),
(130, 'list_image_size_function', 'cropsizeImage'),
(131, 'image_additional_width', '100'),
(132, 'image_additional_height', '100'),
(133, 'additional_image_size_function', 'cropsizeImage'),
(134, 'image_related_width', '300'),
(135, 'image_related_height', '300'),
(136, 'related_image_size_function', 'cropsizeImage'),
(137, 'image_compare_width', '100'),
(138, 'image_compare_height', '100'),
(139, 'compare_image_size_function', 'cropsizeImage'),
(140, 'image_wishlist_width', '50'),
(141, 'image_wishlist_height', '50'),
(142, 'wishlist_image_size_function', 'cropsizeImage'),
(143, 'image_cart_width', '50'),
(144, 'image_cart_height', '50'),
(145, 'cart_image_size_function', 'cropsizeImage'),
(146, 'image_label_width', '50'),
(147, 'image_label_height', '50'),
(148, 'label_image_size_function', 'cropsizeImage'),
(149, 'image_option_width', '100'),
(150, 'image_option_height', '100'),
(151, 'option_image_size_function', 'cropsizeImage'),
(152, 'recreate_watermark_images', '0'),
(153, 'product_use_image_watermarks', '0'),
(154, 'category_use_image_watermarks', '0'),
(155, 'manufacture_use_image_watermarks', '0'),
(156, 'images_opacity', ''),
(157, 'watermark_position', '1'),
(158, 'watermark_type', '1'),
(159, 'watermark_font', 'arial.ttf'),
(160, 'watermark_fontsize', '10'),
(161, 'watermark_color', '245,43,16'),
(162, 'custom_text', ''),
(163, 'theme', 'donyadideh'),
(164, 'products_filter_layout', 'default'),
(165, 'cart_popout', 'popout'),
(166, 'load_bootstrap_css', '0'),
(167, 'twitter_bootstrap_version', '2'),
(168, 'date_format', 'd M Y'),
(169, 'load_bootstrap_js', '1'),
(170, 'show_categories_nav', '0'),
(171, 'show_products_nav', '0'),
(172, 'shipping_address_format', '<p>[SHIPPING_FIRSTNAME] [SHIPPING_LASTNAME]<br /> [SHIPPING_ADDRESS_1], [SHIPPING_ADDRESS_2]<br /> [SHIPPING_CITY], [SHIPPING_POSTCODE] [SHIPPING_ZONE_NAME]<br /> [SHIPPING_EMAIL]<br /> [SHIPPING_TELEPHONE]<br /> [SHIPPING_FAX]</p>'),
(173, 'payment_address_format', '<p>[PAYMENT_FIRSTNAME] [PAYMENT_LASTNAME]<br /> [PAYMENT_ADDRESS_1], [PAYMENT_ADDRESS_2]<br /> [PAYMENT_CITY], [PAYMENT_POSTCODE] [PAYMENT_ZONE_NAME]<br /> [PAYMENT_EMAIL]<br /> [PAYMENT_TELEPHONE]<br /> [PAYMENT_FAX]</p>'),
(174, 'grid_ratio_image_info', '4:8'),
(175, 'show_manufacturer', '1'),
(176, 'show_sku', '1'),
(177, 'show_availability', '1'),
(178, 'show_product_weight', '1'),
(179, 'show_product_dimensions', '1'),
(180, 'show_product_tags', '1'),
(181, 'show_product_attachments', '1'),
(182, 'show_specification', '1'),
(183, 'show_related_products', '1'),
(184, 'show_quantity_box_in_product_page', '1'),
(185, 'show_category_image', '0'),
(186, 'show_category_desc', '0'),
(187, 'show_products_in_all_levels', '0'),
(188, 'show_sub_categories', '1'),
(189, 'sub_categories_layout', 'list_with_image'),
(190, 'default_products_layout', 'list'),
(191, 'show_quantity_box', '1'),
(192, 'table_show_image', '1'),
(193, 'table_show_short_description', '1'),
(194, 'table_show_category', '1'),
(195, 'table_show_manufacturer', '0'),
(196, 'table_show_price', '1'),
(197, 'table_show_availability', '1'),
(198, 'table_show_quantity_box', '1'),
(199, 'table_show_actions', '1'),
(200, 'compare_image', '1'),
(201, 'compare_price', '1'),
(202, 'compare_sku', '1'),
(203, 'compare_manufacturer', '1'),
(204, 'compare_availability', '1'),
(205, 'compare_rating', '1'),
(206, 'compare_short_desc', '1'),
(207, 'compare_desc', '1'),
(208, 'compare_weight', '1'),
(209, 'compare_dimensions', '1'),
(210, 'compare_attributes', '1'),
(211, 'customer_manage_account', '1'),
(212, 'customer_manage_order', '1'),
(213, 'customer_manage_download', '0'),
(214, 'customer_manage_address', '1'),
(215, 'invoice_enable', '0'),
(216, 'always_generate_invoice', '0'),
(217, 'invoice_start_number', '1'),
(218, 'reset_invoice_number', '1'),
(219, 'invoice_prefix', 'INV[YEAR]'),
(220, 'invoice_number_length', '5'),
(221, 'send_invoice_to_customer', '0'),
(222, 'send_invoice_to_admin', '0'),
(223, 'pdf_font', 'helvetica'),
(224, 'pdf_image_path', 'absolutely'),
(225, 'pdf_font_size', '8'),
(226, 'default_sorting', 'a.ordering-ASC'),
(227, 'sort_options', 'b.product_name-ASC,b.product_name-DESC,a.product_price-ASC,a.product_price-DESC,product_rates-DESC,product_reviews-DESC,a.id-DESC'),
(228, 'category_default_sorting', 'name-asc'),
(229, 'manufacturer_default_sorting', 'name-asc'),
(230, 'option_default_sorting', 'name-asc'),
(231, 'option_value_default_sorting', 'name-asc'),
(232, 'attribute_default_sorting', 'name-asc'),
(233, 'social_enable', '0'),
(234, 'app_id', ''),
(235, 'button_font', 'arial'),
(236, 'button_theme', 'light'),
(237, 'button_language', 'en_US'),
(238, 'show_facebook_button', '0'),
(239, 'button_layout', 'button_count'),
(240, 'show_faces', '0'),
(241, 'button_width', '450'),
(242, 'show_facebook_comment', '0'),
(243, 'num_posts', '10'),
(244, 'comment_width', '600'),
(245, 'show_twitter_button', '0'),
(246, 'show_pinit_button', '0'),
(247, 'show_google_button', '0'),
(248, 'show_linkedin_button', '0'),
(249, 'linkedin_layout', 'right'),
(250, 'send_from', 'global'),
(251, 'order_alert_mail', '1'),
(252, 'order_alert_mail_admin', '1'),
(253, 'order_alert_mail_manufacturer', '0'),
(254, 'order_alert_mail_customer', '1'),
(255, 'alert_emails', ''),
(256, 'quote_alert_mail', '1'),
(257, 'quote_alert_mail_admin', '1'),
(258, 'quote_alert_mail_customer', '1'),
(259, 'quote_alert_emails', ''),
(260, 'product_alert_ask_question', '1'),
(261, 'product_alert_review', '0'),
(262, 'product_alert_emails', ''),
(263, 'option', 'com_eshop'),
(264, 'task', 'save');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_countries`
--

CREATE TABLE `donya_eshop_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `iso_code_2` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `postcode_required` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_countries`
--

INSERT INTO `donya_eshop_countries` (`id`, `country_name`, `iso_code_2`, `iso_code_3`, `postcode_required`, `published`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, 1),
(2, 'Albania', 'AL', 'ALB', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', 0, 1),
(5, 'Andorra', 'AD', 'AND', 0, 1),
(6, 'Angola', 'AO', 'AGO', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 0, 1),
(10, 'Argentina', 'AR', 'ARG', 0, 1),
(11, 'Armenia', 'AM', 'ARM', 0, 1),
(12, 'Aruba', 'AW', 'ABW', 0, 1),
(13, 'Australia', 'AU', 'AUS', 0, 1),
(14, 'Austria', 'AT', 'AUT', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', 0, 1),
(19, 'Barbados', 'BB', 'BRB', 0, 1),
(20, 'Belarus', 'BY', 'BLR', 0, 1),
(21, 'Belgium', 'BE', 'BEL', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', 0, 1),
(23, 'Benin', 'BJ', 'BEN', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', 0, 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 0, 1),
(28, 'Botswana', 'BW', 'BWA', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', 0, 1),
(30, 'Brazil', 'BR', 'BRA', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', 0, 1),
(35, 'Burundi', 'BI', 'BDI', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', 0, 1),
(38, 'Canada', 'CA', 'CAN', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', 0, 1),
(42, 'Chad', 'TD', 'TCD', 0, 1),
(43, 'Chile', 'CL', 'CHL', 0, 1),
(44, 'China', 'CN', 'CHN', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 0, 1),
(47, 'Colombia', 'CO', 'COL', 0, 1),
(48, 'Comoros', 'KM', 'COM', 0, 1),
(49, 'Congo', 'CG', 'COG', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 0, 1),
(53, 'Croatia', 'HR', 'HRV', 0, 1),
(54, 'Cuba', 'CU', 'CUB', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', 0, 1),
(57, 'Denmark', 'DK', 'DNK', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', 0, 1),
(59, 'Dominica', 'DM', 'DMA', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', 0, 1),
(61, 'East Timor', 'TP', 'TMP', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', 0, 1),
(63, 'Egypt', 'EG', 'EGY', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', 0, 1),
(67, 'Estonia', 'EE', 'EST', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', 0, 1),
(72, 'Finland', 'FI', 'FIN', 0, 1),
(73, 'France', 'FR', 'FRA', 0, 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 0, 1),
(75, 'French Guiana', 'GF', 'GUF', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', 0, 1),
(78, 'Gabon', 'GA', 'GAB', 0, 1),
(79, 'Gambia', 'GM', 'GMB', 0, 1),
(80, 'Georgia', 'GE', 'GEO', 0, 1),
(81, 'Germany', 'DE', 'DEU', 0, 1),
(82, 'Ghana', 'GH', 'GHA', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', 0, 1),
(84, 'Greece', 'GR', 'GRC', 0, 1),
(85, 'Greenland', 'GL', 'GRL', 0, 1),
(86, 'Grenada', 'GD', 'GRD', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', 0, 1),
(88, 'Guam', 'GU', 'GUM', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', 0, 1),
(90, 'Guinea', 'GN', 'GIN', 0, 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 0, 1),
(92, 'Guyana', 'GY', 'GUY', 0, 1),
(93, 'Haiti', 'HT', 'HTI', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 0, 1),
(95, 'Honduras', 'HN', 'HND', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', 0, 1),
(97, 'Hungary', 'HU', 'HUN', 0, 1),
(98, 'Iceland', 'IS', 'ISL', 0, 1),
(99, 'India', 'IN', 'IND', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', 0, 1),
(103, 'Ireland', 'IE', 'IRL', 0, 1),
(104, 'Israel', 'IL', 'ISR', 0, 1),
(105, 'Italy', 'IT', 'ITA', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', 0, 1),
(107, 'Japan', 'JP', 'JPN', 0, 1),
(108, 'Jordan', 'JO', 'JOR', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 0, 1),
(110, 'Kenya', 'KE', 'KEN', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', 0, 1),
(112, 'North Korea', 'KP', 'PRK', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 0, 1),
(117, 'Latvia', 'LV', 'LVA', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', 0, 1),
(120, 'Liberia', 'LR', 'LBR', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', 0, 1),
(125, 'Macau', 'MO', 'MAC', 0, 1),
(126, 'FYROM', 'MK', 'MKD', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', 0, 1),
(128, 'Malawi', 'MW', 'MWI', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', 0, 1),
(130, 'Maldives', 'MV', 'MDV', 0, 1),
(131, 'Mali', 'ML', 'MLI', 0, 1),
(132, 'Malta', 'MT', 'MLT', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', 0, 1),
(138, 'Mexico', 'MX', 'MEX', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 0, 1),
(141, 'Monaco', 'MC', 'MCO', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', 0, 1),
(144, 'Morocco', 'MA', 'MAR', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', 0, 1),
(147, 'Namibia', 'NA', 'NAM', 0, 1),
(148, 'Nauru', 'NR', 'NRU', 0, 1),
(149, 'Nepal', 'NP', 'NPL', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', 0, 1),
(155, 'Niger', 'NE', 'NER', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', 0, 1),
(157, 'Niue', 'NU', 'NIU', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 0, 1),
(160, 'Norway', 'NO', 'NOR', 0, 1),
(161, 'Oman', 'OM', 'OMN', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', 0, 1),
(163, 'Palau', 'PW', 'PLW', 0, 1),
(164, 'Panama', 'PA', 'PAN', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', 0, 1),
(167, 'Peru', 'PE', 'PER', 0, 1),
(168, 'Philippines', 'PH', 'PHL', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', 0, 1),
(170, 'Poland', 'PL', 'POL', 0, 1),
(171, 'Portugal', 'PT', 'PRT', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', 0, 1),
(173, 'Qatar', 'QA', 'QAT', 0, 1),
(174, 'Reunion', 'RE', 'REU', 0, 1),
(175, 'Romania', 'RO', 'ROM', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 0, 1),
(181, 'Samoa', 'WS', 'WSM', 0, 1),
(182, 'San Marino', 'SM', 'SMR', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 0, 1),
(185, 'Senegal', 'SN', 'SEN', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', 0, 1),
(188, 'Singapore', 'SG', 'SGP', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', 0, 1),
(192, 'Somalia', 'SO', 'SOM', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', 0, 1),
(195, 'Spain', 'ES', 'ESP', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 0, 1),
(199, 'Sudan', 'SD', 'SDN', 0, 1),
(200, 'Suriname', 'SR', 'SUR', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', 0, 1),
(203, 'Sweden', 'SE', 'SWE', 0, 1),
(204, 'Switzerland', 'CH', 'CHE', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 0, 1),
(209, 'Thailand', 'TH', 'THA', 0, 1),
(210, 'Togo', 'TG', 'TGO', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', 0, 1),
(212, 'Tonga', 'TO', 'TON', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', 0, 1),
(215, 'Turkey', 'TR', 'TUR', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', 0, 1),
(219, 'Uganda', 'UG', 'UGA', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', 0, 1),
(223, 'United States', 'US', 'USA', 1, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 0, 1),
(225, 'Uruguay', 'UY', 'URY', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', 0, 1),
(235, 'Yemen', 'YE', 'YEM', 0, 1),
(236, 'Yugoslavia', 'YU', 'YUG', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_couponcategories`
--

CREATE TABLE `donya_eshop_couponcategories` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_couponcustomergroups`
--

CREATE TABLE `donya_eshop_couponcustomergroups` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_couponhistory`
--

CREATE TABLE `donya_eshop_couponhistory` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(15,8) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_couponproducts`
--

CREATE TABLE `donya_eshop_couponproducts` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_coupons`
--

CREATE TABLE `donya_eshop_coupons` (
  `id` int(11) NOT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(32) DEFAULT NULL,
  `coupon_type` char(1) DEFAULT NULL,
  `coupon_value` decimal(15,8) DEFAULT NULL,
  `coupon_min_total` decimal(15,8) DEFAULT NULL,
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_end_date` datetime DEFAULT NULL,
  `coupon_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_for_free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_times` int(11) DEFAULT NULL,
  `coupon_used` decimal(15,8) DEFAULT NULL,
  `coupon_per_customer` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_currencies`
--

CREATE TABLE `donya_eshop_currencies` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `left_symbol` varchar(12) DEFAULT NULL,
  `right_symbol` varchar(12) DEFAULT NULL,
  `decimal_symbol` varchar(1) DEFAULT NULL,
  `decimal_place` varchar(1) DEFAULT NULL,
  `thousands_separator` varchar(1) DEFAULT NULL,
  `exchanged_value` float(15,8) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_currencies`
--

INSERT INTO `donya_eshop_currencies` (`id`, `currency_code`, `currency_name`, `left_symbol`, `right_symbol`, `decimal_symbol`, `decimal_place`, `thousands_separator`, `exchanged_value`, `published`, `modified_date`) VALUES
(1, 'USD', 'dollar', '', ' $', '.', '0', ',', 1.00000000, 1, '2020-06-28 09:12:47'),
(2, 'EUR', 'Euro', '', '‎€', '.', '2', ',', 0.77840000, 1, '2013-05-20 06:12:33'),
(3, 'GBP', 'Pound Sterling', '£', '', '.', '2', ',', 0.65780002, 0, '2013-05-20 06:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_customergroupdetails`
--

CREATE TABLE `donya_eshop_customergroupdetails` (
  `id` int(11) NOT NULL,
  `customergroup_id` int(11) DEFAULT NULL,
  `customergroup_name` varchar(100) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_customergroupdetails`
--

INSERT INTO `donya_eshop_customergroupdetails` (`id`, `customergroup_id`, `customergroup_name`, `language`) VALUES
(1, 1, 'Default', 'en-GB'),
(2, 1, 'Default', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_customergroups`
--

CREATE TABLE `donya_eshop_customergroups` (
  `id` int(11) NOT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_customergroups`
--

INSERT INTO `donya_eshop_customergroups` (`id`, `published`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_customers`
--

CREATE TABLE `donya_eshop_customers` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_customers`
--

INSERT INTO `donya_eshop_customers` (`id`, `customer_id`, `customergroup_id`, `address_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `published`, `created_date`, `modified_date`) VALUES
(1, 235, 1, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 1, '2020-05-02 19:14:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_discountelements`
--

CREATE TABLE `donya_eshop_discountelements` (
  `id` int(11) NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_discounts`
--

CREATE TABLE `donya_eshop_discounts` (
  `id` int(11) NOT NULL,
  `discount_type` char(1) DEFAULT NULL,
  `discount_value` decimal(15,8) DEFAULT NULL,
  `discount_customergroups` text DEFAULT NULL,
  `discount_start_date` datetime DEFAULT NULL,
  `discount_end_date` datetime DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_downloaddetails`
--

CREATE TABLE `donya_eshop_downloaddetails` (
  `id` int(11) NOT NULL,
  `download_id` int(11) DEFAULT NULL,
  `download_name` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_downloaddetails`
--

INSERT INTO `donya_eshop_downloaddetails` (`id`, `download_id`, `download_name`, `language`) VALUES
(1, 1, 'کاتالوگ', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_downloads`
--

CREATE TABLE `donya_eshop_downloads` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `total_downloads_allowed` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_downloads`
--

INSERT INTO `donya_eshop_downloads` (`id`, `filename`, `total_downloads_allowed`, `created_date`) VALUES
(1, 'Genesis_US G90_2020.pdf', 50, '2020-05-19 22:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_fielddetails`
--

CREATE TABLE `donya_eshop_fielddetails` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `place_holder` varchar(255) DEFAULT NULL,
  `language` varchar(10) NOT NULL,
  `default_values` text DEFAULT NULL,
  `values` text DEFAULT NULL,
  `validation_error_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_fielddetails`
--

INSERT INTO `donya_eshop_fielddetails` (`id`, `field_id`, `title`, `description`, `place_holder`, `language`, `default_values`, `values`, `validation_error_message`) VALUES
(1, 1, 'ESHOP_FIRST_NAME', '', NULL, 'en-GB', '', '', NULL),
(2, 2, 'ESHOP_LAST_NAME', '', NULL, 'en-GB', '', '', NULL),
(3, 3, 'ESHOP_EMAIL', '', NULL, 'en-GB', '', '', NULL),
(4, 4, 'ESHOP_TELEPHONE', '', NULL, 'en-GB', '', '', NULL),
(5, 5, 'ESHOP_FAX', '', NULL, 'en-GB', '', '', NULL),
(6, 6, 'ESHOP_COMPANY', '', NULL, 'en-GB', '', '', NULL),
(7, 7, 'ESHOP_COMPANY_ID', '', NULL, 'en-GB', '', '', NULL),
(8, 8, 'ESHOP_ADDRESS_1', '', NULL, 'en-GB', '', '', ''),
(9, 9, 'ESHOP_ADDRESS_2', '', NULL, 'en-GB', '', '', NULL),
(10, 10, 'ESHOP_CITY', '', NULL, 'en-GB', '', '', NULL),
(11, 11, 'ESHOP_POST_CODE', '', NULL, 'en-GB', '', '', NULL),
(12, 12, 'ESHOP_COUNTRY', '', NULL, 'en-GB', '', '', NULL),
(13, 13, 'ESHOP_REGION_STATE', '', NULL, 'en-GB', '', '', NULL),
(14, 14, 'ESHOP_EU_VAT_NUMBER', '', NULL, 'en-GB', '', '', NULL),
(15, 1, 'ESHOP_FIRST_NAME', '', NULL, 'fa-IR', '', '', NULL),
(16, 2, 'ESHOP_LAST_NAME', '', NULL, 'fa-IR', '', '', NULL),
(17, 3, 'ESHOP_EMAIL', '', NULL, 'fa-IR', '', '', NULL),
(18, 4, 'ESHOP_TELEPHONE', '', NULL, 'fa-IR', '', '', NULL),
(19, 5, 'ESHOP_FAX', '', NULL, 'fa-IR', '', '', NULL),
(20, 6, 'ESHOP_COMPANY', '', NULL, 'fa-IR', '', '', NULL),
(21, 7, 'ESHOP_COMPANY_ID', '', NULL, 'fa-IR', '', '', NULL),
(22, 8, 'ESHOP_ADDRESS_1', '', NULL, 'fa-IR', '', '', ''),
(23, 9, 'ESHOP_ADDRESS_2', '', NULL, 'fa-IR', '', '', NULL),
(24, 10, 'ESHOP_CITY', '', NULL, 'fa-IR', '', '', NULL),
(25, 11, 'ESHOP_POST_CODE', '', NULL, 'fa-IR', '', '', NULL),
(26, 12, 'ESHOP_COUNTRY', '', NULL, 'fa-IR', '', '', NULL),
(27, 13, 'ESHOP_REGION_STATE', '', NULL, 'fa-IR', '', '', NULL),
(28, 14, 'ESHOP_EU_VAT_NUMBER', '', NULL, 'fa-IR', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_fields`
--

CREATE TABLE `donya_eshop_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fieldtype` varchar(50) DEFAULT NULL,
  `address_type` varchar(10) DEFAULT NULL,
  `validation_rule` varchar(255) DEFAULT NULL,
  `validation_rules_string` varchar(255) DEFAULT NULL,
  `size` tinyint(3) UNSIGNED DEFAULT NULL,
  `max_length` tinyint(3) UNSIGNED DEFAULT NULL,
  `rows` tinyint(3) UNSIGNED DEFAULT NULL,
  `cols` tinyint(3) UNSIGNED DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `extra_attributes` varchar(255) DEFAULT NULL,
  `access` tinyint(3) UNSIGNED DEFAULT NULL,
  `multiple` tinyint(3) UNSIGNED DEFAULT NULL,
  `required` tinyint(3) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `is_core` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_fields`
--

INSERT INTO `donya_eshop_fields` (`id`, `name`, `fieldtype`, `address_type`, `validation_rule`, `validation_rules_string`, `size`, `max_length`, `rows`, `cols`, `css_class`, `extra_attributes`, `access`, `multiple`, `required`, `ordering`, `published`, `is_core`) VALUES
(1, 'firstname', 'Text', 'A', 'max_len,32|min_len,1', 'required|max_len,32|min_len,1', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 1, 1, 1),
(2, 'lastname', 'Text', 'A', 'max_len,32|min_len,1', 'required|max_len,32|min_len,1', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 2, 1, 1),
(3, 'email', 'Text', 'A', 'valid_email', 'required|valid_email', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 3, 1, 1),
(4, 'telephone', 'Text', 'A', 'max_len,32|min_len,1', 'required|max_len,32|min_len,3', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 4, 1, 1),
(5, 'fax', 'Text', 'A', '0', '', 0, 0, 0, 0, NULL, '', 1, NULL, 0, 5, 1, 1),
(6, 'company', 'Text', 'A', '0', '', 0, 0, 0, 0, NULL, '', 1, NULL, 0, 6, 1, 1),
(7, 'company_id', 'Text', 'A', '0', '', 0, 0, 0, 0, NULL, '', 1, NULL, 0, 7, 1, 1),
(8, 'address_1', 'Text', 'A', '0', 'required', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 8, 1, 1),
(9, 'address_2', 'Text', 'A', '0', '', 0, 0, 0, 0, NULL, '', 1, NULL, 0, 9, 1, 1),
(10, 'city', 'Text', 'A', '0', 'required|max_len,128|min_len,2', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 10, 1, 1),
(11, 'postcode', 'Text', 'A', 'max_len,32|min_len,1', 'required|max_len,10|min_len,2', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 11, 1, 1),
(12, 'country_id', 'Countries', 'A', '0', 'required', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 12, 1, 1),
(13, 'zone_id', 'Zone', 'A', '0', 'required', 0, 0, 0, 0, NULL, '', 1, NULL, 1, 13, 1, 1),
(14, 'eu_vat_number', 'Text', 'B', '0', '', 0, 0, 0, 0, NULL, '', 1, NULL, 0, 14, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_geozonepostcodes`
--

CREATE TABLE `donya_eshop_geozonepostcodes` (
  `id` int(11) NOT NULL,
  `geozone_id` int(11) DEFAULT NULL,
  `start_postcode` varchar(128) DEFAULT NULL,
  `end_postcode` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_geozones`
--

CREATE TABLE `donya_eshop_geozones` (
  `id` int(11) NOT NULL,
  `geozone_name` varchar(255) DEFAULT NULL,
  `geozone_desc` text DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(1) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_geozonezones`
--

CREATE TABLE `donya_eshop_geozonezones` (
  `id` int(11) NOT NULL,
  `geozone_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_labeldetails`
--

CREATE TABLE `donya_eshop_labeldetails` (
  `id` int(11) NOT NULL,
  `label_id` int(11) DEFAULT NULL,
  `label_name` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_labelelements`
--

CREATE TABLE `donya_eshop_labelelements` (
  `id` int(11) NOT NULL,
  `label_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_labels`
--

CREATE TABLE `donya_eshop_labels` (
  `id` int(11) NOT NULL,
  `label_style` varchar(32) DEFAULT NULL,
  `label_position` varchar(32) DEFAULT NULL,
  `label_bold` tinyint(1) DEFAULT NULL,
  `label_background_color` varchar(6) DEFAULT NULL,
  `label_foreground_color` varchar(6) DEFAULT NULL,
  `label_opacity` float(5,2) DEFAULT NULL,
  `enable_image` tinyint(1) UNSIGNED DEFAULT NULL,
  `label_image` varchar(255) DEFAULT NULL,
  `label_image_width` int(11) DEFAULT NULL,
  `label_image_height` int(11) DEFAULT NULL,
  `label_start_date` datetime DEFAULT NULL,
  `label_end_date` datetime DEFAULT NULL,
  `label_out_of_stock_products` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_lengthdetails`
--

CREATE TABLE `donya_eshop_lengthdetails` (
  `id` int(11) NOT NULL,
  `length_id` int(11) DEFAULT NULL,
  `length_name` varchar(32) DEFAULT NULL,
  `length_unit` varchar(4) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_lengthdetails`
--

INSERT INTO `donya_eshop_lengthdetails` (`id`, `length_id`, `length_name`, `length_unit`, `language`) VALUES
(1, 1, 'Centimeter', 'cm', 'en-GB'),
(2, 2, 'Inch', 'in', 'en-GB'),
(3, 3, 'Millimeter', 'mm', 'en-GB'),
(4, 1, 'Centimeter', 'cm', 'fa-IR'),
(5, 2, 'Inch', 'in', 'fa-IR'),
(6, 3, 'Millimeter', 'mm', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_lengths`
--

CREATE TABLE `donya_eshop_lengths` (
  `id` int(11) NOT NULL,
  `exchanged_value` decimal(15,8) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_lengths`
--

INSERT INTO `donya_eshop_lengths` (`id`, `exchanged_value`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, '1.00000000', 1, 1, '2013-04-24 09:58:39', 546, '2013-04-24 10:08:37', 546, 0, '0000-00-00 00:00:00'),
(2, '0.39370000', 0, 2, '2013-04-24 10:09:55', 546, '2013-04-24 10:09:55', 546, 0, '0000-00-00 00:00:00'),
(3, '10.00000000', 1, 3, '2013-04-24 10:10:20', 546, '2013-04-24 10:10:20', 546, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_manufacturerdetails`
--

CREATE TABLE `donya_eshop_manufacturerdetails` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `manufacturer_name` varchar(255) DEFAULT NULL,
  `manufacturer_alias` varchar(255) DEFAULT NULL,
  `manufacturer_desc` text DEFAULT NULL,
  `manufacturer_page_title` varchar(255) DEFAULT NULL,
  `manufacturer_page_heading` varchar(255) DEFAULT NULL,
  `manufacturer_alt_image` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_manufacturers`
--

CREATE TABLE `donya_eshop_manufacturers` (
  `id` int(11) NOT NULL,
  `manufacturer_email` varchar(100) DEFAULT NULL,
  `manufacturer_url` varchar(255) DEFAULT NULL,
  `manufacturer_image` varchar(255) DEFAULT NULL,
  `manufacturer_customergroups` text DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_menus`
--

CREATE TABLE `donya_eshop_menus` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `menu_view` varchar(255) DEFAULT NULL,
  `menu_layout` varchar(255) DEFAULT NULL,
  `menu_class` varchar(255) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_menus`
--

INSERT INTO `donya_eshop_menus` (`id`, `menu_name`, `menu_parent_id`, `menu_view`, `menu_layout`, `menu_class`, `published`, `ordering`) VALUES
(1, 'ESHOP_DASHBOARD', 0, 'dashboard', NULL, 'home', 1, 1),
(2, 'ESHOP_CATALOG', 0, NULL, NULL, 'list-view', 1, 2),
(3, 'ESHOP_CATEGORIES', 2, 'categories', NULL, 'folder', 1, 1),
(4, 'ESHOP_PRODUCTS', 2, 'products', NULL, 'cube', 1, 2),
(5, 'ESHOP_OPTIONS', 2, 'options', NULL, 'checkbox', 1, 5),
(6, 'ESHOP_MANUFACTURERS', 2, 'manufacturers', NULL, 'briefcase', 1, 6),
(7, 'ESHOP_ORDERS', 8, 'orders', NULL, 'loop', 1, 1),
(8, 'ESHOP_SALES', 0, NULL, NULL, 'cart', 1, 4),
(9, 'ESHOP_ATTRIBUTEGROUPS', 2, 'attributegroups', NULL, 'file-add', 1, 4),
(10, 'ESHOP_ATTRIBUTES', 2, 'attributes', NULL, 'file-add', 1, 3),
(11, 'ESHOP_HELP', 0, 'help', NULL, 'support', 1, 7),
(12, 'ESHOP_COUPONS', 8, 'coupons', NULL, 'minus', 1, 4),
(13, 'ESHOP_TAXCLASSES', 15, 'taxclasses', NULL, 'plus-2', 1, 10),
(14, 'ESHOP_TAXRATES', 15, 'taxrates', NULL, 'plus-2', 1, 11),
(15, 'ESHOP_SYSTEM', 0, '', NULL, 'cog', 1, 5),
(16, 'ESHOP_COUNTRIES', 15, 'countries', NULL, 'flag', 1, 2),
(17, 'ESHOP_ZONES', 15, 'zones', NULL, 'location', 1, 8),
(18, 'ESHOP_GEOZONES', 15, 'geozones', NULL, 'location', 1, 9),
(19, 'ESHOP_CUSTOMERGROUPS', 8, 'customergroups', NULL, 'user', 1, 3),
(20, 'ESHOP_CONFIGURATION', 15, 'configuration', NULL, 'move', 1, 1),
(21, 'ESHOP_CUSTOMERS', 8, 'customers', NULL, 'user', 1, 2),
(22, 'ESHOP_REPORTS', 0, 'reports', NULL, 'calendar-2', 1, 6),
(23, 'ESHOP_PLUGINS', 0, NULL, NULL, 'wrench', 1, 3),
(24, 'ESHOP_PAYMENTS', 23, 'payments', NULL, 'play', 1, 1),
(25, 'ESHOP_SHIPPINGS', 23, 'shippings', NULL, 'share', 1, 2),
(26, 'ESHOP_REVIEWS', 2, 'reviews', NULL, 'comments', 1, 7),
(27, 'ESHOP_CURRENCIES', 15, 'currencies', NULL, 'shuffle', 1, 3),
(28, 'ESHOP_STOCKSTATUSES', 15, 'stockstatuses', NULL, 'cube', 1, 4),
(29, 'ESHOP_ORDERSTATUSES', 15, 'orderstatuses', NULL, 'loop', 1, 5),
(30, 'ESHOP_LENGTHS', 15, 'lengths', NULL, 'checkbox-partial', 1, 6),
(31, 'ESHOP_WEIGHTS', 15, 'weights', NULL, 'checkbox-partial', 1, 7),
(32, 'ESHOP_ORDERS', 22, 'reports', 'orders', 'loop', 1, 1),
(33, 'ESHOP_VIEWED_PRODUCTS', 22, 'reports', 'viewedproducts', 'eye', 1, 2),
(34, 'ESHOP_PURCHASED_PRODUCTS', 22, 'reports', 'purchasedproducts', 'star', 1, 3),
(35, 'ESHOP_THEMES', 23, 'themes', NULL, 'plus', 1, 3),
(36, 'ESHOP_MESSAGES', 15, 'messages', 'messages', 'envelope', 1, 12),
(37, 'ESHOP_TRANSLATION', 15, 'language', NULL, 'pencil', 1, 13),
(38, 'ESHOP_EXPORTS', 15, 'exports', NULL, 'out', 1, 14),
(39, 'ESHOP_VOUCHERS', 8, 'vouchers', NULL, 'heart', 1, 5),
(40, 'ESHOP_LABELS', 2, 'labels', NULL, 'pencil', 1, 8),
(41, 'ESHOP_DOWNLOADS', 2, 'downloads', NULL, 'download', 1, 9),
(42, 'ESHOP_TOOLS', 15, 'tools', NULL, 'wrench', 1, 15),
(43, 'ESHOP_FIELDS', 8, 'fields', NULL, 'checkbox-unchecked', 1, 6),
(44, 'ESHOP_QUOTES', 8, 'quotes', NULL, 'question', 1, 7),
(45, 'ESHOP_NOTIFY', 8, 'notify', NULL, 'info', 1, 8),
(46, 'ESHOP_DISCOUNTS', 8, 'discounts', NULL, 'download', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_messagedetails`
--

CREATE TABLE `donya_eshop_messagedetails` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `message_value` text DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_messagedetails`
--

INSERT INTO `donya_eshop_messagedetails` (`id`, `message_id`, `message_value`, `language`) VALUES
(1, 1, '<h1>INVOICE #[INVOICE_NUMBER]</h1>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>[STORE_NAME]<br /> [STORE_ADDRESS]<br /> [STORE_TELEPHONE]<br /> [STORE_EMAIL]<br /> [STORE_URL]<br /> [STORE_FAX]</td>\r\n<td align=\"right\" valign=\"top\">\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Date Added:</strong></td>\r\n<td>[DATE_ADDED]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Order Number:</strong></td>\r\n<td>[ORDER_NUMBER]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Payment Method:</strong></td>\r\n<td>[PAYMENT_METHOD]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Shipping Method:</strong></td>\r\n<td>[SHIPPING_METHOD]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td style=\"background-color: #cddddd; text-align: left;\" width=\"50%\"><strong>Payment Address</strong></td>\r\n<td style=\"background-color: #cddddd; text-align: left;\" width=\"50%\"><strong>Shipping Address</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[PAYMENT_ADDRESS]</td>\r\n<td>[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>[PRODUCTS_LIST]</p>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Comment</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Delivery Date</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'en-GB'),
(2, 2, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received an order.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]</div>', 'en-GB'),
(3, 3, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(4, 4, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(5, 5, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(6, 6, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(7, 7, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello [MANUFACTURER_NAME],<br /> You are receiving this email because following your product(s) are ordered at [STORE_NAME]:</p>\n[PRODUCTS_LIST]</div>\n<div style=\"width: 680px;\">Â </div>\n<div style=\"width: 680px;\">\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]<br /> Company: [PAYMENT_COMPANY]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]<br /> Company: [SHIPPING_COMPANY]</td>\n</tr>\n</tbody>\n</table>\n</div>', 'en-GB'),
(8, 8, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello,</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Your order status is changed from [ORDER_STATUS_FROM] to [ORDER_STATUS_TO].</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK]</a></p>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\n</tr>\n</tbody>\n</table>\n[PRODUCTS_LIST]\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\n</div>', 'en-GB'),
(9, 9, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello,</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Your order status is changed from [ORDER_STATUS_FROM] to [ORDER_STATUS_TO].</p>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\n</tr>\n</tbody>\n</table>\n[PRODUCTS_LIST]\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\n</div>', 'en-GB'),
(10, 10, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(11, 11, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(12, 12, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received a new quotation request from [NAME].</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Customer Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Name:</strong> [NAME]<br /><strong>Email:</strong> [EMAIL]<br /><strong>Company:</strong> [COMPANY]<br /><strong>Telephone:</strong> [TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Message</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[MESSAGE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]</div>', 'en-GB'),
(13, 13, '<p>Thank you for sending us the quotation for the following products:</p>\r\n<p>[PRODUCTS_LIST]</p>\r\n<p>We will try toÂ get back to you as soon as possible.</p>', 'en-GB'),
(14, 14, '<p>Dear <strong>[CUSTOMER_NAME]</strong>,</p>\n<p>We have shipped your order #[ORDER_NUMBER]</p>\n<p>Track Your Package:Â <a href=\"[SHIPPING_TRACKING_URL]\">[SHIPPING_TRACKING_NUMBER]</a></p>\n<p>If the above link doesn\'t work (or is visible), you may copy and paste the following into your browser:Â <a href=\"[SHIPPING_TRACKING_URL]\">[SHIPPING_TRACKING_URL]</a></p>\n<p><strong>ShippingÂ Information</strong></p>\n<p>[SHIPPING_ADDRESS]</p>\n<p>Thank you!</p>', 'en-GB'),
(15, 15, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(16, 16, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(17, 17, '', 'en-GB'),
(18, 18, '<p>Hello,</p>\r\n<p>Thank you for your patience.<br /><br />Our [PRODUCT_NAME] is now in stock and can be purchased by the following link:Ã‚Â <a href=\"[PRODUCT_LINK]\">[PRODUCT_LINK]</a>.<br /><br />This is an one time notice, you will not receive this e-mail again.</p>\r\n<p>Thank you!</p>', 'en-GB'),
(19, 19, '<p>Hello [STORE_NAME],</p>\r\n<p>The following products in your store are nearly out of stock:</p>\r\n<p>[PRODUCTS_LIST]</p>\r\n<p>Please go to your store to update their quantity before they are out of stock.</p>\r\n<p>Sincerely</p>', 'en-GB'),
(20, 20, '[STORE_NAME] - Order #[ORDER_ID]', 'en-GB'),
(21, 21, 'You have received an enquiry from [CUSTOMER_NAME]', 'en-GB'),
(22, 22, '[STORE_NAME] - Order #[ORDER_ID]', 'en-GB'),
(23, 23, 'Your quote has been sent', 'en-GB'),
(24, 24, 'Your product(s) are ordered', 'en-GB'),
(25, 25, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received a question about a product.</p>\r\n[PRODUCTS_LIST]</div>', 'en-GB'),
(26, 26, 'Question about your product', 'en-GB'),
(27, 27, '[PRODUCT_NAME] has arrived!', 'en-GB'),
(28, 28, 'Products in your store are nearly out of stock!', 'en-GB'),
(29, 29, '[STORE_NAME] - Your order status is changed', 'en-GB'),
(30, 30, 'Shipping Notification', 'en-GB');
INSERT INTO `donya_eshop_messagedetails` (`id`, `message_id`, `message_value`, `language`) VALUES
(31, 31, '<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\">\r\n<h3>[STORE_NAME] - [STORE_ADDRESS]</h3>\r\n</td>\r\n<td align=\"right\">\r\n<h3>Phone: [STORE_TELEPHONE] - Email: [STORE_EMAIL]</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p>[PRODUCT_DETAILS]</p>', 'en-GB'),
(32, 32, '[STORE_NAME] - A friend sent you a link to [PRODUCT_NAME]', 'en-GB'),
(33, 33, '<p>Hi [INVITEE_NAME],</p>\r\n<p>A friend has sent you a link to a product that (s)he thinks may interest you.</p>\r\n<p>Click here to view this item: <a href=\"[PRODUCT_LINK]\">[PRODUCT_LINK]</a></p>\r\n<p><strong>Sender Name</strong>: [SENDER_NAME]</p>\r\n<p><strong>Sender Email</strong>: [SENDER_EMAIL]</p>\r\n<p><strong>Message from Sender</strong>:</p>\r\n<p>-----</p>\r\n<p>[MESSAGE]</p>\r\n<p>-----</p>', 'en-GB'),
(34, 34, 'New review for your product', 'en-GB'),
(35, 35, '<p>A shopper just added a new review for your product. Please go to Reviews Manager at the back-end side to see it.</p>', 'en-GB'),
(36, 36, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(37, 37, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(38, 38, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(39, 39, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(40, 40, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(41, 41, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(42, 42, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(43, 43, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'en-GB'),
(44, 1, '<h1>INVOICE #[INVOICE_NUMBER]</h1>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>[STORE_NAME]<br /> [STORE_ADDRESS]<br /> [STORE_TELEPHONE]<br /> [STORE_EMAIL]<br /> [STORE_URL]<br /> [STORE_FAX]</td>\r\n<td align=\"right\" valign=\"top\">\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Date Added:</strong></td>\r\n<td>[DATE_ADDED]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Order Number:</strong></td>\r\n<td>[ORDER_NUMBER]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Payment Method:</strong></td>\r\n<td>[PAYMENT_METHOD]</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Shipping Method:</strong></td>\r\n<td>[SHIPPING_METHOD]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td style=\"background-color: #cddddd; text-align: left;\" width=\"50%\"><strong>Payment Address</strong></td>\r\n<td style=\"background-color: #cddddd; text-align: left;\" width=\"50%\"><strong>Shipping Address</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[PAYMENT_ADDRESS]</td>\r\n<td>[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>[PRODUCTS_LIST]</p>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Comment</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td><strong>Delivery Date</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'fa-IR'),
(45, 2, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received an order.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]</div>', 'fa-IR'),
(46, 12, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received a new quotation request from [NAME].</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Customer Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Name:</strong> [NAME]<br /><strong>Email:</strong> [EMAIL]<br /><strong>Company:</strong> [COMPANY]<br /><strong>Telephone:</strong> [TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Message</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[MESSAGE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]</div>', 'fa-IR'),
(47, 13, '<p>Thank you for sending us the quotation for the following products:</p>\r\n<p>[PRODUCTS_LIST]</p>\r\n<p>We will try toÂ get back to you as soon as possible.</p>', 'fa-IR'),
(48, 14, '<p>Dear <strong>[CUSTOMER_NAME]</strong>,</p>\n<p>We have shipped your order #[ORDER_NUMBER]</p>\n<p>Track Your Package:Â <a href=\"[SHIPPING_TRACKING_URL]\">[SHIPPING_TRACKING_NUMBER]</a></p>\n<p>If the above link doesn\'t work (or is visible), you may copy and paste the following into your browser:Â <a href=\"[SHIPPING_TRACKING_URL]\">[SHIPPING_TRACKING_URL]</a></p>\n<p><strong>ShippingÂ Information</strong></p>\n<p>[SHIPPING_ADDRESS]</p>\n<p>Thank you!</p>', 'fa-IR'),
(49, 17, '', 'fa-IR'),
(50, 18, '<p>Hello,</p>\r\n<p>Thank you for your patience.<br /><br />Our [PRODUCT_NAME] is now in stock and can be purchased by the following link:Ã‚Â <a href=\"[PRODUCT_LINK]\">[PRODUCT_LINK]</a>.<br /><br />This is an one time notice, you will not receive this e-mail again.</p>\r\n<p>Thank you!</p>', 'fa-IR'),
(51, 19, '<p>Hello [STORE_NAME],</p>\r\n<p>The following products in your store are nearly out of stock:</p>\r\n<p>[PRODUCTS_LIST]</p>\r\n<p>Please go to your store to update their quantity before they are out of stock.</p>\r\n<p>Sincerely</p>', 'fa-IR'),
(52, 20, '[STORE_NAME] - Order #[ORDER_ID]', 'fa-IR'),
(53, 21, 'You have received an enquiry from [CUSTOMER_NAME]', 'fa-IR'),
(54, 22, '[STORE_NAME] - Order #[ORDER_ID]', 'fa-IR'),
(55, 23, 'Your quote has been sent', 'fa-IR'),
(56, 24, 'Your product(s) are ordered', 'fa-IR'),
(57, 25, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">You have received a question about a product.</p>\r\n[PRODUCTS_LIST]</div>', 'fa-IR'),
(58, 3, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(59, 26, 'Question about your product', 'fa-IR'),
(60, 27, '[PRODUCT_NAME] has arrived!', 'fa-IR'),
(61, 28, 'Products in your store are nearly out of stock!', 'fa-IR'),
(62, 29, '[STORE_NAME] - Your order status is changed', 'fa-IR'),
(63, 30, 'Shipping Notification', 'fa-IR'),
(64, 31, '<table width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td align=\"left\">\r\n<h3>[STORE_NAME] - [STORE_ADDRESS]</h3>\r\n</td>\r\n<td align=\"right\">\r\n<h3>Phone: [STORE_TELEPHONE] - Email: [STORE_EMAIL]</h3>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr />\r\n<p>[PRODUCT_DETAILS]</p>', 'fa-IR'),
(65, 32, '[STORE_NAME] - A friend sent you a link to [PRODUCT_NAME]', 'fa-IR'),
(66, 33, '<p>Hi [INVITEE_NAME],</p>\r\n<p>A friend has sent you a link to a product that (s)he thinks may interest you.</p>\r\n<p>Click here to view this item: <a href=\"[PRODUCT_LINK]\">[PRODUCT_LINK]</a></p>\r\n<p><strong>Sender Name</strong>: [SENDER_NAME]</p>\r\n<p><strong>Sender Email</strong>: [SENDER_EMAIL]</p>\r\n<p><strong>Message from Sender</strong>:</p>\r\n<p>-----</p>\r\n<p>[MESSAGE]</p>\r\n<p>-----</p>', 'fa-IR'),
(67, 34, 'New review for your product', 'fa-IR'),
(68, 35, '<p>A shopper just added a new review for your product. Please go to Reviews Manager at the back-end side to see it.</p>', 'fa-IR'),
(69, 4, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR');
INSERT INTO `donya_eshop_messagedetails` (`id`, `message_id`, `message_value`, `language`) VALUES
(70, 5, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(71, 6, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(72, 7, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello [MANUFACTURER_NAME],<br /> You are receiving this email because following your product(s) are ordered at [STORE_NAME]:</p>\n[PRODUCTS_LIST]</div>\n<div style=\"width: 680px;\">Â </div>\n<div style=\"width: 680px;\">\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]<br /> Company: [PAYMENT_COMPANY]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]<br /> Company: [SHIPPING_COMPANY]</td>\n</tr>\n</tbody>\n</table>\n</div>', 'fa-IR'),
(73, 8, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello,</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Your order status is changed from [ORDER_STATUS_FROM] to [ORDER_STATUS_TO].</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK]</a></p>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\n</tr>\n</tbody>\n</table>\n[PRODUCTS_LIST]\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\n</div>', 'fa-IR'),
(74, 9, '<div style=\"width: 680px;\">\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Hello,</p>\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Your order status is changed from [ORDER_STATUS_FROM] to [ORDER_STATUS_TO].</p>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\n</tr>\n</tbody>\n</table>\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\n<thead>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\n</tr>\n</tbody>\n</table>\n[PRODUCTS_LIST]\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\n</div>', 'fa-IR'),
(75, 10, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(76, 11, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(77, 15, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(78, 16, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(79, 36, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(80, 37, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(81, 38, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(82, 39, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR');
INSERT INTO `donya_eshop_messagedetails` (`id`, `message_id`, `message_value`, `language`) VALUES
(83, 40, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(84, 41, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">To view your order click on the link below:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[ORDER_LINK]\"> [ORDER_LINK] </a></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Once your payment has been confirmed you can click on the link below to access your downloadable products:</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"[DOWNLOAD_LINK]\">[DOWNLOAD_LINK]</a></p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(85, 42, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR'),
(86, 43, '<div style=\"width: 680px;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Thank you for your interest in [STORE_NAME] products. Your order has been received and will be processed once payment has been confirmed.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">Order Details</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Order Number:</strong> [ORDER_NUMBER]<br /> <strong>Date Added:</strong> [DATE_ADDED]<br /> <strong>Payment Method:</strong> [PAYMENT_METHOD]<br /> <strong>Shipping Method:</strong> [SHIPPING_METHOD]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><strong>Email:</strong> [CUSTOMER_EMAIL]<br /> <strong>Telephone:</strong> [CUSTOMER_TELEPHONE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Comment</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[COMMENT]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Delivery Date</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[DELIVERY_DATE]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">\r\n<thead>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Payment Address</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #efefef; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">Shipping Address</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[PAYMENT_ADDRESS]</td>\r\n<td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">[SHIPPING_ADDRESS]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n[PRODUCTS_LIST]\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please send the offline payment to our bank account:<br /> Enter your bank information here</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 20px;\">Please reply to this email if you have any questions.</p>\r\n</div>', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_messages`
--

CREATE TABLE `donya_eshop_messages` (
  `id` int(11) NOT NULL,
  `message_title` varchar(255) DEFAULT NULL,
  `message_name` varchar(255) DEFAULT NULL,
  `message_type` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_messages`
--

INSERT INTO `donya_eshop_messages` (`id`, `message_title`, `message_name`, `message_type`) VALUES
(1, 'Invoice Layout', 'invoice_layout', 'textarea'),
(2, 'Admin Notification Email', 'admin_notification_email', 'textarea'),
(3, 'Customer Notification Email', 'customer_notification_email', 'textarea'),
(4, 'Offline Payment Customer Notification Email', 'offline_payment_customer_notification_email', 'textarea'),
(5, 'Guest Notification Email', 'guest_notification_email', 'textarea'),
(6, 'Offline Payment Guest Notification Email', 'offline_payment_guest_notification_email', 'textarea'),
(7, 'Manufacturer Notification Email', 'manufacturer_notification_email', 'textarea'),
(8, 'Order Status Change - Customer Notification Email', 'order_status_change_customer', 'textarea'),
(9, 'Order Status Change - Guest Notification Email', 'order_status_change_guest', 'textarea'),
(10, 'Customer Notification Email With Downloadable Products', 'customer_notification_email_with_download', 'textarea'),
(11, 'Offline Payment Customer Notification Email With Downloadable Products', 'offline_payment_customer_notification_email_with_download', 'textarea'),
(12, 'Admin Quote Email', 'admin_quote_email', 'textarea'),
(13, 'Customer Quote Email', 'customer_quote_email', 'textarea'),
(14, 'Shipping Notification Email', 'shipping_notification_email', 'textarea'),
(15, 'Guest Notification Email With Downloadable Products', 'guest_notification_email_with_download', 'textarea'),
(16, 'Offline Payment Guest Notification Email With Downloadable Products', 'offline_payment_guest_notification_email_with_download', 'textarea'),
(17, 'Shop Introduction', 'shop_introduction', 'textarea'),
(18, 'Notify Email', 'notify_email', 'textarea'),
(19, 'Reminder Email', 'reminder_email', 'textarea'),
(20, 'Admin Notification Email Subject', 'admin_notification_email_subject', 'textbox'),
(21, 'Admin Quote Email Subject', 'admin_quote_email_subject', 'textbox'),
(22, 'Customer/Guest Notification Email Subject', 'customer_guest_notification_email_subject', 'textbox'),
(23, 'Customer Quote Email Subject', 'customer_quote_email_subject', 'textbox'),
(24, 'Manufacturer Notification Email Subject', 'manufacturer_notification_email_subject', 'textbox'),
(25, 'Ask Question Notification Email', 'ask_question_notification_email', 'text_area'),
(26, 'Ask Question Notification Email Subject', 'ask_question_notification_email_subject', 'textbox'),
(27, 'Notify Email Subject', 'notify_email_subject', 'textbox'),
(28, 'Reminder Email Subject', 'reminder_email_subject', 'textbox'),
(29, 'Order Status Change Subject', 'order_status_change_subject', 'textbox'),
(30, 'Shipping Notification Email Subject', 'shipping_notification_email_subject', 'textbox'),
(31, 'Product PDF Layout', 'product_pdf_layout', 'textarea'),
(32, 'Email a Friend Subject', 'email_a_friend_subject', 'textbox'),
(33, 'Email a Friend', 'email_a_friend', 'textarea'),
(34, 'Review Notification Email Subject', 'review_notification_email_subject', 'textbox'),
(35, 'Review Notification Email', 'review_notification_email', 'textarea'),
(36, 'Offline 1 Payment Customer Notification Email', 'offline1_payment_customer_notification_email', 'textarea'),
(37, 'Offline 2 Payment Customer Notification Email', 'offline2_payment_customer_notification_email', 'textarea'),
(38, 'Offline 1 Payment Guest Notification Email', 'offline1_payment_guest_notification_email', 'textarea'),
(39, 'Offline 2 Payment Guest Notification Email', 'offline2_payment_guest_notification_email', 'textarea'),
(40, 'Offline 1 Payment Customer Notification Email With Downloadable Products', 'offline1_payment_customer_notification_email_with_download', 'textarea'),
(41, 'Offline 2 Payment Customer Notification Email With Downloadable Products', 'offline2_payment_customer_notification_email_with_download', 'textarea'),
(42, 'Offline 1 Payment Guest Notification Email With Downloadable Products', 'offline1_payment_guest_notification_email_with_download', 'textarea'),
(43, 'Offline 2 Payment Guest Notification Email With Downloadable Products', 'offline2_payment_guest_notification_email_with_download', 'textarea');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_notify`
--

CREATE TABLE `donya_eshop_notify` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `notify_email` varchar(255) DEFAULT NULL,
  `sent_email` tinyint(1) NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_optiondetails`
--

CREATE TABLE `donya_eshop_optiondetails` (
  `id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_desc` text DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_optiondetails`
--

INSERT INTO `donya_eshop_optiondetails` (`id`, `option_id`, `option_name`, `option_desc`, `language`) VALUES
(1, 1, 'سایز', '', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_options`
--

CREATE TABLE `donya_eshop_options` (
  `id` int(11) NOT NULL,
  `option_type` varchar(32) DEFAULT NULL,
  `option_image` varchar(255) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_options`
--

INSERT INTO `donya_eshop_options` (`id`, `option_type`, `option_image`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 'Select', NULL, 1, NULL, '2020-05-02 12:43:30', 234, '2020-05-02 12:59:29', 234, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_optionvaluedetails`
--

CREATE TABLE `donya_eshop_optionvaluedetails` (
  `id` int(11) NOT NULL,
  `optionvalue_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_optionvaluedetails`
--

INSERT INTO `donya_eshop_optionvaluedetails` (`id`, `optionvalue_id`, `option_id`, `value`, `language`) VALUES
(1, 1, 1, 'S', 'fa-IR'),
(2, 2, 1, 'M', 'fa-IR'),
(3, 3, 1, 'L', 'fa-IR'),
(4, 4, 1, 'XL', 'fa-IR'),
(5, 5, 1, 'XXL', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_optionvalues`
--

CREATE TABLE `donya_eshop_optionvalues` (
  `id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_optionvalues`
--

INSERT INTO `donya_eshop_optionvalues` (`id`, `option_id`, `published`, `ordering`) VALUES
(1, 1, 1, 0),
(2, 1, 1, 0),
(3, 1, 1, 0),
(4, 1, 1, 0),
(5, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orderdownloads`
--

CREATE TABLE `donya_eshop_orderdownloads` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `download_name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `download_code` varchar(255) DEFAULT NULL,
  `remaining` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orderdownloads`
--

INSERT INTO `donya_eshop_orderdownloads` (`id`, `order_id`, `order_product_id`, `download_id`, `download_name`, `filename`, `download_code`, `remaining`) VALUES
(1, 12, 15, 1, 'کاتالوگ', 'Genesis_US G90_2020.pdf', 'xEzmOzcRRx', 50);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orderoptions`
--

CREATE TABLE `donya_eshop_orderoptions` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_option_id` int(11) DEFAULT NULL,
  `product_option_value_id` int(11) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `option_type` varchar(32) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `sku` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orderoptions`
--

INSERT INTO `donya_eshop_orderoptions` (`id`, `order_id`, `product_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `option_name`, `option_value`, `option_type`, `quantity`, `price`, `sku`) VALUES
(1, 1, 1, 1, 6, 29, 'سایز', 'XL', 'Select', 2, '4000.0000', '001xl'),
(2, 1, 1, 2, 6, 30, 'سایز', 'XXL', 'Select', 1, '6000.0000', '001xxl'),
(3, 2, 1, 3, 6, 29, 'سایز', 'XL', 'Select', 2, '4000.0000', '001xl'),
(4, 2, 1, 4, 6, 30, 'سایز', 'XXL', 'Select', 1, '6000.0000', '001xxl'),
(5, 3, 1, 5, 6, 26, 'سایز', 'S', 'Select', 3, '-5000.0000', '001s'),
(6, 4, 1, 6, 6, 27, 'سایز', 'M', 'Select', 1, '-3000.0000', '001m'),
(7, 4, 1, 7, 6, 28, 'سایز', 'L', 'Select', 1, '0.0000', '001l'),
(8, 5, 1, 8, 6, 26, 'سایز', 'S', 'Select', 1, '-5000.0000', '001s'),
(9, 6, 1, 9, 6, 30, 'سایز', 'XXL', 'Select', 1, '6000.0000', '001xxl'),
(10, 7, 1, 10, 8, 37, 'سایز', 'M', 'Select', 1, '-3000.0000', '001m'),
(11, 8, 1, 11, 8, 37, 'سایز', 'M', 'Select', 1, '-3000.0000', '001m'),
(12, 9, 1, 12, 8, 36, 'سایز', 'S', 'Select', 1, '-5000.0000', '001s'),
(13, 10, 1, 13, 8, 36, 'سایز', 'S', 'Select', 1, '-5000.0000', '001s'),
(14, 11, 1, 14, 8, 39, 'سایز', 'XL', 'Select', 1, '4000.0000', '001xl'),
(15, 12, 1, 15, 9, 42, 'سایز', 'M', 'Select', 1, '-3000.0000', '001m');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orderproducts`
--

CREATE TABLE `donya_eshop_orderproducts` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_sku` varchar(64) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `total_price` decimal(15,4) DEFAULT NULL,
  `tax` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orderproducts`
--

INSERT INTO `donya_eshop_orderproducts` (`id`, `order_id`, `product_id`, `product_name`, `product_sku`, `quantity`, `price`, `total_price`, `tax`) VALUES
(1, 1, 1, 'محصول یک', '001', 2, '74000.0000', '148000.0000', '0.0000'),
(2, 1, 1, 'محصول یک', '001', 1, '76000.0000', '76000.0000', '0.0000'),
(3, 2, 1, 'محصول یک', '001', 2, '74000.0000', '148000.0000', '0.0000'),
(4, 2, 1, 'محصول یک', '001', 1, '76000.0000', '76000.0000', '0.0000'),
(5, 3, 1, 'محصول یک', '001', 3, '65000.0000', '195000.0000', '0.0000'),
(6, 4, 1, 'محصول یک', '001', 1, '67000.0000', '67000.0000', '0.0000'),
(7, 4, 1, 'محصول یک', '001', 1, '70000.0000', '70000.0000', '0.0000'),
(8, 5, 1, 'محصول یک', '001', 1, '65000.0000', '65000.0000', '0.0000'),
(9, 6, 1, 'محصول یک', '001', 1, '76000.0000', '76000.0000', '0.0000'),
(10, 7, 1, 'محصول یک', '001', 1, '67000.0000', '67000.0000', '0.0000'),
(11, 8, 1, 'محصول یک', '001', 1, '67000.0000', '67000.0000', '0.0000'),
(12, 9, 1, 'محصول یک', '001', 1, '65000.0000', '65000.0000', '0.0000'),
(13, 10, 1, 'محصول یک', '001', 1, '65000.0000', '65000.0000', '0.0000'),
(14, 11, 1, 'محصول یک', '001', 1, '74000.0000', '74000.0000', '0.0000'),
(15, 12, 1, 'محصول یک', '001', 1, '67000.0000', '67000.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orders`
--

CREATE TABLE `donya_eshop_orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `payment_firstname` varchar(32) DEFAULT NULL,
  `payment_lastname` varchar(32) DEFAULT NULL,
  `payment_email` varchar(96) DEFAULT NULL,
  `payment_telephone` varchar(32) DEFAULT NULL,
  `payment_fax` varchar(32) DEFAULT NULL,
  `payment_company` varchar(255) DEFAULT NULL,
  `payment_company_id` varchar(255) DEFAULT NULL,
  `payment_address_1` varchar(128) DEFAULT NULL,
  `payment_address_2` varchar(128) DEFAULT NULL,
  `payment_city` varchar(128) DEFAULT NULL,
  `payment_postcode` varchar(10) DEFAULT NULL,
  `payment_country_name` varchar(128) DEFAULT NULL,
  `payment_country_id` int(11) DEFAULT NULL,
  `payment_zone_name` varchar(128) DEFAULT NULL,
  `payment_zone_id` int(11) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` varchar(100) DEFAULT NULL,
  `payment_eu_vat_number` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `shipping_firstname` varchar(32) DEFAULT NULL,
  `shipping_lastname` varchar(32) DEFAULT NULL,
  `shipping_email` varchar(96) DEFAULT NULL,
  `shipping_telephone` varchar(32) DEFAULT NULL,
  `shipping_fax` varchar(32) DEFAULT NULL,
  `shipping_company` varchar(255) DEFAULT NULL,
  `shipping_company_id` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(128) DEFAULT NULL,
  `shipping_address_2` varchar(128) DEFAULT NULL,
  `shipping_city` varchar(128) DEFAULT NULL,
  `shipping_postcode` varchar(128) DEFAULT NULL,
  `shipping_country_name` varchar(128) DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `shipping_zone_name` varchar(128) DEFAULT NULL,
  `shipping_zone_id` int(11) DEFAULT NULL,
  `shipping_method` varchar(100) DEFAULT NULL,
  `shipping_method_title` varchar(100) DEFAULT NULL,
  `shipping_tracking_number` varchar(255) DEFAULT NULL,
  `shipping_tracking_url` text DEFAULT NULL,
  `shipping_eu_vat_number` text DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `order_status_id` int(11) DEFAULT 0,
  `language` char(7) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `currency_exchanged_value` float(15,8) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_code` varchar(32) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `voucher_code` varchar(32) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `params` text DEFAULT NULL,
  `user_ip` varchar(100) DEFAULT NULL,
  `newsletter_interest` tinyint(1) DEFAULT 1,
  `privacy_policy_agree` tinyint(1) DEFAULT 1,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orders`
--

INSERT INTO `donya_eshop_orders` (`id`, `order_number`, `invoice_number`, `customer_id`, `customergroup_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_email`, `payment_telephone`, `payment_fax`, `payment_company`, `payment_company_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country_name`, `payment_country_id`, `payment_zone_name`, `payment_zone_id`, `payment_method`, `payment_method_title`, `payment_eu_vat_number`, `transaction_id`, `shipping_firstname`, `shipping_lastname`, `shipping_email`, `shipping_telephone`, `shipping_fax`, `shipping_company`, `shipping_company_id`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country_name`, `shipping_country_id`, `shipping_zone_name`, `shipping_zone_id`, `shipping_method`, `shipping_method_title`, `shipping_tracking_number`, `shipping_tracking_url`, `shipping_eu_vat_number`, `total`, `comment`, `order_status_id`, `language`, `currency_id`, `currency_code`, `currency_exchanged_value`, `coupon_id`, `coupon_code`, `voucher_id`, `voucher_code`, `delivery_date`, `params`, `user_ip`, `newsletter_interest`, `privacy_policy_agree`, `created_date`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 'KRC3AQOJHA', 1, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_paypal', 'Paypal', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_price.price', 'هزینه ارسال', NULL, NULL, NULL, '224023.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-02 20:00:03', '2020-05-02 20:00:03', 0, 0, '0000-00-00 00:00:00'),
(2, 'OFR9RKLHSB', 2, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_price.price', 'هزینه ارسال', NULL, NULL, NULL, '224023.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-02 20:07:28', '2020-05-02 20:07:28', 0, 0, '0000-00-00 00:00:00'),
(3, 'RCTQHHA4ZT', 3, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '195000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-03 10:43:12', '2020-05-03 10:43:12', 0, 0, '0000-00-00 00:00:00'),
(4, 'X252PJUKB7', 4, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '137000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 12:33:10', '2020-05-19 12:33:10', 0, 0, '0000-00-00 00:00:00'),
(5, 'F9KP4YXRAH', 5, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '65000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 12:41:30', '2020-05-19 12:41:30', 0, 0, '0000-00-00 00:00:00'),
(6, '7F7ZTSYTNM', 6, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '76000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 13:35:25', '2020-05-19 13:35:25', 0, 0, '0000-00-00 00:00:00'),
(7, 'ONEYHPIPL4', 7, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '67000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 14:41:45', '2020-05-19 14:41:45', 0, 0, '0000-00-00 00:00:00'),
(8, 'ZWLBGRXWGP', 8, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '67000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 14:43:28', '2020-05-19 14:43:28', 0, 0, '0000-00-00 00:00:00'),
(9, '3AXB3NQBGI', 9, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '65000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 15:07:22', '2020-05-19 15:07:22', 0, 0, '0000-00-00 00:00:00'),
(10, '8NUXYXXAGP', 10, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '65000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 15:08:23', '2020-05-19 15:08:23', 0, 0, '0000-00-00 00:00:00'),
(11, 'VEW2OE28DO', 11, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', '', '', NULL, '74000.0000', 'سلام و عرض ادب', 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 16:06:40', '2020-05-19 21:31:26', 234, 0, '0000-00-00 00:00:00'),
(12, '3MHC2LXZ0G', 12, 235, 1, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'os_offline', 'Offline Payment', NULL, NULL, 'مشتری', 'مشتری زاده', 'user@y.com', '02636800601', '02636800601', 'شرکت تست', '123456789', 'تهران', 'یوسف آباد', 'تهران', '3213216687', 'Iran (Islamic Republic of)', 101, 'Tehran', 1538, 'eshop_free.free', 'Free Shipping', NULL, NULL, NULL, '67000.0000', NULL, 8, 'fa-IR', 1, 'IRR', 1.00000000, 0, '', 0, '', NULL, NULL, '::1', 1, 1, '2020-05-19 22:18:09', '2020-05-19 22:18:09', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orderstatusdetails`
--

CREATE TABLE `donya_eshop_orderstatusdetails` (
  `id` int(11) NOT NULL,
  `orderstatus_id` int(11) DEFAULT NULL,
  `orderstatus_name` varchar(100) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orderstatusdetails`
--

INSERT INTO `donya_eshop_orderstatusdetails` (`id`, `orderstatus_id`, `orderstatus_name`, `language`) VALUES
(1, 1, 'Canceled', 'en-GB'),
(2, 2, 'Canceled Reversal', 'en-GB'),
(3, 3, 'Chargeback', 'en-GB'),
(4, 4, 'Complete', 'en-GB'),
(5, 5, 'Denied', 'en-GB'),
(6, 6, 'Expired', 'en-GB'),
(7, 7, 'Failed', 'en-GB'),
(8, 8, 'Pending', 'en-GB'),
(9, 9, 'Processed', 'en-GB'),
(10, 10, 'Processing', 'en-GB'),
(11, 11, 'Refunded', 'en-GB'),
(12, 12, 'Reversed', 'en-GB'),
(13, 13, 'Shipped', 'en-GB'),
(14, 14, 'Voided', 'en-GB'),
(15, 1, 'Canceled', 'fa-IR'),
(16, 2, 'Canceled Reversal', 'fa-IR'),
(17, 3, 'Chargeback', 'fa-IR'),
(18, 4, 'Complete', 'fa-IR'),
(19, 5, 'Denied', 'fa-IR'),
(20, 6, 'Expired', 'fa-IR'),
(21, 7, 'Failed', 'fa-IR'),
(22, 8, 'Pending', 'fa-IR'),
(23, 9, 'Processed', 'fa-IR'),
(24, 10, 'Processing', 'fa-IR'),
(25, 11, 'Refunded', 'fa-IR'),
(26, 12, 'Reversed', 'fa-IR'),
(27, 13, 'Shipped', 'fa-IR'),
(28, 14, 'Voided', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_orderstatuses`
--

CREATE TABLE `donya_eshop_orderstatuses` (
  `id` int(11) NOT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_orderstatuses`
--

INSERT INTO `donya_eshop_orderstatuses` (`id`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 1, '2013-04-24 09:50:37', 546, '2013-04-24 09:50:37', 546, 0, '0000-00-00 00:00:00'),
(2, 1, 2, '2013-04-24 09:50:59', 546, '2013-04-24 09:50:59', 546, 0, '0000-00-00 00:00:00'),
(3, 1, 3, '2013-04-24 09:51:11', 546, '2013-04-24 09:51:11', 546, 0, '0000-00-00 00:00:00'),
(4, 1, 4, '2013-04-24 09:51:25', 546, '2013-04-24 09:51:25', 546, 0, '0000-00-00 00:00:00'),
(5, 1, 5, '2013-04-24 09:51:41', 546, '2013-04-24 09:51:41', 546, 0, '0000-00-00 00:00:00'),
(6, 1, 6, '2013-04-24 09:51:53', 546, '2013-04-24 09:51:53', 546, 0, '0000-00-00 00:00:00'),
(7, 1, 7, '2013-04-24 09:52:17', 546, '2013-04-24 09:52:17', 546, 0, '0000-00-00 00:00:00'),
(8, 1, 8, '2013-04-24 09:52:42', 546, '2013-04-24 09:52:42', 546, 0, '0000-00-00 00:00:00'),
(9, 1, 9, '2013-04-24 09:52:59', 546, '2013-04-24 09:52:59', 546, 0, '0000-00-00 00:00:00'),
(10, 1, 10, '2013-04-24 09:53:15', 546, '2013-04-24 09:53:15', 546, 0, '0000-00-00 00:00:00'),
(11, 1, 11, '2013-04-24 09:53:28', 546, '2013-04-24 09:53:28', 546, 0, '0000-00-00 00:00:00'),
(12, 1, 12, '2013-04-24 09:53:41', 546, '2013-04-24 09:53:41', 546, 0, '0000-00-00 00:00:00'),
(13, 1, 13, '2013-04-24 09:54:33', 546, '2013-04-24 09:54:33', 546, 0, '0000-00-00 00:00:00'),
(14, 1, 14, '2013-04-24 09:54:46', 546, '2013-04-24 09:54:46', 546, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_ordertotals`
--

CREATE TABLE `donya_eshop_ordertotals` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `value` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_ordertotals`
--

INSERT INTO `donya_eshop_ordertotals` (`id`, `order_id`, `name`, `title`, `text`, `value`) VALUES
(1, 1, 'sub_total', 'بدون مالیات', '224,000 تومان', '224000.0000'),
(2, 1, 'shipping', 'هزینه ارسال', '23 تومان', '23.0000'),
(3, 1, 'total', 'جمع کل', '224,023 تومان', '224023.0000'),
(4, 2, 'sub_total', 'بدون مالیات', '224,000 تومان', '224000.0000'),
(5, 2, 'shipping', 'هزینه ارسال', '23 تومان', '23.0000'),
(6, 2, 'total', 'جمع کل', '224,023 تومان', '224023.0000'),
(7, 3, 'sub_total', 'بدون مالیات', '195,000 تومان', '195000.0000'),
(8, 3, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(9, 3, 'total', 'جمع کل', '195,000 تومان', '195000.0000'),
(10, 4, 'sub_total', 'بدون مالیات', '137,000 تومان', '137000.0000'),
(11, 4, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(12, 4, 'total', 'جمع کل', '137,000 تومان', '137000.0000'),
(13, 5, 'sub_total', 'بدون مالیات', '65,000 تومان', '65000.0000'),
(14, 5, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(15, 5, 'total', 'جمع کل', '65,000 تومان', '65000.0000'),
(16, 6, 'sub_total', 'بدون مالیات', '76,000 تومان', '76000.0000'),
(17, 6, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(18, 6, 'total', 'جمع کل', '76,000 تومان', '76000.0000'),
(19, 7, 'sub_total', 'بدون مالیات', '67,000 تومان', '67000.0000'),
(20, 7, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(21, 7, 'total', 'جمع کل', '67,000 تومان', '67000.0000'),
(22, 8, 'sub_total', 'بدون مالیات', '67,000 تومان', '67000.0000'),
(23, 8, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(24, 8, 'total', 'جمع کل', '67,000 تومان', '67000.0000'),
(25, 9, 'sub_total', 'بدون مالیات', '65,000 تومان', '65000.0000'),
(26, 9, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(27, 9, 'total', 'جمع کل', '65,000 تومان', '65000.0000'),
(28, 10, 'sub_total', 'بدون مالیات', '65,000 تومان', '65000.0000'),
(29, 10, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(30, 10, 'total', 'جمع کل', '65,000 تومان', '65000.0000'),
(31, 11, 'sub_total', 'Sub-Total', '74,000 تومان', '74000.0000'),
(32, 11, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(33, 11, 'total', 'Total', '74,000 تومان', '74000.0000'),
(34, 12, 'sub_total', 'بدون مالیات', '67,000 تومان', '67000.0000'),
(35, 12, 'shipping', 'Free Shipping', '0 تومان', '0.0000'),
(36, 12, 'total', 'جمع کل', '67,000 تومان', '67000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_payments`
--

CREATE TABLE `donya_eshop_payments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `author_url` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_payments`
--

INSERT INTO `donya_eshop_payments` (`id`, `name`, `title`, `author`, `creation_date`, `copyright`, `license`, `author_email`, `author_url`, `version`, `description`, `params`, `ordering`, `published`) VALUES
(1, 'os_paypal', 'Paypal', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2010-2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'Paypal Payment Plugin for EShop', NULL, 1, 0),
(2, 'os_offline', 'Offline Payment', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2010-2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'Offline Payment Plugin for EShop', NULL, 2, 1),
(3, 'os_authnet', 'Authorize.net', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2010-2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'Authorize.net Payment Plugin for EShop', NULL, 3, 0),
(4, 'os_eway', 'Eway', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2010-2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'Eway Payment Plugin for EShop', NULL, 4, 0),
(5, 'os_creditcard', 'Offline Credit Card Processing', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2012 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'This payment plugin collects the Credit Card information from customers and send it to administrator for offline processing.', NULL, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productattachments`
--

CREATE TABLE `donya_eshop_productattachments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file_name` text DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productattributedetails`
--

CREATE TABLE `donya_eshop_productattributedetails` (
  `id` int(11) NOT NULL,
  `productattribute_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productattributes`
--

CREATE TABLE `donya_eshop_productattributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productcategories`
--

CREATE TABLE `donya_eshop_productcategories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_category` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productcategories`
--

INSERT INTO `donya_eshop_productcategories` (`id`, `product_id`, `category_id`, `main_category`) VALUES
(3, 2, 2, 1),
(20, 1, 1, 1),
(21, 1, 2, 0),
(43, 10, 3, 1),
(45, 3, 3, 1),
(46, 4, 3, 1),
(47, 5, 3, 1),
(48, 6, 3, 1),
(49, 7, 3, 1),
(50, 8, 3, 1),
(52, 11, 3, 1),
(53, 9, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productdetails`
--

CREATE TABLE `donya_eshop_productdetails` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_alias` varchar(255) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `product_short_desc` text DEFAULT NULL,
  `product_page_title` varchar(255) DEFAULT NULL,
  `product_page_heading` varchar(255) DEFAULT NULL,
  `product_alt_image` varchar(255) DEFAULT NULL,
  `tab1_title` varchar(255) DEFAULT NULL,
  `tab1_content` text DEFAULT NULL,
  `tab2_title` varchar(255) DEFAULT NULL,
  `tab2_content` text DEFAULT NULL,
  `tab3_title` varchar(255) DEFAULT NULL,
  `tab3_content` text DEFAULT NULL,
  `tab4_title` varchar(255) DEFAULT NULL,
  `tab4_content` text DEFAULT NULL,
  `tab5_title` varchar(255) DEFAULT NULL,
  `tab5_content` text DEFAULT NULL,
  `meta_key` varchar(400) DEFAULT NULL,
  `meta_desc` varchar(400) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productdetails`
--

INSERT INTO `donya_eshop_productdetails` (`id`, `product_id`, `product_name`, `product_alias`, `product_desc`, `product_short_desc`, `product_page_title`, `product_page_heading`, `product_alt_image`, `tab1_title`, `tab1_content`, `tab2_title`, `tab2_content`, `tab3_title`, `tab3_content`, `tab4_title`, `tab4_content`, `tab5_title`, `tab5_content`, `meta_key`, `meta_desc`, `language`) VALUES
(1, 1, 'محصول یک', 'p1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa-IR'),
(2, 2, 'محصول دو', 'p2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fa-IR'),
(3, 3, 'Papa Ronny', 'Papa Ronny', 'Pepperoni, Mozzarella and Marinara Sauce', 'Pepperoni, Mozzarella and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(4, 4, 'Driftin', 'Driftin', 'Double Mozzarella, Smoked Ham, Mushrooms and Marinara Sauce', 'Double Mozzarella, Smoked Ham, Mushrooms and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(5, 5, 'Supreme', 'Supreme', 'Mozzarella, Pepperoni, Smoked Ham, Homemade Italian Sausage, Onions, Sweet Peppers, Mushrooms, Black Olives and Marinara Sauce', 'Mozzarella, Pepperoni, Smoked Ham, Homemade Italian Sausage, Onions, Sweet Peppers, Mushrooms, Black Olives and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(6, 6, 'Hot Rod', 'Hot Rod', 'Mozzarella, Pepperoni, Tomato, Red Chili Flakes and Marinara Sauce', 'Mozzarella, Pepperoni, Tomato, Red Chili Flakes and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(7, 7, 'Cheesy Veggie', 'Cheesy Veggie', 'Mozzarella, Extra Mushrooms, Sweet Peppers, Onions, Black Olives, Italian Seasoning and Marinara Sauce', 'Mozzarella, Extra Mushrooms, Sweet Peppers, Onions, Black Olives, Italian Seasoning and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(8, 8, 'Smokin', 'Smokin', 'Mozzarella, Smoked Cheese, Grilled Chicken, Fresh Tomato and Marinara Sauce', 'Mozzarella, Smoked Cheese, Grilled Chicken, Fresh Tomato and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(9, 9, 'Cruiser', 'Cruiser', 'Mozzarella, Pepperoni, Mushrooms, Black Olives and Marinara Sauce', 'Mozzarella, Pepperoni, Mushrooms, Black Olives and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(10, 10, 'Hula', 'Hula', 'Mozzarella, Smoked Ham, Sweet Pineapple and Marinara Sauce', 'Mozzarella, Smoked Ham, Sweet Pineapple and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB'),
(11, 11, 'Wild West', 'Wild West', 'Mozzarella, BBQ Chicken, Roasted Garlic and Marinara Sauce', 'Mozzarella, BBQ Chicken, Roasted Garlic and Marinara Sauce', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productdiscounts`
--

CREATE TABLE `donya_eshop_productdiscounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `price` decimal(15,8) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productdownloads`
--

CREATE TABLE `donya_eshop_productdownloads` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productdownloads`
--

INSERT INTO `donya_eshop_productdownloads` (`id`, `product_id`, `download_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productimages`
--

CREATE TABLE `donya_eshop_productimages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productimages`
--

INSERT INTO `donya_eshop_productimages` (`id`, `product_id`, `image`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 'p2a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(2, 1, 'p3a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(3, 1, 'p1a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(4, 1, 'p7a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(5, 1, 'p5a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(6, 1, 'p12a.jpg', 1, 0, '2020-05-02 14:27:26', 234, '2020-05-20 00:15:11', 234, 0, '0000-00-00 00:00:00'),
(7, 2, 'p11a.jpg', 1, 0, '2020-05-02 14:33:58', 234, '2020-05-02 14:33:58', 234, 0, '0000-00-00 00:00:00'),
(8, 2, 'p10a.jpg', 1, 0, '2020-05-02 14:33:58', 234, '2020-05-02 14:33:58', 234, 0, '0000-00-00 00:00:00'),
(9, 2, 'p9a.jpg', 1, 0, '2020-05-02 14:33:58', 234, '2020-05-02 14:33:58', 234, 0, '0000-00-00 00:00:00'),
(10, 2, 'p8a.jpg', 1, 0, '2020-05-02 14:33:58', 234, '2020-05-02 14:33:58', 234, 0, '0000-00-00 00:00:00'),
(11, 2, 'p6a.jpg', 1, 0, '2020-05-02 14:33:58', 234, '2020-05-02 14:33:58', 234, 0, '0000-00-00 00:00:00'),
(13, 4, 'image_5ef85a52c2508_rDriftin-g-e1587581808703.png', 1, 0, '2020-06-28 10:52:34', 234, '2020-06-28 11:19:22', 234, 0, '0000-00-00 00:00:00'),
(14, 5, 'image_5ef85aa119103_rSupreme-g-e1587581719462.png', 1, 0, '2020-06-28 10:53:53', 234, '2020-06-28 11:19:43', 234, 0, '0000-00-00 00:00:00'),
(15, 6, 'image_5ef85af8a3407_rHot-Rod-g-e1587581508100.png', 1, 0, '2020-06-28 10:55:20', 234, '2020-06-28 11:20:01', 234, 0, '0000-00-00 00:00:00'),
(16, 3, 'image_5ef85b104e269_rPapa-Ronny-g-e1587581672475.png', 1, 0, '2020-06-28 10:55:44', 234, '2020-06-28 11:18:48', 234, 0, '0000-00-00 00:00:00'),
(17, 7, 'image_5ef85b4fc40ca_rCheesy-Veggie-g-e1587582267896.png', 1, 0, '2020-06-28 10:56:47', 234, '2020-06-28 11:20:15', 234, 0, '0000-00-00 00:00:00'),
(18, 8, 'image_5ef85b92d3683_rSmokin-g-e1587580856444.png', 1, 0, '2020-06-28 10:57:54', 234, '2020-06-28 11:20:27', 234, 0, '0000-00-00 00:00:00'),
(19, 9, 'image_5ef85bd1ccde0_rCruiser-g-e1587581494593.png', 1, 0, '2020-06-28 10:58:57', 234, '2020-06-28 11:20:56', 234, 0, '0000-00-00 00:00:00'),
(20, 10, 'image_5ef85c0fe1a88_rHula-g-e1587581621788.png', 1, 0, '2020-06-28 10:59:59', 234, '2020-06-28 11:17:52', 234, 0, '0000-00-00 00:00:00'),
(21, 11, 'image_5ef85c52556eb_rWildwest-g-e1587581655668.png', 1, 0, '2020-06-28 11:01:06', 234, '2020-06-28 11:20:49', 234, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productoptions`
--

CREATE TABLE `donya_eshop_productoptions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `required` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productoptions`
--

INSERT INTO `donya_eshop_productoptions` (`id`, `product_id`, `option_id`, `required`) VALUES
(9, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productoptionvalues`
--

CREATE TABLE `donya_eshop_productoptionvalues` (
  `id` int(11) NOT NULL,
  `product_option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  `sku` varchar(64) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,8) DEFAULT NULL,
  `price_sign` char(1) DEFAULT NULL,
  `price_type` char(1) DEFAULT NULL,
  `weight` decimal(15,8) DEFAULT NULL,
  `weight_sign` varchar(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productoptionvalues`
--

INSERT INTO `donya_eshop_productoptionvalues` (`id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `sku`, `quantity`, `price`, `price_sign`, `price_type`, `weight`, `weight_sign`, `image`) VALUES
(41, 9, 1, 1, 1, '001s', 498, '5000.00000000', '-', 'F', '0.00000000', '+', ''),
(42, 9, 1, 1, 2, '001m', 597, '3000.00000000', '-', 'F', '0.00000000', '+', ''),
(43, 9, 1, 1, 3, '001l', 400, '0.00000000', '+', 'F', '0.00000000', '+', ''),
(44, 9, 1, 1, 4, '001xl', 199, '4000.00000000', '+', 'F', '0.00000000', '+', ''),
(45, 9, 1, 1, 5, '001xxl', 300, '6000.00000000', '+', 'F', '0.00000000', '+', '');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productrelations`
--

CREATE TABLE `donya_eshop_productrelations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `related_product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_productrelations`
--

INSERT INTO `donya_eshop_productrelations` (`id`, `product_id`, `related_product_id`) VALUES
(9, 3, 10),
(10, 10, 3),
(23, 4, 10),
(24, 10, 4),
(25, 4, 3),
(26, 3, 4),
(37, 5, 4),
(38, 4, 5),
(41, 5, 10),
(42, 10, 5),
(43, 5, 3),
(44, 3, 5),
(53, 6, 4),
(54, 4, 6),
(55, 6, 10),
(56, 10, 6),
(57, 6, 3),
(58, 3, 6),
(61, 6, 5),
(62, 5, 6),
(67, 7, 4),
(68, 4, 7),
(69, 7, 6),
(70, 6, 7),
(71, 7, 10),
(72, 10, 7),
(73, 7, 3),
(74, 3, 7),
(77, 7, 5),
(78, 5, 7),
(81, 8, 7),
(82, 7, 8),
(85, 8, 4),
(86, 4, 8),
(87, 8, 6),
(88, 6, 8),
(89, 8, 10),
(90, 10, 8),
(91, 8, 3),
(92, 3, 8),
(93, 8, 5),
(94, 5, 8),
(113, 11, 7),
(114, 7, 11),
(117, 11, 4),
(118, 4, 11),
(119, 11, 6),
(120, 6, 11),
(121, 11, 10),
(122, 10, 11),
(123, 11, 3),
(124, 3, 11),
(125, 11, 8),
(126, 8, 11),
(127, 11, 5),
(128, 5, 11),
(129, 9, 7),
(130, 7, 9),
(131, 9, 4),
(132, 4, 9),
(133, 9, 6),
(134, 6, 9),
(135, 9, 10),
(136, 10, 9),
(137, 9, 3),
(138, 3, 9),
(139, 9, 8),
(140, 8, 9),
(141, 9, 5),
(142, 5, 9),
(143, 9, 11),
(144, 11, 9);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_products`
--

CREATE TABLE `donya_eshop_products` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `product_sku` varchar(64) DEFAULT NULL,
  `product_weight` decimal(15,8) DEFAULT NULL,
  `product_weight_id` int(11) DEFAULT NULL,
  `product_length` decimal(15,8) DEFAULT NULL,
  `product_width` decimal(15,8) DEFAULT NULL,
  `product_height` decimal(15,8) DEFAULT NULL,
  `product_length_id` int(11) DEFAULT NULL,
  `product_cost` decimal(15,8) DEFAULT NULL,
  `product_price` decimal(15,8) DEFAULT NULL,
  `product_call_for_price` tinyint(1) UNSIGNED DEFAULT NULL,
  `product_taxclass_id` int(11) DEFAULT NULL,
  `product_manage_stock` tinyint(1) NOT NULL DEFAULT 1,
  `product_stock_display` tinyint(1) NOT NULL DEFAULT 1,
  `product_stock_warning` tinyint(1) NOT NULL DEFAULT 1,
  `product_inventory_global` tinyint(1) NOT NULL DEFAULT 1,
  `product_quantity` int(11) DEFAULT NULL,
  `product_threshold` int(11) DEFAULT NULL,
  `product_threshold_notify` tinyint(1) NOT NULL DEFAULT 0,
  `product_stock_checkout` tinyint(1) DEFAULT NULL,
  `product_minimum_quantity` int(11) DEFAULT NULL,
  `product_maximum_quantity` int(11) DEFAULT NULL,
  `product_shipping` tinyint(1) UNSIGNED DEFAULT NULL,
  `product_shipping_cost` decimal(15,8) DEFAULT NULL,
  `product_shipping_cost_geozones` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_available_date` datetime DEFAULT NULL,
  `product_end_date` datetime DEFAULT NULL,
  `product_featured` tinyint(1) UNSIGNED DEFAULT NULL,
  `product_customergroups` text DEFAULT NULL,
  `product_stock_status_id` int(11) DEFAULT NULL,
  `product_cart_mode` varchar(20) DEFAULT NULL,
  `product_quote_mode` tinyint(1) UNSIGNED DEFAULT NULL,
  `product_languages` text DEFAULT NULL,
  `custom_fields` text DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_products`
--

INSERT INTO `donya_eshop_products` (`id`, `manufacturer_id`, `product_sku`, `product_weight`, `product_weight_id`, `product_length`, `product_width`, `product_height`, `product_length_id`, `product_cost`, `product_price`, `product_call_for_price`, `product_taxclass_id`, `product_manage_stock`, `product_stock_display`, `product_stock_warning`, `product_inventory_global`, `product_quantity`, `product_threshold`, `product_threshold_notify`, `product_stock_checkout`, `product_minimum_quantity`, `product_maximum_quantity`, `product_shipping`, `product_shipping_cost`, `product_shipping_cost_geozones`, `product_image`, `product_available_date`, `product_end_date`, `product_featured`, `product_customergroups`, `product_stock_status_id`, `product_cart_mode`, `product_quote_mode`, `product_languages`, `custom_fields`, `published`, `ordering`, `hits`, `params`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 0, '001', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '70000.00000000', 0, 0, 1, 1, 1, 1, 4994, 2, 0, 1, 0, 0, 1, '0.00000000', '', 'p7b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 1, '', NULL, 1, 1, 70, '{}', '2020-05-02 12:27:26', 234, '2020-05-19 22:15:10', 234, 0, '0000-00-00 00:00:00'),
(2, 0, '002', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '65000.00000000', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'p3b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', NULL, '', NULL, 1, 2, 6, '{}', '2020-05-02 12:33:58', 234, '2020-05-02 12:33:58', 234, 0, '0000-00-00 00:00:00'),
(3, 0, '001', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '18.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rPapa-Ronny-g-e1587581672475.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 3, 4, '{}', '2020-06-28 08:46:23', 234, '2020-06-28 09:18:48', 234, 0, '0000-00-00 00:00:00'),
(4, 0, '002', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '24.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rDriftin-g-e1587581808703.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 4, 0, '{}', '2020-06-28 08:52:34', 234, '2020-06-28 09:19:22', 234, 0, '0000-00-00 00:00:00'),
(5, 0, '003', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '26.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rSupreme-g-e1587581719462.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 5, 0, '{}', '2020-06-28 08:53:53', 234, '2020-06-28 09:19:43', 234, 0, '0000-00-00 00:00:00'),
(6, 0, '004', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '20.00000000', NULL, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'image_5ef85af885097_rHot-Rod-g-e1587581508100.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 6, 0, '{}', '2020-06-28 08:55:20', 234, '2020-06-28 09:20:01', 234, 0, '0000-00-00 00:00:00'),
(7, 0, '005', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '22.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rCheesy-Veggie-g-e1587582267896.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 7, 0, '{}', '2020-06-28 08:56:47', 234, '2020-06-28 09:20:15', 234, 0, '0000-00-00 00:00:00'),
(8, 0, '006', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '23.00000000', NULL, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rSmokin-g-e1587580856444.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 8, 0, '{}', '2020-06-28 08:57:54', 234, '2020-06-28 09:20:27', 234, 0, '0000-00-00 00:00:00'),
(9, 0, '007', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '22.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rCruiser-g-e1587581494593.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 9, 5, '{}', '2020-06-28 08:58:57', 234, '2020-06-28 09:20:56', 234, 0, '0000-00-00 00:00:00'),
(10, 0, '008', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '21.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rHula-g-e1587581621788.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 10, 0, '{}', '2020-06-28 08:59:59', 234, '2020-06-28 09:17:51', 234, 0, '0000-00-00 00:00:00'),
(11, 0, '009', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, '0.00000000', '20.00000000', 0, 0, 1, 1, 1, 1, 50, 0, 0, 0, 0, 0, 1, '0.00000000', '', 'rWildwest-g-e1587581655668.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 'public', 0, '', NULL, 1, 11, 7, '{}', '2020-06-28 09:01:06', 234, '2020-06-28 09:20:49', 234, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_productspecials`
--

CREATE TABLE `donya_eshop_productspecials` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_producttags`
--

CREATE TABLE `donya_eshop_producttags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_quoteoptions`
--

CREATE TABLE `donya_eshop_quoteoptions` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `quote_product_id` int(11) DEFAULT NULL,
  `product_option_id` int(11) DEFAULT NULL,
  `product_option_value_id` int(11) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `option_type` varchar(32) DEFAULT NULL,
  `sku` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_quoteoptions`
--

INSERT INTO `donya_eshop_quoteoptions` (`id`, `quote_id`, `quote_product_id`, `product_option_id`, `product_option_value_id`, `option_name`, `option_value`, `option_type`, `sku`) VALUES
(1, 1, 1, 6, 27, 'سایز', 'M', 'Select', '001m'),
(2, 1, 2, 6, 26, 'سایز', 'S', 'Select', '001s');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_quoteproducts`
--

CREATE TABLE `donya_eshop_quoteproducts` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_sku` varchar(64) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `total_price` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_quoteproducts`
--

INSERT INTO `donya_eshop_quoteproducts` (`id`, `quote_id`, `product_id`, `product_name`, `product_sku`, `quantity`, `price`, `total_price`) VALUES
(1, 1, 1, 'محصول یک', '001', 6, '67000.0000', '402000.0000'),
(2, 1, 1, 'محصول یک', '001', 5, '65000.0000', '325000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_quotes`
--

CREATE TABLE `donya_eshop_quotes` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `currency_exchanged_value` float(15,8) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_quotes`
--

INSERT INTO `donya_eshop_quotes` (`id`, `customer_id`, `name`, `email`, `company`, `telephone`, `message`, `total`, `currency_id`, `currency_code`, `currency_exchanged_value`, `created_date`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 0, 'حسین', 'user@y.com', 'دنیا', '87875', 'متن پیام تست متن پیام تست متن پیام تست متن پیام تست متن پیام تست متن پیام تست ', '727000.0000', 1, 'IRR', 1.00000000, '2020-05-19 10:42:37', '2020-05-19 10:42:37', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_reviews`
--

CREATE TABLE `donya_eshop_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `rating` int(1) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_shippings`
--

CREATE TABLE `donya_eshop_shippings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `author_url` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_shippings`
--

INSERT INTO `donya_eshop_shippings` (`id`, `name`, `title`, `author`, `creation_date`, `copyright`, `license`, `author_email`, `author_url`, `version`, `description`, `params`, `ordering`, `published`) VALUES
(1, 'eshop_flat', 'Flat Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Flat Shipping method for Eshop', '{\"package_fee\":\"0\",\"cost\":\"10\",\"taxclass_id\":\"2\",\"geozone_id\":\"0\"}', 1, 0),
(2, 'eshop_price', 'Price Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Price Shipping method for Eshop', '{\"package_fee\":\"20\",\"sub_total_range\":\"0;50;150;250;400\",\"cost_range\":\"3;5;9;12;20\",\"min_sub_total_for_free\":\"0\",\"taxclass_id\":\"0\",\"geozone_id\":\"0\"}', 2, 0),
(3, 'eshop_item', 'Item Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Item Shipping method for Eshop', '{\"package_fee\":\"0\",\"taxclass_id\":\"0\",\"geozone_id\":\"0\"}', 3, 0),
(4, 'eshop_free', 'Free Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Free Shipping method for Eshop', '{\"min_sub_total\":\"1000\",\"geozone_id\":\"0\"}', 4, 1),
(5, 'eshop_weight', 'Weight Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Weight Shipping method for Eshop', '{\"rates\":\"\",\"taxclass_id\":\"0\"}', 5, 0),
(6, 'eshop_ups', 'UPS', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is UPS Shipping method for Eshop', NULL, 6, 0),
(7, 'eshop_quantity', 'Quantity Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Quantity Shipping method for Eshop', '{\"package_fee\":\"0\",\"rates\":\"\",\"taxclass_id\":\"0\",\"geozone_id\":\"0\"}', 7, 0),
(8, 'eshop_auspostpac', 'AusPost - Postage Assesment Calculator', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Australia Post Shipping method for Eshop', NULL, 8, 0),
(9, 'eshop_flatitem', 'Flat Item Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Flat Item Shipping method for Eshop', NULL, 9, 0),
(10, 'eshop_postcode', 'Postcode Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'Postcode shipping plugin allows you to set shipping cost based on Postcode range', NULL, 10, 0),
(11, 'eshop_itemgeozones', 'Item Geozones Shipping', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2013 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0.0', 'This is Item Geozones Shipping plugin for Eshop', NULL, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_stockstatusdetails`
--

CREATE TABLE `donya_eshop_stockstatusdetails` (
  `id` int(11) NOT NULL,
  `stockstatus_id` int(11) DEFAULT NULL,
  `stockstatus_name` varchar(100) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_stockstatusdetails`
--

INSERT INTO `donya_eshop_stockstatusdetails` (`id`, `stockstatus_id`, `stockstatus_name`, `language`) VALUES
(1, 1, '2 - 3 Days', 'en-GB'),
(2, 2, 'In Stock', 'en-GB'),
(3, 3, 'Out Of Stock', 'en-GB'),
(4, 4, 'Pre-Order', 'en-GB'),
(5, 1, '2 - 3 Days', 'fa-IR'),
(6, 2, 'In Stock', 'fa-IR'),
(7, 3, 'Out Of Stock', 'fa-IR'),
(8, 4, 'Pre-Order', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_stockstatuses`
--

CREATE TABLE `donya_eshop_stockstatuses` (
  `id` int(11) NOT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_stockstatuses`
--

INSERT INTO `donya_eshop_stockstatuses` (`id`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, 1, 1, '2013-04-24 09:33:11', 546, '2013-04-24 09:33:11', 546, 0, '0000-00-00 00:00:00'),
(2, 1, 2, '2013-04-24 09:36:23', 546, '2013-04-24 09:36:23', 546, 0, '0000-00-00 00:00:00'),
(3, 1, 3, '2013-04-24 09:36:46', 546, '2013-04-24 09:36:46', 546, 0, '0000-00-00 00:00:00'),
(4, 1, 4, '2013-04-24 09:38:36', 546, '2013-04-24 09:38:45', 546, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_tags`
--

CREATE TABLE `donya_eshop_tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_taxclasses`
--

CREATE TABLE `donya_eshop_taxclasses` (
  `id` int(11) NOT NULL,
  `taxclass_name` varchar(255) DEFAULT NULL,
  `taxclass_desc` text DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_taxcustomergroups`
--

CREATE TABLE `donya_eshop_taxcustomergroups` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `customergroup_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_taxes`
--

CREATE TABLE `donya_eshop_taxes` (
  `id` int(11) NOT NULL,
  `geozone_id` int(11) DEFAULT NULL,
  `tax_name` varchar(255) DEFAULT NULL,
  `tax_rate` decimal(15,8) DEFAULT NULL,
  `tax_type` char(1) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_taxrules`
--

CREATE TABLE `donya_eshop_taxrules` (
  `id` int(11) NOT NULL,
  `taxclass_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `based_on` varchar(10) DEFAULT NULL,
  `priority` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_themes`
--

CREATE TABLE `donya_eshop_themes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `author_url` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_themes`
--

INSERT INTO `donya_eshop_themes` (`id`, `name`, `title`, `author`, `creation_date`, `copyright`, `license`, `author_email`, `author_url`, `version`, `description`, `params`, `ordering`, `published`) VALUES
(1, 'default', 'Default', 'Giang Dinh Truong', '0000-00-00 00:00:00', 'Copyright 2007-2010 Ossolution Team', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'contact@joomdonation.com', 'www.joomdonation.com', '1.0', 'Default theme for EShop', '', 1, 0),
(2, 'donyadideh', 'donyadideh', 'Hossein donyadideh', '0000-00-00 00:00:00', 'Copyright 2013-2020 Donyadideh Studio', 'http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2', 'donyadideh@outlook.com', 'http://donyadideh.com', '1.0', 'Donyadideh theme for Eshop', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_urls`
--

CREATE TABLE `donya_eshop_urls` (
  `id` int(11) NOT NULL,
  `md5_key` text DEFAULT NULL,
  `query` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_urls`
--

INSERT INTO `donya_eshop_urls` (`id`, `md5_key`, `query`) VALUES
(1, 'e1c80488853d86ab9d6decfe30d8930f', 'view=category&id=2'),
(2, '0120a4f9196a5f9eb9f523f31f914da7', 'view=category&id=1'),
(3, 'fc49de441edc10305f34c44ace312a0a', 'view=product&id=1&catid=1'),
(4, 'd41d8cd98f00b204e9800998ecf8427e', 'task=search'),
(5, '4057fa4662db436907c8ebc88855f993', 'view=product&id=2&catid=2'),
(6, '503cb67749b777798cb06e2651dbaedf', 'view=product&id=1&catid=2'),
(7, '4e3deb1175a646a3722b671d7cc60924', 'task=product.downloadPDF&product_id=1'),
(8, '1f83af4e41052f8eb52dec322580a88d', 'view=compare'),
(9, 'd9a22d7a8178d5b42a8750123cbfe5b1', 'view=checkout&layout=complete'),
(10, '5c6f05391082bf13022ceb759a97e3ec', 'view=customer&layout=account'),
(11, '0ed9f3fa4d887426b8040c82fdc2fe62', 'view=customer&layout=orders'),
(12, 'd07d50a751bc6ddf12bf3af0efee9b45', 'view=customer&layout=downloads'),
(13, '963e3a2fe559e393bad631f3dc686f69', 'view=customer&layout=addresses'),
(14, 'f0160cedc0583274849d1088ff04da50', 'view=customer&layout=address'),
(15, 'd15c9ba8bca49219d34c9fe0933c2e9e', 'view=customer&layout=order&order_id=1'),
(16, 'd9c17818f996d8d56fb4ff1bcabdd3a2', 'view=quote'),
(17, 'f0f64e8c776947f08c302f5a09731bd4', 'view=wishlist'),
(18, '06a943c59f33a34bb5924aaf72cd2995', 'task=search'),
(19, '7cf2db5ec261a0fa27a502d3196a6f60', 'view=category&id=3'),
(20, 'b31c0ebf45c2cad43a70369ed68c57ba', 'view=product&id=3&catid=3'),
(21, '18092012d2539f49b62c50074ec60c75', 'view=product&id=11&catid=3'),
(22, 'e4418a0d80db49f5afdc929e501875c2', 'view=product&id=10&catid=3'),
(23, 'b1d97f167c88ea5d9cfce26c43bdb3c7', 'view=product&id=9&catid=3'),
(24, 'feef9e3e3e9660f9467744602c53594c', 'view=product&id=8&catid=3'),
(25, '78176bf4a3374ee6ed8065f306711ccb', 'view=product&id=7&catid=3'),
(26, 'b15b053c42116f54e9cd573828dc9d6a', 'view=product&id=6&catid=3'),
(27, '11167803565cc56f92a29640598884a4', 'view=product&id=5&catid=3'),
(28, '9b12a898cf00af66bbfa5a52c096eafb', 'view=product&id=4&catid=3');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_voucherhistory`
--

CREATE TABLE `donya_eshop_voucherhistory` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(15,8) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_vouchers`
--

CREATE TABLE `donya_eshop_vouchers` (
  `id` int(11) NOT NULL,
  `voucher_code` varchar(32) DEFAULT NULL,
  `voucher_amount` decimal(15,8) DEFAULT NULL,
  `voucher_start_date` datetime DEFAULT NULL,
  `voucher_end_date` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_weightdetails`
--

CREATE TABLE `donya_eshop_weightdetails` (
  `id` int(11) NOT NULL,
  `weight_id` int(11) DEFAULT NULL,
  `weight_name` varchar(32) DEFAULT NULL,
  `weight_unit` varchar(4) DEFAULT NULL,
  `language` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_weightdetails`
--

INSERT INTO `donya_eshop_weightdetails` (`id`, `weight_id`, `weight_name`, `weight_unit`, `language`) VALUES
(1, 1, 'Kilogram', 'kg', 'en-GB'),
(2, 2, 'Gram', 'g', 'en-GB'),
(3, 3, 'Ounce', 'oz', 'en-GB'),
(4, 4, 'Pound', 'lb', 'en-GB'),
(5, 1, 'Kilogram', 'kg', 'fa-IR'),
(6, 2, 'Gram', 'g', 'fa-IR'),
(7, 3, 'Ounce', 'oz', 'fa-IR'),
(8, 4, 'Pound', 'lb', 'fa-IR');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_weights`
--

CREATE TABLE `donya_eshop_weights` (
  `id` int(11) NOT NULL,
  `exchanged_value` decimal(15,8) DEFAULT NULL,
  `published` tinyint(1) UNSIGNED DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_weights`
--

INSERT INTO `donya_eshop_weights` (`id`, `exchanged_value`, `published`, `ordering`, `created_date`, `created_by`, `modified_date`, `modified_by`, `checked_out`, `checked_out_time`) VALUES
(1, '1.00000000', 1, 1, '2013-04-24 10:13:13', 546, '2013-04-24 10:13:13', 546, 0, '0000-00-00 00:00:00'),
(2, '1000.00000000', 1, 2, '2013-04-24 10:13:44', 546, '2013-04-24 10:13:44', 546, 0, '0000-00-00 00:00:00'),
(3, '35.27400000', 0, 3, '2013-04-24 10:14:08', 546, '2013-04-24 10:14:08', 546, 0, '0000-00-00 00:00:00'),
(4, '2.20460000', 0, 4, '2013-04-24 10:14:33', 546, '2013-04-24 10:14:33', 546, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_wishlists`
--

CREATE TABLE `donya_eshop_wishlists` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_wishlists`
--

INSERT INTO `donya_eshop_wishlists` (`id`, `customer_id`, `product_id`) VALUES
(3, 235, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_eshop_zones`
--

CREATE TABLE `donya_eshop_zones` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zone_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donya_eshop_zones`
--

INSERT INTO `donya_eshop_zones` (`id`, `country_id`, `zone_name`, `zone_code`, `published`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liege', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapa', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceara', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espirito Santo', 'ES', 1),
(448, 30, 'Goias', 'GO', 1),
(449, 30, 'Maranhao', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Para', 'PA', 1),
(454, 30, 'Paraiba', 'PB', 1),
(455, 30, 'Parana', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piaui', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondonia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'Sao Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihoceský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzenský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Stredoceský', 'S', 1),
(901, 56, 'Vysocina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1091, 73, 'Alsace', 'AL', 1),
(1092, 73, 'Aquitaine', 'AQ', 1),
(1093, 73, 'Auvergne', 'AU', 1),
(1094, 73, 'Brittany', 'BR', 1),
(1095, 73, 'Burgundy', 'BU', 1),
(1096, 73, 'Center Loire Valley', 'CE', 1),
(1097, 73, 'Champagne', 'CH', 1),
(1098, 73, 'Corse', 'CO', 1),
(1099, 73, 'France Comte', 'FR', 1),
(1100, 73, 'Languedoc Roussillon', 'LA', 1),
(1101, 73, 'Limousin', 'LI', 1),
(1102, 73, 'Lorraine', 'LO', 1),
(1103, 73, 'Midi Pyrenees', 'MI', 1),
(1104, 73, 'Nord Pas de Calais', 'NO', 1),
(1105, 73, 'Normandy', 'NR', 1),
(1106, 73, 'Paris / Ill de France', 'PA', 1),
(1107, 73, 'Picardie', 'PI', 1),
(1108, 73, 'Poitou Charente', 'PO', 1),
(1109, 73, 'Provence', 'PR', 1),
(1110, 73, 'Rhone Alps', 'RH', 1),
(1111, 73, 'Riviera', 'RI', 1),
(1112, 73, 'Western Loire Valley', 'WE', 1),
(1113, 74, 'Etranger', 'Et', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1);
INSERT INTO `donya_eshop_zones` (`id`, `country_id`, `zone_name`, `zone_code`, `published`) VALUES
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairprarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenciansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1);
INSERT INTO `donya_eshop_zones` (`id`, `country_id`, `zone_name`, `zone_code`, `published`) VALUES
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adiyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Agri', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydin', 'AYI', 1),
(3326, 215, 'Balikesir', 'BAL', 1),
(3327, 215, 'Bartin', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankiri', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazig', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskisehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüshane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Igdir', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'Istanbul', 'IST', 1),
(3355, 215, 'Izmir', 'IZM', 1),
(3356, 215, 'Kahramanmaras', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kirikkale', 'KRK', 1),
(3364, 215, 'Kirklareli', 'KLR', 1),
(3365, 215, 'Kirsehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Mugla', 'MUG', 1),
(3374, 215, 'Mus', 'MUS', 1),
(3375, 215, 'Nevsehir', 'NEV', 1),
(3376, 215, 'Nigde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Sanliurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Sirnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdag', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Usak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs\'k', 'DN', 1),
(3485, 220, 'Donets\'k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs\'k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel\'nyts\'kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans\'k', 'LU', 1),
(3493, 220, 'L\'viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil\'', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn\'', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3808, 236, 'Kosovo', 'KOS', 1),
(3809, 236, 'Montenegro', 'MON', 1),
(3810, 236, 'Serbia', 'SER', 1),
(3811, 236, 'Vojvodina', 'VOJ', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_extensions`
--

CREATE TABLE `donya_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(3) NOT NULL DEFAULT 0,
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_extensions`
--

INSERT INTO `donya_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"fa-IR\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"3b67bbfecf1481f888976105f55bd016\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `donya_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.40.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2019\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.11\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1593332552}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1588418269,\"unique_id\":\"1d5e29eda95aa92e7040b9c09ab4b11f1a1a2931\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1593098399}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `donya_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.18\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.18\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.18\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"April 2020\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.18.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Persian', 'language', 'fa-IR', '', 0, 1, 0, 0, '{\"name\":\"Persian\",\"type\":\"language\",\"creationDate\":\"March 2020\",\"author\":\"Hossein donyadideh\",\"copyright\":\"Copyright (C) 2013 - 2020 Donyadideh Studio. All rights reserved.\",\"authorEmail\":\"donyadideh@outlook.com\",\"authorUrl\":\"http:\\/\\/donyadideh.com\",\"version\":\"3.9.16.1\",\"description\":\"<p>[ \\u0637\\u0631\\u0627\\u062d \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u0647 \\u0646\\u0648\\u06cc\\u0633 | \\u062d\\u0633\\u06cc\\u0646 \\u062f\\u0646\\u06cc\\u0627\\u062f\\u06cc\\u062f\\u0647 ]<\\/p>\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'Persian', 'language', 'fa-IR', '', 1, 1, 0, 0, '{\"name\":\"Persian\",\"type\":\"language\",\"creationDate\":\"March 2020\",\"author\":\"Hossein donyadideh\",\"copyright\":\"Copyright (C) 2013 - 2020 Donyadideh Studio. All rights reserved.\",\"authorEmail\":\"donyadideh@outlook.com\",\"authorUrl\":\"http:\\/\\/donyadideh.com\",\"version\":\"3.9.16.1\",\"description\":\"<p>[ \\u0637\\u0631\\u0627\\u062d \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u0647 \\u0646\\u0648\\u06cc\\u0633 | \\u062d\\u0633\\u06cc\\u0646 \\u062f\\u0646\\u06cc\\u0627\\u062f\\u06cc\\u062f\\u0647 ]<\\/p>\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Persian Language Pack', 'package', 'pkg_fa-IR', '', 0, 1, 1, 0, '{\"name\":\"Persian Language Pack\",\"type\":\"package\",\"creationDate\":\"March 2020\",\"author\":\"Hossein donyadideh\",\"copyright\":\"Copyright (C) 2013 - 2020 Donyadideh Studio. All rights reserved.\",\"authorEmail\":\"donyadideh@outlook.com\",\"authorUrl\":\"http:\\/\\/donyadideh.com\",\"version\":\"3.9.16.1\",\"description\":\"<p>[ \\u0637\\u0631\\u0627\\u062d \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u0647 \\u0646\\u0648\\u06cc\\u0633 | \\u062d\\u0633\\u06cc\\u0646 \\u062f\\u0646\\u06cc\\u0627\\u062f\\u06cc\\u062f\\u0647 ]<\\/p>\",\"group\":\"\",\"filename\":\"pkg_fa-IR\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'donyadideh', 'template', 'donyadideh', '', 1, 1, 1, 0, '{\"name\":\"donyadideh\",\"type\":\"template\",\"creationDate\":\"April 2020\",\"author\":\"Hossein donyadideh\",\"copyright\":\"Copyright (C) 2013 - 2020 Donyadideh Studio. All rights reserved.\",\"authorEmail\":\"donyadideh@outlook.com\",\"authorUrl\":\"\",\"version\":\"2.0\",\"description\":\"<p>[ \\u0637\\u0631\\u0627\\u062d \\u0648 \\u0628\\u0631\\u0646\\u0627\\u0645\\u0647 \\u0646\\u0648\\u06cc\\u0633 | \\u062d\\u0633\\u06cc\\u0646 \\u062f\\u0646\\u06cc\\u0627\\u062f\\u06cc\\u062f\\u0647 ]<\\/p>\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 10028, 'EShop', 'component', 'com_eshop', '', 1, 1, 0, 0, '{\"name\":\"EShop\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"3.3.0\",\"description\":\"Powerful and Responsive Shopping Cart Extension for Joomla!\",\"group\":\"\",\"filename\":\"eshop\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 10028, 'Omnipay', 'library', 'omnipay', '', 0, 1, 1, 0, '{\"name\":\"Omnipay\",\"type\":\"library\",\"creationDate\":\"01-01-2016\",\"author\":\"Tuan Pham Ngoc\",\"copyright\":\"(C) 2016 Ossolution Team\",\"authorEmail\":\"tuanpn@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.1.0\",\"description\":\"Omnipay - a framework agnostic, multi-gateway payment processing library for PHP 5.3+ \",\"group\":\"\",\"filename\":\"omnipay\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 10028, 'Eshop Advanced Search', 'module', 'mod_eshop_advanced_search', '', 0, 1, 0, 0, '{\"name\":\"Eshop Advanced Search\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.3\",\"description\":\"This is advanced search products for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_advanced_search\"}', '{\"show_price\":\"1\",\"max_price\":\"1000\",\"min_price\":\"0\",\"show_weight\":\"0\",\"same_weight_unit\":\"1\",\"max_weight\":\"100\",\"min_weight\":\"0\",\"show_length\":\"0\",\"same_length_unit\":\"1\",\"max_length\":\"100\",\"min_length\":\"0\",\"show_width\":\"0\",\"max_width\":\"100\",\"min_width\":\"0\",\"show_height\":\"0\",\"max_height\":\"100\",\"min_height\":\"0\",\"show_stock\":\"1\",\"child_categories_level\":\"9999\",\"show_categories\":\"1\",\"show_manufacturers\":\"1\",\"show_attributes\":\"1\",\"show_options\":\"1\",\"item_id\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 10028, 'Eshop Cart', 'module', 'mod_eshop_cart', '', 0, 1, 0, 0, '{\"name\":\"Eshop Cart\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This module show cart for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_cart\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 10028, 'Eshop Category', 'module', 'mod_eshop_category', '', 0, 1, 0, 0, '{\"name\":\"Eshop Category\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This module show category for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_category\"}', '{\"show_children\":\"0\",\"show_number_products\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 10028, 'Eshop Currency', 'module', 'mod_eshop_currency', '', 0, 1, 0, 0, '{\"name\":\"Eshop Currency\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"Module to show currency for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_currency\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 10028, 'Eshop Manufacturer', 'module', 'mod_eshop_manufacturer', '', 0, 1, 0, 0, '{\"name\":\"Eshop Manufacturer\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This module show manufacturers for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_manufacturer\"}', '{\"image_width\":\"80\",\"image_height\":\"80\",\"manufacturers_total\":\"8\",\"number_manufacturer_show\":\"4\",\"slide_width\":\"680\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 10028, 'Eshop Product', 'module', 'mod_eshop_product', '', 0, 1, 0, 0, '{\"name\":\"Eshop Product\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This module show products for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_product\"}', '{\"layout\":\"default\",\"display\":\"featured\",\"product_ids\":\"\",\"number_products\":\"6\",\"products_per_row\":\"6\",\"show_tooltip\":\"1\",\"tooltip_length\":\"0\",\"show_price\":\"1\",\"show_addtocart\":\"1\",\"show_addtoquote\":\"1\",\"show_add_to_wishlist\":\"1\",\"show_add_to_compare\":\"1\",\"show_rating\":\"1\",\"enable_labels\":\"1\",\"hide_out_of_stock_products\":\"0\",\"image_width\":\"100\",\"image_height\":\"100\",\"image_resize_function\":\"resizeImage\",\"category_ids\":\"\",\"header_text\":\"\",\"footer_text\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 10028, 'Eshop Products Filter', 'module', 'mod_eshop_products_filter', '', 0, 1, 0, 0, '{\"name\":\"Eshop Products Filter\",\"type\":\"module\",\"creationDate\":\"December 2016\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 - 2016 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"2.5.0\",\"description\":\"Products filter for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_products_filter\"}', '{\"collapse_at_start\":\"0\",\"filter_by_price\":\"1\",\"max_price\":\"1000\",\"min_price\":\"0\",\"filter_by_weight\":\"0\",\"same_weight_unit\":\"1\",\"max_weight\":\"100\",\"min_weight\":\"0\",\"filter_by_length\":\"0\",\"same_length_unit\":\"1\",\"max_length\":\"100\",\"min_length\":\"0\",\"filter_by_width\":\"0\",\"max_width\":\"100\",\"min_width\":\"0\",\"filter_by_height\":\"0\",\"max_height\":\"100\",\"min_height\":\"0\",\"filter_by_stock\":\"1\",\"filter_by_manufacturers\":\"1\",\"filter_by_attributes\":\"1\",\"filter_by_options\":\"1\",\"filter_by_keyword\":\"1\",\"item_id\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 10028, 'Eshop Quote', 'module', 'mod_eshop_quote', '', 0, 1, 0, 0, '{\"name\":\"Eshop Quote\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This module show quote for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_quote\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 10028, 'Eshop Search', 'module', 'mod_eshop_search', '', 0, 1, 0, 0, '{\"name\":\"Eshop Search\",\"type\":\"module\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.3\",\"description\":\"This module searches products for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_search\"}', '{\"category_ids\":\"\",\"width_result\":\"270\",\"image_width\":\"50\",\"image_height\":\"50\",\"description_max_chars\":\"50\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 10028, 'EShop Tags', 'module', 'mod_eshop_tags', '', 0, 1, 0, 0, '{\"name\":\"EShop Tags\",\"type\":\"module\",\"creationDate\":\"June 2015\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This module is used to display tags for Eshop\",\"group\":\"\",\"filename\":\"mod_eshop_tags\"}', '{\"moduleclass_sfx\":\"\",\"max_font_size\":\"180\",\"min_font_size\":\"80 \"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 10028, 'Eshop Category content plugin', 'plugin', 'eshopcategory', 'content', 0, 0, 1, 0, '{\"name\":\"Eshop Category content plugin\",\"type\":\"plugin\",\"creationDate\":\"Feb 2011\",\"author\":\"Ossolution Team\",\"copyright\":\"Copyright (C) 2010 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This plugin is used to display products list of a specific category in a Joomla article.\",\"group\":\"\",\"filename\":\"eshopcategory\"}', '{\"number_product\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 10028, 'Eshop Currency', 'plugin', 'eshopcurrency', 'system', 0, 0, 1, 0, '{\"name\":\"Eshop Currency\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This plugin to update currencies for your shop\",\"group\":\"\",\"filename\":\"eshopcurrency\"}', '{\"time_period\":\"1\",\"time_unit\":\"day\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 10028, 'Eshop Notify', 'plugin', 'eshopnotify', 'system', 0, 0, 1, 0, '{\"name\":\"Eshop Notify\",\"type\":\"plugin\",\"creationDate\":\"December 2015\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This plugin sends the email automatically to customers when a product is available\",\"group\":\"\",\"filename\":\"eshopnotify\"}', '{\"time_period\":\"30\",\"number_emails\":\"30\",\"bcc_email\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 10028, 'Eshop Product content plugin', 'plugin', 'eshopproduct', 'content', 0, 0, 1, 0, '{\"name\":\"Eshop Product content plugin\",\"type\":\"plugin\",\"creationDate\":\"Feb 2011\",\"author\":\"Ossolution Team\",\"copyright\":\"Copyright (C) 2010 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This plugin is used to display details of a specific product in a Joomla article.\",\"group\":\"\",\"filename\":\"eshopproduct\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 10028, 'Eshop Reminder', 'plugin', 'eshopreminder', 'system', 0, 0, 1, 0, '{\"name\":\"Eshop Reminder\",\"type\":\"plugin\",\"creationDate\":\"February 2016\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This plugin sends the email automatically to store\'s admin to reminder when products in store are nearly out of stock.\",\"group\":\"\",\"filename\":\"eshopreminder\"}', '{\"time_period\":\"30\",\"number_products\":\"10\",\"received_emails\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 10028, 'Installer - EShop', 'plugin', 'eshop', 'installer', 0, 1, 1, 0, '{\"name\":\"Installer - EShop\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2010 - 2016 Ossolution Team\",\"authorEmail\":\"giangdt@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"2.3.0\",\"description\":\"Allows the installation of EShop updates. This plugin MUST be installed for the EShop updates to be installed under your Joomla site. Otherwise you will see the updates but you will not be able to install them.\",\"group\":\"\",\"filename\":\"eshop\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 10028, 'EShop - AcyMailing 6 plugin', 'plugin', 'acym', 'eshop', 0, 0, 1, 0, '{\"name\":\"EShop - AcyMailing 6 plugin\",\"type\":\"plugin\",\"creationDate\":\"May 2019\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This plugin is used to add shoppers to AcyMailing 6 when they checkout products.\",\"group\":\"\",\"filename\":\"acym\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 10028, 'EShop - Also Bought plugin', 'plugin', 'alsobought', 'eshop', 0, 0, 1, 0, '{\"name\":\"EShop - Also Bought plugin\",\"type\":\"plugin\",\"creationDate\":\"05-15-2019\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This plugin to show a list of products which are bought by other customers when they bought the current product.\",\"group\":\"\",\"filename\":\"alsobought\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 10028, 'EShop - Membership Pro Plans plugin', 'plugin', 'membershipproplans', 'eshop', 0, 0, 1, 0, '{\"name\":\"EShop - Membership Pro Plans plugin\",\"type\":\"plugin\",\"creationDate\":\"03-08-2019\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.0.0\",\"description\":\"This plugin is used to add customers as subscriber of plans when they purchase products.\",\"group\":\"\",\"filename\":\"membershipproplans\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 10028, 'Membership Pro - Eshop Plugin', 'plugin', 'eshop', 'osmembership', 0, 0, 1, 0, '{\"name\":\"Membership Pro - Eshop Plugin\",\"type\":\"plugin\",\"creationDate\":\"July 2014\",\"author\":\"Ossolution Team\",\"copyright\":\"Ossolution Team\",\"authorEmail\":\"services@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This plugin is used to assign subscribers to Eshop customer groups when they subscribe to a Subscription Plan in Membership Pro\",\"group\":\"\",\"filename\":\"eshop\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10028, 'Search - EShop', 'plugin', 'eshop', 'search', 0, 1, 1, 0, '{\"name\":\"Search - EShop\",\"type\":\"plugin\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"Allows searching products in EShop component via standard Joomla search\",\"group\":\"\",\"filename\":\"eshop\"}', '{\"search_limit\":\"50\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 10028, 'User - Eshop plugin', 'plugin', 'eshop', 'user', 0, 1, 1, 0, '{\"name\":\"User - Eshop plugin\",\"type\":\"plugin\",\"creationDate\":\"July 2014\",\"author\":\"Ossolution Team\",\"copyright\":\"Ossolution Team\",\"authorEmail\":\"services@joomdonation.com\",\"authorUrl\":\"www.joomdonation.com\",\"version\":\"1.3.1\",\"description\":\"This plugin is used to create Eshop customer when they sign up for an account via Joomla Registration Form\",\"group\":\"\",\"filename\":\"eshop\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'EShop Package', 'package', 'pkg_eshop', '', 0, 1, 1, 0, '{\"name\":\"EShop Package\",\"type\":\"package\",\"creationDate\":\"May 2013\",\"author\":\"Giang Dinh Truong\",\"copyright\":\"Copyright (C) 2012 Ossolution Team\",\"authorEmail\":\"contact@joomdonation.com\",\"authorUrl\":\"http:\\/\\/www.joomdonation.com\",\"version\":\"3.3.0\",\"description\":\"Powerful and Responsive Shopping Cart Extension for Joomla! 3.x\",\"group\":\"\",\"filename\":\"pkg_eshop\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 10033, 'yootheme', 'template', 'yootheme', '', 0, 1, 1, 0, '{\"name\":\"yootheme\",\"type\":\"template\",\"creationDate\":\"April 2020\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"https:\\/\\/yootheme.com\",\"version\":\"2.0.8\",\"description\":\"\\n        \\n            <div id=\\\"tmpl-description\\\">A powerful, flexible and elegant website builder that allows you to create complex pages within minutes and customize every aspect of the theme.<\\/div>\\n            <script src=\\\"..\\/templates\\/yootheme\\/templateDetails.min.js\\\"><\\/script>\\n        \\n    \",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"yootheme\":\"true\",\"widgetkit\":\"noconflict\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 10033, 'System - YOOtheme Framework', 'plugin', 'yootheme', 'system', 0, 1, 1, 0, '{\"name\":\"System - YOOtheme Framework\",\"type\":\"plugin\",\"creationDate\":\"April 2020\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"https:\\/\\/yootheme.com\",\"version\":\"2.0.8\",\"description\":\"System Plugin for YOOtheme Pro.\",\"group\":\"\",\"filename\":\"yootheme\"}', '{}', '[]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 10033, 'Installer - YOOtheme', 'plugin', 'yootheme', 'installer', 0, 1, 1, 0, '{\"name\":\"Installer - YOOtheme\",\"type\":\"plugin\",\"creationDate\":\"April 2017\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"http:\\/\\/yootheme.com\",\"version\":\"1.0.3\",\"description\":\"PLG_INSTALLER_YOOTHEME_DESCRIPTION\",\"group\":\"\",\"filename\":\"yootheme\"}', '{\"apikey\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 10033, 'Builder', 'module', 'mod_yootheme_builder', '', 0, 1, 0, 0, '{\"name\":\"Builder\",\"type\":\"module\",\"creationDate\":\"April 2020\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"https:\\/\\/yootheme.com\",\"version\":\"2.0.8\",\"description\":\"This module allows you to create content using the YOOtheme Builder.\",\"group\":\"\",\"filename\":\"mod_yootheme_builder\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 0, 'YOOtheme', 'package', 'pkg_yootheme', '', 0, 1, 1, 0, '{\"name\":\"YOOtheme\",\"type\":\"package\",\"creationDate\":\"April 2020\",\"author\":\"YOOtheme\",\"copyright\":\"Copyright (C) YOOtheme GmbH\",\"authorEmail\":\"info@yootheme.com\",\"authorUrl\":\"https:\\/\\/yootheme.com\",\"version\":\"2.0.8\",\"description\":\"A powerful, flexible and elegant website builder that allows you to create complex pages within minutes and customize every aspect of the theme.\",\"group\":\"\",\"filename\":\"pkg_yootheme\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_fields`
--

CREATE TABLE `donya_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_fields_categories`
--

CREATE TABLE `donya_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_fields_groups`
--

CREATE TABLE `donya_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_fields_values`
--

CREATE TABLE `donya_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_filters`
--

CREATE TABLE `donya_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links`
--

CREATE TABLE `donya_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `state` int(5) DEFAULT 1,
  `access` int(5) DEFAULT 0,
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms0`
--

CREATE TABLE `donya_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms1`
--

CREATE TABLE `donya_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms2`
--

CREATE TABLE `donya_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms3`
--

CREATE TABLE `donya_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms4`
--

CREATE TABLE `donya_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms5`
--

CREATE TABLE `donya_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms6`
--

CREATE TABLE `donya_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms7`
--

CREATE TABLE `donya_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms8`
--

CREATE TABLE `donya_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_terms9`
--

CREATE TABLE `donya_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termsa`
--

CREATE TABLE `donya_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termsb`
--

CREATE TABLE `donya_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termsc`
--

CREATE TABLE `donya_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termsd`
--

CREATE TABLE `donya_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termse`
--

CREATE TABLE `donya_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_links_termsf`
--

CREATE TABLE `donya_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_taxonomy`
--

CREATE TABLE `donya_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donya_finder_taxonomy`
--

INSERT INTO `donya_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_taxonomy_map`
--

CREATE TABLE `donya_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_terms`
--

CREATE TABLE `donya_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT 0,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_terms_common`
--

CREATE TABLE `donya_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donya_finder_terms_common`
--

INSERT INTO `donya_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_tokens`
--

CREATE TABLE `donya_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_tokens_aggregate`
--

CREATE TABLE `donya_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_finder_types`
--

CREATE TABLE `donya_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donya_languages`
--

CREATE TABLE `donya_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_languages`
--

INSERT INTO `donya_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 60, 'fa-IR', 'Persian (Iran)', 'Persian (Iran)', 'fa', 'fa_ir', '', '', '', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `donya_menu`
--

CREATE TABLE `donya_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_menu`
--

INSERT INTO `donya_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 63, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 0, '*', 0),
(102, 'main', 'Eshop', 'eshop', '', 'eshop', 'index.php?option=com_eshop', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 43, 44, 0, '', 1),
(103, 'mainmenu', 'shop', 'shop', '', 'shop', 'index.php?option=com_eshop&view=frontpage', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"num_categories\":\"0\",\"num_products\":\"12\",\"product_type\":\"latest\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 45, 46, 1, '*', 0),
(104, 'hiddenmenu', 'uk', 'uk', '', 'uk', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 49, 50, 0, '*', 0),
(105, 'hiddenmenu', 'cart', 'cart', '', 'cart', 'index.php?option=com_eshop&view=cart', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 51, 52, 0, '*', 0),
(106, 'hiddenmenu', 'checkout', 'checkout', '', 'checkout', 'index.php?option=com_eshop&view=checkout', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 53, 54, 0, '*', 0),
(107, 'mainmenu', 'profile', 'profile', '', 'profile', 'index.php?option=com_users&view=profile', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 47, 48, 0, '*', 0),
(108, 'hiddenmenu', 'customer', 'customer', '', 'customer', 'index.php?option=com_eshop&view=customer', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 55, 56, 0, '*', 0),
(109, 'hiddenmenu', 'پیش خرید', 'quote', '', 'quote', 'index.php?option=com_eshop&view=quote', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 57, 58, 0, '*', 0),
(110, 'hiddenmenu', 'مقایسه', 'compare', '', 'compare', 'index.php?option=com_eshop&view=compare', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 59, 60, 0, '*', 0),
(111, 'hiddenmenu', 'علاقه مندی', 'wishlist', '', 'wishlist', 'index.php?option=com_eshop&view=wishlist', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_menu_types`
--

CREATE TABLE `donya_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_menu_types`
--

INSERT INTO `donya_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 76, 'hiddenmenu', 'hidden menu', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_messages`
--

CREATE TABLE `donya_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_messages_cfg`
--

CREATE TABLE `donya_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_modules`
--

CREATE TABLE `donya_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_modules`
--

INSERT INTO `donya_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"menutype\":\"*\",\"preset\":\"joomla\",\"check\":1,\"shownew\":1,\"showhelp\":0,\"forum_url\":false,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'navbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 0, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":1,\"name\":0,\"profilelink\":0,\"usesecure\":0,\"usetext\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"yoo_config\":\"{\\\"visibility\\\":\\\"\\\",\\\"style\\\":\\\"\\\",\\\"title_style\\\":\\\"\\\",\\\"title_decoration\\\":\\\"\\\",\\\"text_align\\\":\\\"\\\",\\\"text_align_breakpoint\\\":\\\"\\\",\\\"text_align_fallback\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"maxwidth\\\":\\\"\\\",\\\"list_style\\\":\\\"\\\",\\\"link_style\\\":\\\"\\\",\\\"menu_style\\\":\\\"nav\\\"}\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*'),
(90, 62, 'Eshop Advanced Search', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_advanced_search', 1, 1, '', 0, '*'),
(91, 63, 'Eshop Cart', '', '', 1, 'navbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_eshop_cart', 1, 0, '{\"moduleclass_sfx\":\"\",\"layout\":\"_:default\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"yoo_config\":\"{\\\"visibility\\\":\\\"\\\",\\\"style\\\":\\\"\\\",\\\"title_style\\\":\\\"\\\",\\\"title_decoration\\\":\\\"\\\",\\\"text_align\\\":\\\"\\\",\\\"text_align_breakpoint\\\":\\\"\\\",\\\"text_align_fallback\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"maxwidth\\\":\\\"\\\",\\\"list_style\\\":\\\"\\\",\\\"link_style\\\":\\\"\\\",\\\"menu_style\\\":\\\"nav\\\"}\"}', 0, '*'),
(92, 64, 'Eshop Category', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_category', 1, 1, '', 0, '*'),
(93, 65, 'Eshop Currency', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_currency', 1, 1, '', 0, '*'),
(94, 66, 'Eshop Manufacturer', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_manufacturer', 1, 1, '', 0, '*'),
(95, 67, 'Eshop Product', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_product', 1, 1, '', 0, '*'),
(96, 68, 'Eshop Products Filter', '', '', 1, 'sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_products_filter', 1, 0, '{\"moduleclass_sfx\":\"\",\"collapse_at_start\":\"0\",\"filter_by_price\":\"1\",\"max_price\":\"100000\",\"min_price\":\"0\",\"filter_by_weight\":\"0\",\"same_weight_unit\":\"1\",\"max_weight\":\"100\",\"min_weight\":\"0\",\"filter_by_length\":\"0\",\"same_length_unit\":\"1\",\"max_length\":\"100\",\"min_length\":\"0\",\"filter_by_width\":\"0\",\"max_width\":\"100\",\"min_width\":\"0\",\"filter_by_height\":\"0\",\"max_height\":\"100\",\"min_height\":\"0\",\"filter_by_stock\":\"1\",\"filter_by_manufacturers\":\"1\",\"filter_by_attributes\":\"1\",\"filter_by_options\":\"1\",\"filter_by_keyword\":\"1\",\"item_id\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"yoo_config\":\"{\\\"visibility\\\":\\\"\\\",\\\"style\\\":\\\"\\\",\\\"title_style\\\":\\\"\\\",\\\"title_decoration\\\":\\\"\\\",\\\"text_align\\\":\\\"\\\",\\\"text_align_breakpoint\\\":\\\"\\\",\\\"text_align_fallback\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"maxwidth\\\":\\\"\\\",\\\"list_style\\\":\\\"\\\",\\\"link_style\\\":\\\"\\\",\\\"menu_style\\\":\\\"nav\\\"}\"}', 0, '*'),
(97, 69, 'Eshop Quote', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_quote', 1, 1, '', 0, '*'),
(98, 70, 'Eshop Search', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_search', 1, 1, '', 0, '*'),
(99, 71, 'EShop Tags', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_eshop_tags', 1, 1, '', 0, '*'),
(100, 72, 'آمار و آیکن داشبرد', '', NULL, 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 1, 0, '{\"serverinfo\":1,\"siteinfo\":1,\"counter\":1,\"increase\":0,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(101, 75, 'Builder', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_yootheme_builder', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `donya_modules_menu`
--

CREATE TABLE `donya_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_modules_menu`
--

INSERT INTO `donya_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(91, 0),
(96, 103),
(100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_newsfeeds`
--

CREATE TABLE `donya_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_overrider`
--

CREATE TABLE `donya_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_postinstall_messages`
--

CREATE TABLE `donya_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT 1,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_postinstall_messages`
--

INSERT INTO `donya_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 0),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 0),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 0),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 0),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 0),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_privacy_consents`
--

CREATE TABLE `donya_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(10) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_privacy_requests`
--

CREATE TABLE `donya_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_redirect_links`
--

CREATE TABLE `donya_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_schemas`
--

CREATE TABLE `donya_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_schemas`
--

INSERT INTO `donya_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.16-2020-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `donya_session`
--

CREATE TABLE `donya_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_session`
--

INSERT INTO `donya_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x627430623132356b6e71706c6e626e7670306630303771386164, 1, 1, 1593336172, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU5MzMzNjE3MjtzOjQ6Imxhc3QiO2k6MTU5MzMzNjE3MjtzOjM6Im5vdyI7aToxNTkzMzM2MTcyO31zOjU6InRva2VuIjtzOjMyOiJSYXU5UnJIVkVTVFlNOXhpVTVGR0RuTVRIRko5RmsxdSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x636238376b686e71316c396b356531623375306f6f30746e6131, 0, 1, 1593336161, 'joomla|s:1148:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo5OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1OTMzMzI2NDM7czo0OiJsYXN0IjtpOjE1OTMzMzYxNTU7czozOiJub3ciO2k6MTU5MzMzNjE2MTt9czo1OiJ0b2tlbiI7czozMjoiWHVwOWtDYWtGYWF3NFRqUlVYSHN3cUozVEVZeno1TlEiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoic29ydF9vcHRpb25zIjtzOjE0OiJhLm9yZGVyaW5nLUFTQyI7czo5OiJmcm9tX3ZpZXciO3M6ODoiY2F0ZWdvcnkiO31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MjE6ImNvbnRpbnVlX3Nob3BwaW5nX3VybCI7czoyMjoiaHR0cDovL2xvY2FsaG9zdC9zaG9wLyI7czoxODoidmlld2VkX3Byb2R1Y3RfaWRzIjthOjM6e2k6MDtpOjM7aToxO2k6MTE7aToyO2k6OTt9czo0OiJjYXJ0IjthOjE6e2k6OTtpOjM7fXM6MTU6InNoaXBwaW5nX21ldGhvZCI7TjtzOjE2OiJzaGlwcGluZ19tZXRob2RzIjtOO3M6MTQ6InBheW1lbnRfbWV0aG9kIjtOO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `donya_tags`
--

CREATE TABLE `donya_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_tags`
--

INSERT INTO `donya_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 234, '2020-05-02 11:17:38', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donya_template_styles`
--

CREATE TABLE `donya_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_template_styles`
--

INSERT INTO `donya_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '0', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'donyadideh', 1, '1', 'donyadideh - Default', '{}'),
(10, 'yootheme', 0, '1', 'yootheme - پیش فرض', '{\"config\":\"{\\\"menu\\\":{\\\"items\\\":[],\\\"positions\\\":{\\\"navbar\\\":\\\"mainmenu\\\",\\\"mobile\\\":\\\"mainmenu\\\"}},\\\"site\\\":{\\\"layout\\\":\\\"full\\\",\\\"boxed\\\":{\\\"alignment\\\":1,\\\"header_transparent\\\":\\\"\\\"},\\\"image_size\\\":\\\"cover\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"image_effect\\\":\\\"fixed\\\",\\\"toolbar_width\\\":\\\"default\\\"},\\\"header\\\":{\\\"layout\\\":\\\"horizontal-right\\\",\\\"width\\\":\\\"default\\\",\\\"search\\\":\\\"\\\",\\\"search_style\\\":\\\"\\\",\\\"social\\\":\\\"\\\"},\\\"navbar\\\":{\\\"dropdown_align\\\":\\\"left\\\",\\\"toggle_menu_style\\\":\\\"default\\\",\\\"offcanvas\\\":{\\\"mode\\\":\\\"slide\\\"},\\\"sticky\\\":0,\\\"style\\\":\\\"\\\",\\\"dropbar\\\":\\\"\\\"},\\\"mobile\\\":{\\\"breakpoint\\\":\\\"m\\\",\\\"logo\\\":\\\"center\\\",\\\"toggle\\\":\\\"left\\\",\\\"search\\\":\\\"right\\\",\\\"menu_style\\\":\\\"default\\\",\\\"animation\\\":\\\"offcanvas\\\",\\\"offcanvas\\\":{\\\"mode\\\":\\\"slide\\\"},\\\"dropdown\\\":\\\"slide\\\"},\\\"top\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"column_gap\\\":\\\"\\\",\\\"row_gap\\\":\\\"\\\",\\\"divider\\\":\\\"\\\"},\\\"main_sidebar\\\":{\\\"width\\\":\\\"1-4\\\",\\\"min_width\\\":\\\"200\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"first\\\":true,\\\"gutter\\\":\\\"\\\",\\\"divider\\\":0},\\\"bottom\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"column_gap\\\":\\\"\\\",\\\"row_gap\\\":\\\"\\\",\\\"divider\\\":\\\"\\\"},\\\"footer\\\":{\\\"content\\\":{\\\"type\\\":\\\"layout\\\",\\\"props\\\":[],\\\"version\\\":\\\"2.0.8\\\"}},\\\"cookie\\\":{\\\"type\\\":\\\"bar\\\",\\\"bar_position\\\":\\\"bottom\\\",\\\"bar_style\\\":\\\"muted\\\",\\\"notification_position\\\":\\\"bottom-center\\\",\\\"message\\\":\\\"By using this website, you agree to the use of cookies as described in our Privacy Policy.\\\",\\\"button_consent_style\\\":null,\\\"button_consent_text\\\":\\\"Ok\\\",\\\"button_reject_style\\\":\\\"default\\\",\\\"button_reject_text\\\":\\\"No, Thanks\\\"},\\\"lazyload\\\":false,\\\"post\\\":{\\\"width\\\":\\\"default\\\",\\\"padding\\\":\\\"\\\",\\\"content_width\\\":\\\"\\\",\\\"image_margin\\\":\\\"medium\\\",\\\"image_width\\\":\\\"\\\",\\\"image_height\\\":\\\"\\\",\\\"header_align\\\":0,\\\"title_margin\\\":\\\"large\\\",\\\"meta_margin\\\":\\\"default\\\",\\\"meta_style\\\":\\\"sentence\\\",\\\"content_margin\\\":\\\"medium\\\",\\\"content_dropcap\\\":0},\\\"blog\\\":{\\\"width\\\":\\\"default\\\",\\\"padding\\\":\\\"\\\",\\\"grid_column_gap\\\":\\\"\\\",\\\"grid_row_gap\\\":\\\"large\\\",\\\"grid_breakpoint\\\":\\\"\\\",\\\"image_margin\\\":\\\"medium\\\",\\\"image_width\\\":\\\"\\\",\\\"image_height\\\":\\\"\\\",\\\"header_align\\\":0,\\\"title_style\\\":\\\"\\\",\\\"title_margin\\\":\\\"large\\\",\\\"meta_margin\\\":\\\"default\\\",\\\"content_excerpt\\\":0,\\\"content_length\\\":\\\"\\\",\\\"content_margin\\\":\\\"medium\\\",\\\"content_align\\\":0,\\\"button_style\\\":\\\"default\\\",\\\"button_margin\\\":\\\"medium\\\",\\\"navigation\\\":\\\"pagination\\\"},\\\"media_folder\\\":\\\"yootheme\\\",\\\"search_module\\\":\\\"mod_search\\\",\\\"less\\\":[],\\\"custom_less\\\":\\\"\\\",\\\"style\\\":\\\"uikit\\\",\\\"version\\\":\\\"2.0.8\\\",\\\"logo\\\":{\\\"text\\\":\\\"SHOP\\\"},\\\"favicon\\\":\\\"images\\\\\\/favicon.png\\\",\\\"touchicon\\\":\\\"images\\\\\\/apple_touch_icon.png\\\",\\\"child_theme\\\":\\\"\\\",\\\"highlight\\\":\\\"\\\",\\\"jquery\\\":false}\",\"yootheme\":\"true\",\"widgetkit\":\"noconflict\"}');

-- --------------------------------------------------------

--
-- Table structure for table `donya_ucm_base`
--

CREATE TABLE `donya_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_ucm_content`
--

CREATE TABLE `donya_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT 0,
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `donya_ucm_history`
--

CREATE TABLE `donya_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_ucm_history`
--

INSERT INTO `donya_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2020-05-02 12:00:01', 234, 955, 'e05f0b17ff380668c0ed9a98fcc633d723204776', '{\"id\":1,\"asset_id\":73,\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 12:00:01\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `donya_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(2, 2, 1, '', '2020-05-02 12:01:48', 234, 61162, '2a3077911bcc7e08a294fceaa48101bbe14726b8', '{\"id\":2,\"asset_id\":74,\"title\":\"uk\",\"alias\":\"uk\",\"introtext\":\"<body class=\\\"uk-animation-fade\\\"><div class=\\\"uk-offcanvas-content\\\">\\r\\n\\r\\n    <nav class=\\\"uk-navbar-container\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n            <div uk-navbar=\\\"\\\" class=\\\"uk-navbar\\\">\\r\\n                <div class=\\\"uk-navbar-left\\\">\\r\\n\\r\\n                    <a class=\\\"uk-navbar-item uk-logo\\\" href=\\\"#\\\">Logo<\\/a>\\r\\n\\r\\n                    <ul class=\\\"uk-navbar-nav\\\">\\r\\n                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                        <li>\\r\\n                            <a href=\\\"#\\\" aria-expanded=\\\"false\\\">Parent<\\/a>\\r\\n                            <div class=\\\"uk-navbar-dropdown\\\">\\r\\n                                <ul class=\\\"uk-nav uk-navbar-dropdown-nav\\\">\\r\\n                                    <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                                    <li class=\\\"uk-parent\\\">\\r\\n                                        <a href=\\\"#\\\">Parent<\\/a>\\r\\n                                        <ul class=\\\"uk-nav-sub\\\">\\r\\n                                            <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                            <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                        <\\/ul>\\r\\n                                    <\\/li>\\r\\n                                    <li class=\\\"uk-nav-header\\\">Header<\\/li>\\r\\n                                    <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: table\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"table\\\"><rect x=\\\"1\\\" y=\\\"3\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"7\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"11\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"15\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                    <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: thumbnails\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"thumbnails\\\"><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                    <li class=\\\"uk-nav-divider\\\"><\\/li>\\r\\n                                    <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: trash\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"trash\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\\\"><\\/polyline><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\\\"><\\/polyline><rect x=\\\"8\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"11\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"2\\\" y=\\\"3\\\" width=\\\"16\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                <\\/ul>\\r\\n                            <\\/div>\\r\\n                        <\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-navbar-right\\\">\\r\\n                    <a class=\\\"uk-navbar-toggle uk-icon\\\" href=\\\"#modal\\\" uk-icon=\\\"icon: more-vertical\\\" uk-toggle=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"more-vertical\\\"><circle cx=\\\"10\\\" cy=\\\"3\\\" r=\\\"2\\\"><\\/circle><circle cx=\\\"10\\\" cy=\\\"10\\\" r=\\\"2\\\"><\\/circle><circle cx=\\\"10\\\" cy=\\\"17\\\" r=\\\"2\\\"><\\/circle><\\/svg><\\/a>\\r\\n                    <a class=\\\"uk-navbar-toggle uk-search-icon uk-icon\\\" href=\\\"#modal-search\\\" uk-search-icon=\\\"\\\" uk-toggle=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"search-icon\\\"><circle fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" cx=\\\"9\\\" cy=\\\"9\\\" r=\\\"7\\\"><\\/circle><path fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" d=\\\"M14,14 L18,18 L14,14 Z\\\"><\\/path><\\/svg><\\/a>\\r\\n                    <a class=\\\"uk-navbar-toggle uk-navbar-toggle-icon uk-icon\\\" href=\\\"#offcanvas\\\" uk-navbar-toggle-icon=\\\"\\\" uk-toggle=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"navbar-toggle-icon\\\"><rect y=\\\"9\\\" width=\\\"20\\\" height=\\\"2\\\"><\\/rect><rect y=\\\"3\\\" width=\\\"20\\\" height=\\\"2\\\"><\\/rect><rect y=\\\"15\\\" width=\\\"20\\\" height=\\\"2\\\"><\\/rect><\\/svg><\\/a>\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n        <\\/div>\\r\\n    <\\/nav>\\r\\n\\r\\n    <div class=\\\"uk-section uk-section-default\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n\\r\\n            <div uk-grid=\\\"\\\" class=\\\"uk-grid\\\">\\r\\n                <div class=\\\"uk-width-2-3@m uk-first-column\\\">\\r\\n\\r\\n                    <ul class=\\\"uk-breadcrumb\\\">\\r\\n                        <li><a href=\\\"#\\\">Home<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Blog<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><a>Category<\\/a><\\/li>\\r\\n                        <li><span>Post<\\/span><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                    <article class=\\\"uk-article\\\">\\r\\n\\r\\n                        <h1 class=\\\"uk-article-title\\\"><a class=\\\"uk-link-reset\\\" href=\\\"#\\\">Article Title<\\/a><\\/h1>\\r\\n\\r\\n                        <hr class=\\\"uk-divider-small\\\">\\r\\n\\r\\n                        <p class=\\\"uk-text-lead\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n                        <p class=\\\"uk-column-1-2@s uk-dropcap\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n\\r\\n                        <p class=\\\"uk-article-meta\\\">Written by <a href=\\\"#\\\">Super User<\\/a> on 12 April 2012. Posted in <a href=\\\"#\\\">Blog<\\/a><\\/p>\\r\\n\\r\\n                        <hr class=\\\"uk-divider-icon uk-margin-medium\\\">\\r\\n\\r\\n                        <div class=\\\"uk-grid-small uk-child-width-auto uk-flex-middle uk-margin-medium uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                            <div class=\\\"uk-first-column\\\">\\r\\n                                <button class=\\\"uk-button uk-button-default\\\" aria-expanded=\\\"false\\\">Default<\\/button>\\r\\n                                <div uk-dropdown=\\\"mode: click\\\" class=\\\"uk-dropdown\\\">\\r\\n                                    <ul class=\\\"uk-nav uk-dropdown-nav\\\">\\r\\n                                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                                        <li class=\\\"uk-parent\\\">\\r\\n                                            <a href=\\\"#\\\">Parent<\\/a>\\r\\n                                            <ul class=\\\"uk-nav-sub\\\">\\r\\n                                                <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                                <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                            <\\/ul>\\r\\n                                        <\\/li>\\r\\n                                        <li class=\\\"uk-nav-header\\\">Header<\\/li>\\r\\n                                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: table\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"table\\\"><rect x=\\\"1\\\" y=\\\"3\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"7\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"11\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"15\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: thumbnails\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"thumbnails\\\"><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                        <li class=\\\"uk-nav-divider\\\"><\\/li>\\r\\n                                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: trash\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"trash\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\\\"><\\/polyline><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\\\"><\\/polyline><rect x=\\\"8\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"11\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"2\\\" y=\\\"3\\\" width=\\\"16\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                                    <\\/ul>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <button class=\\\"uk-button uk-button-primary\\\">Primary<\\/button>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <button class=\\\"uk-button uk-button-secondary\\\">Secondary<\\/button>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <button class=\\\"uk-button uk-button-danger\\\">Danger<\\/button>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <button class=\\\"uk-button uk-button-default\\\" disabled=\\\"\\\">Disabled<\\/button>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n                        <div class=\\\"uk-child-width-1-2 uk-child-width-1-4@s uk-margin uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                            <div class=\\\"uk-first-column\\\">\\r\\n                                <ul class=\\\"uk-list\\\">\\r\\n                                    <li><a href=\\\"#\\\">a element<\\/a><\\/li>\\r\\n                                    <li><abbr title=\\\"Title text\\\">abbr element<\\/abbr><\\/li>\\r\\n                                    <li><code>code element<\\/code><\\/li>\\r\\n                                    <li><del>del element<\\/del><\\/li>\\r\\n                                    <li><dfn title=\\\"Title text\\\">dfn element<\\/dfn><\\/li>\\r\\n                                    <li><a href=\\\"#\\\" class=\\\"uk-link-muted\\\">Link Muted<\\/a><\\/li>\\r\\n                                <\\/ul>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <ul class=\\\"uk-list\\\">\\r\\n                                    <li><em>em element<\\/em><\\/li>\\r\\n                                    <li><ins>ins element<\\/ins><\\/li>\\r\\n                                    <li><mark>mark element<\\/mark><\\/li>\\r\\n                                    <li><q>q <q>inside<\\/q> a q<\\/q><\\/li>\\r\\n                                    <li><strong>strong element<\\/strong><\\/li>\\r\\n                                    <li><a href=\\\"#\\\" class=\\\"uk-link-reset\\\">Link Reset<\\/a><\\/li>\\r\\n                                <\\/ul>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <ul class=\\\"uk-list\\\">\\r\\n                                    <li class=\\\"uk-text-muted\\\">Text Muted<\\/li>\\r\\n                                    <li class=\\\"uk-text-primary\\\">Text Primary<\\/li>\\r\\n                                    <li class=\\\"uk-text-success\\\">Text Success<\\/li>\\r\\n                                    <li class=\\\"uk-text-warning\\\">Text Warning<\\/li>\\r\\n                                    <li class=\\\"uk-text-danger\\\">Text Danger<\\/li>\\r\\n                                    <li class=\\\"uk-text-meta\\\">Text Meta<\\/li>\\r\\n                                <\\/ul>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <ul class=\\\"uk-list\\\">\\r\\n                                    <li><span class=\\\"uk-label\\\">Default<\\/span><\\/li>\\r\\n                                    <li><span class=\\\"uk-label uk-label-success\\\">Success<\\/span><\\/li>\\r\\n                                    <li><span class=\\\"uk-label uk-label-warning\\\">Warning<\\/span><\\/li>\\r\\n                                    <li><span class=\\\"uk-label uk-label-danger\\\">Danger<\\/span><\\/li>\\r\\n                                    <li><a class=\\\"uk-badge\\\" href=\\\"#\\\">1<\\/a><\\/li>\\r\\n                                    <li>\\r\\n                                        <a class=\\\"uk-icon-button uk-icon\\\" href=\\\"#\\\" uk-icon=\\\"icon: home\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"home\\\"><polygon points=\\\"18.65 11.35 10 2.71 1.35 11.35 0.65 10.65 10 1.29 19.35 10.65\\\"><\\/polygon><polygon points=\\\"15 4 18 4 18 7 17 7 17 5 15 5\\\"><\\/polygon><polygon points=\\\"3 11 4 11 4 18 7 18 7 12 12 12 12 18 16 18 16 11 17 11 17 19 11 19 11 13 8 13 8 19 3 19\\\"><\\/polygon><\\/svg><\\/a>\\r\\n                                        <a class=\\\"uk-icon-button uk-icon\\\" href=\\\"#\\\" uk-icon=\\\"icon: github\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"github\\\"><path d=\\\"M10,1 C5.03,1 1,5.03 1,10 C1,13.98 3.58,17.35 7.16,18.54 C7.61,18.62 7.77,18.34 7.77,18.11 C7.77,17.9 7.76,17.33 7.76,16.58 C5.26,17.12 4.73,15.37 4.73,15.37 C4.32,14.33 3.73,14.05 3.73,14.05 C2.91,13.5 3.79,13.5 3.79,13.5 C4.69,13.56 5.17,14.43 5.17,14.43 C5.97,15.8 7.28,15.41 7.79,15.18 C7.87,14.6 8.1,14.2 8.36,13.98 C6.36,13.75 4.26,12.98 4.26,9.53 C4.26,8.55 4.61,7.74 5.19,7.11 C5.1,6.88 4.79,5.97 5.28,4.73 C5.28,4.73 6.04,4.49 7.75,5.65 C8.47,5.45 9.24,5.35 10,5.35 C10.76,5.35 11.53,5.45 12.25,5.65 C13.97,4.48 14.72,4.73 14.72,4.73 C15.21,5.97 14.9,6.88 14.81,7.11 C15.39,7.74 15.73,8.54 15.73,9.53 C15.73,12.99 13.63,13.75 11.62,13.97 C11.94,14.25 12.23,14.8 12.23,15.64 C12.23,16.84 12.22,17.81 12.22,18.11 C12.22,18.35 12.38,18.63 12.84,18.54 C16.42,17.35 19,13.98 19,10 C19,5.03 14.97,1 10,1 L10,1 Z\\\"><\\/path><\\/svg><\\/a>\\r\\n                                        <a class=\\\"uk-icon-link uk-icon\\\" href=\\\"#\\\" uk-icon=\\\"icon: trash\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"trash\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\\\"><\\/polyline><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\\\"><\\/polyline><rect x=\\\"8\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"11\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"2\\\" y=\\\"3\\\" width=\\\"16\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/a>\\r\\n                                    <\\/li>\\r\\n                                <\\/ul>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <pre class=\\\"uk-pre uk-margin-medium\\\"><code>&lt;div class=\\\"myclass\\\"&gt;...&lt;div&gt;<\\/code><\\/pre>\\r\\n\\r\\n                        <blockquote class=\\\"uk-margin-medium\\\" cite=\\\"#\\\">\\r\\n                            <p>The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a footer or cite element.<\\/p>\\r\\n                            <footer>Someone famous in <cite><a href=\\\"#\\\">Source Title<\\/a><\\/cite><\\/footer>\\r\\n                        <\\/blockquote>\\r\\n\\r\\n                        <div class=\\\"uk-grid-small uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                            <div class=\\\"uk-first-column\\\">\\r\\n                                <a class=\\\"uk-button uk-button-text\\\" href=\\\"#\\\">Read more<\\/a>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                                <a class=\\\"uk-button uk-button-text\\\" href=\\\"#\\\">5 Comments<\\/a>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                    <\\/article>\\r\\n\\r\\n                    <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n                    <ul class=\\\"uk-comment-list uk-margin-medium\\\">\\r\\n                        <li>\\r\\n                            <article class=\\\"uk-comment uk-visible-toggle\\\" tabindex=\\\"-1\\\">\\r\\n                                <header class=\\\"uk-comment-header uk-position-relative\\\">\\r\\n                                    <div class=\\\"uk-grid-medium uk-flex-middle uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                                        <div class=\\\"uk-width-auto uk-first-column\\\">\\r\\n                                            <canvas class=\\\"uk-comment-avatar test-img-small\\\" width=\\\"50\\\" height=\\\"50\\\"><\\/canvas>\\r\\n                                        <\\/div>\\r\\n                                        <div class=\\\"uk-width-expand\\\">\\r\\n                                            <h4 class=\\\"uk-comment-title uk-margin-remove\\\"><a class=\\\"uk-link-reset\\\" href=\\\"#\\\">Author<\\/a><\\/h4>\\r\\n                                            <p class=\\\"uk-comment-meta uk-margin-remove-top\\\"><a class=\\\"uk-link-reset\\\" href=\\\"#\\\">12 days ago<\\/a><\\/p>\\r\\n                                        <\\/div>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"uk-position-top-right uk-position-small uk-hidden-hover\\\"><a class=\\\"uk-button uk-button-text\\\" href=\\\"#\\\">Reply<\\/a><\\/div>\\r\\n                                <\\/header>\\r\\n                                <div class=\\\"uk-comment-body\\\">\\r\\n                                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<\\/p>\\r\\n                                <\\/div>\\r\\n                            <\\/article>\\r\\n                        <\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                    <ul class=\\\"uk-pagination uk-flex-center\\\" uk-margin=\\\"\\\">\\r\\n                        <li class=\\\"uk-first-column\\\"><a href=\\\"#\\\"><span uk-pagination-previous=\\\"\\\" class=\\\"uk-pagination-previous uk-icon\\\"><svg width=\\\"7\\\" height=\\\"12\\\" viewBox=\\\"0 0 7 12\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"pagination-previous\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.2\\\" points=\\\"1 1 6 6 1 11\\\"><\\/polyline><\\/svg><\\/span><\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">1<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><span>...<\\/span><\\/li>\\r\\n                        <li><a href=\\\"#\\\">4<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">5<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">6<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-active\\\"><span>7<\\/span><\\/li>\\r\\n                        <li><a href=\\\"#\\\">8<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">9<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">10<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><span>...<\\/span><\\/li>\\r\\n                        <li><a href=\\\"#\\\">20<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\"><span uk-pagination-next=\\\"\\\" class=\\\"uk-pagination-next uk-icon\\\"><svg width=\\\"7\\\" height=\\\"12\\\" viewBox=\\\"0 0 7 12\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"pagination-next\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.2\\\" points=\\\"6 1 1 6 6 11\\\"><\\/polyline><\\/svg><\\/span><\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                    <h1 class=\\\"uk-heading-hero\\\">Hero Heading<\\/h1>\\r\\n\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-expand@m\\\">\\r\\n\\r\\n                    <div class=\\\"uk-margin-medium-bottom\\\">\\r\\n                        <form class=\\\"uk-search uk-search-default uk-width-1-1\\\">\\r\\n                            <span uk-search-icon=\\\"\\\" class=\\\"uk-search-icon uk-icon\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"search-icon\\\"><circle fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" cx=\\\"9\\\" cy=\\\"9\\\" r=\\\"7\\\"><\\/circle><path fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" d=\\\"M14,14 L18,18 L14,14 Z\\\"><\\/path><\\/svg><\\/span>\\r\\n                            <input class=\\\"uk-search-input\\\" type=\\\"search\\\" placeholder=\\\"Search...\\\">\\r\\n                        <\\/form>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <ul class=\\\"uk-nav-default uk-nav-parent-icon uk-margin-medium uk-nav\\\" uk-nav=\\\"\\\">\\r\\n                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-parent\\\">\\r\\n                            <a href=\\\"#\\\">Parent<\\/a>\\r\\n                            <ul class=\\\"uk-nav-sub\\\" hidden=\\\"\\\" aria-hidden=\\\"true\\\">\\r\\n                                <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                <li><a href=\\\"#\\\">Sub item<\\/a>\\r\\n                                    <ul>\\r\\n                                        <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                        <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                    <\\/ul>\\r\\n                                <\\/li>\\r\\n                            <\\/ul>\\r\\n                        <\\/li>\\r\\n                        <li class=\\\"uk-parent\\\">\\r\\n                            <a href=\\\"#\\\">Parent<\\/a>\\r\\n                            <ul class=\\\"uk-nav-sub\\\" hidden=\\\"\\\" aria-hidden=\\\"true\\\">\\r\\n                                <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                                <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                            <\\/ul>\\r\\n                        <\\/li>\\r\\n                        <li class=\\\"uk-nav-header\\\">Header<\\/li>\\r\\n                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: table\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"table\\\"><rect x=\\\"1\\\" y=\\\"3\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"7\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"11\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"15\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: thumbnails\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"thumbnails\\\"><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-nav-divider\\\"><\\/li>\\r\\n                        <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: trash\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"trash\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\\\"><\\/polyline><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\\\"><\\/polyline><rect x=\\\"8\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"11\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"2\\\" y=\\\"3\\\" width=\\\"16\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                    <div class=\\\"uk-card uk-card-body uk-card-default uk-card-hover\\\">\\r\\n                        <h3 class=\\\"uk-card-title\\\">Default<\\/h3>\\r\\n                        <p>Lorem ipsum <a href=\\\"#\\\">dolor<\\/a> sit amet, consectetur sadipscing.<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-margin uk-card uk-card-body uk-card-primary uk-card-hover\\\">\\r\\n                        <h3 class=\\\"uk-card-title\\\">Primary<\\/h3>\\r\\n                        <p>Lorem ipsum <a href=\\\"#\\\">dolor<\\/a> sit amet, consectetur sadipscing.<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-margin uk-card uk-card-body uk-card-secondary uk-card-hover\\\">\\r\\n                        <h3 class=\\\"uk-card-title\\\">Secondary<\\/h3>\\r\\n                        <p>Lorem ipsum <a href=\\\"#\\\">dolor<\\/a> sit amet, consectetur sadipscing.<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-margin uk-card uk-card-body uk-card-hover\\\">\\r\\n                        <h3 class=\\\"uk-card-title\\\">Hover<\\/h3>\\r\\n                        <p>Lorem ipsum <a href=\\\"#\\\">dolor<\\/a> sit amet, consectetur sadipscing.<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div uk-alert=\\\"\\\" class=\\\"uk-alert\\\">\\r\\n                        <a href=\\\"#\\\" class=\\\"uk-alert-close uk-close uk-icon\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/a>\\r\\n                        <p>Default<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-alert-primary uk-alert\\\" uk-alert=\\\"\\\">\\r\\n                        <a href=\\\"#\\\" class=\\\"uk-alert-close uk-close uk-icon\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/a>\\r\\n                        <p>Primary<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-alert-success uk-alert\\\" uk-alert=\\\"\\\">\\r\\n                        <a href=\\\"#\\\" class=\\\"uk-alert-close uk-close uk-icon\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/a>\\r\\n                        <p>Success<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-alert-warning uk-alert\\\" uk-alert=\\\"\\\">\\r\\n                        <a href=\\\"#\\\" class=\\\"uk-alert-close uk-close uk-icon\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/a>\\r\\n                        <p>Warning<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-alert-danger uk-margin-remove-bottom uk-alert\\\" uk-alert=\\\"\\\">\\r\\n                        <a href=\\\"#\\\" class=\\\"uk-alert-close uk-close uk-icon\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/a>\\r\\n                        <p>Danger<\\/p>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-large\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-divider uk-child-width-expand@m uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                    <div class=\\\"uk-child-width-expand@s uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                        <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                            <form class=\\\"uk-form-stacked\\\">\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <label class=\\\"uk-form-label\\\">Text<\\/label>\\r\\n                                    <input class=\\\"uk-input\\\" type=\\\"text\\\" placeholder=\\\"Some text...\\\">\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <select class=\\\"uk-select\\\">\\r\\n                                        <option>Option 01<\\/option>\\r\\n                                        <option>Option 02<\\/option>\\r\\n                                    <\\/select>\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                     <textarea class=\\\"uk-textarea\\\" rows=\\\"2\\\" placeholder=\\\"Some text...\\\"><\\/textarea>\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"uk-grid-small uk-child-width-auto uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                                    <div class=\\\"uk-first-column\\\">\\r\\n                                        <label><input class=\\\"uk-radio\\\" type=\\\"radio\\\" name=\\\"radio\\\"> Radio<\\/label>\\r\\n                                    <\\/div>\\r\\n                                    <div>\\r\\n                                        <label><input class=\\\"uk-checkbox\\\" type=\\\"checkbox\\\"> Checkbox<\\/label>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <input class=\\\"uk-range\\\" type=\\\"range\\\" value=\\\"2\\\" min=\\\"0\\\" max=\\\"10\\\" step=\\\"0.1\\\">\\r\\n                                <\\/div>\\r\\n\\r\\n                            <\\/form>\\r\\n\\r\\n                        <\\/div>\\r\\n                        <div>\\r\\n\\r\\n                            <form class=\\\"uk-form-stacked\\\">\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <label class=\\\"uk-form-label\\\">States<\\/label>\\r\\n                                    <input class=\\\"uk-input\\\" type=\\\"text\\\" placeholder=\\\":disabled\\\" disabled=\\\"\\\">\\r\\n                                <\\/div>\\r\\n\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <input class=\\\"uk-input uk-form-danger\\\" type=\\\"text\\\" placeholder=\\\"form-danger\\\" value=\\\"form-danger\\\">\\r\\n                                <\\/div>\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <input class=\\\"uk-input uk-form-success\\\" type=\\\"text\\\" placeholder=\\\"form-success\\\" value=\\\"form-success\\\">\\r\\n                                <\\/div>\\r\\n                                <div class=\\\"uk-margin-small\\\">\\r\\n                                    <input class=\\\"uk-input uk-form-blank\\\" type=\\\"text\\\" placeholder=\\\"form-blank\\\">\\r\\n                                <\\/div>\\r\\n\\r\\n                            <\\/form>\\r\\n\\r\\n                        <\\/div>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <div class=\\\"uk-overflow-auto uk-margin-large-top\\\">\\r\\n                        <table class=\\\"uk-table uk-table-divider uk-table-hover uk-table-small\\\">\\r\\n                            <thead>\\r\\n                                <tr>\\r\\n                                    <th>Table Heading<\\/th>\\r\\n                                    <th>Table Heading<\\/th>\\r\\n                                    <th>Table Heading<\\/th>\\r\\n                                <\\/tr>\\r\\n                            <\\/thead>\\r\\n                            <tbody>\\r\\n                                <tr>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                    <td>Table Data<\\/td>\\r\\n                                <\\/tr>\\r\\n                            <\\/tbody>\\r\\n                        <\\/table>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <h1 class=\\\"uk-heading-primary\\\">Primary Heading<\\/h1>\\r\\n\\r\\n                    <h1 class=\\\"uk-margin-small\\\">H1 heading<\\/h1>\\r\\n                    <h2 class=\\\"uk-margin-small\\\">H2 heading<\\/h2>\\r\\n                    <h3 class=\\\"uk-margin-small\\\">H3 heading<\\/h3>\\r\\n                    <h4 class=\\\"uk-margin-small\\\">H4 heading<\\/h4>\\r\\n                    <h5 class=\\\"uk-margin-small\\\">H5 heading<\\/h5>\\r\\n                    <h6 class=\\\"uk-margin-small\\\">H6 heading<\\/h6>\\r\\n\\r\\n                    <h3 class=\\\"uk-heading-divider\\\">Heading divider<\\/h3>\\r\\n                    <h3 class=\\\"uk-heading-bullet\\\">Heading bullet<\\/h3>\\r\\n                    <h3 class=\\\"uk-heading-line\\\"><span>Heading line<\\/span><\\/h3>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n            <div class=\\\"uk-child-width-1-2@s uk-child-width-expand@m uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                    <div class=\\\"uk-inline\\\">\\r\\n                        <canvas width=\\\"800\\\" height=\\\"600\\\" class=\\\"test-img\\\"><\\/canvas>\\r\\n                        <a class=\\\"uk-position-absolute uk-transform-center uk-marker uk-icon\\\" style=\\\"left: 20%; top: 30%\\\" href=\\\"#\\\" uk-marker=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"marker\\\"><rect x=\\\"9\\\" y=\\\"4\\\" width=\\\"1\\\" height=\\\"11\\\"><\\/rect><rect x=\\\"4\\\" y=\\\"9\\\" width=\\\"11\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/a>\\r\\n                        <a class=\\\"uk-position-absolute uk-transform-center uk-marker uk-icon\\\" style=\\\"left: 60%; top: 40%\\\" href=\\\"#\\\" uk-marker=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"marker\\\"><rect x=\\\"9\\\" y=\\\"4\\\" width=\\\"1\\\" height=\\\"11\\\"><\\/rect><rect x=\\\"4\\\" y=\\\"9\\\" width=\\\"11\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/a>\\r\\n                        <a class=\\\"uk-position-absolute uk-transform-center uk-marker uk-icon\\\" style=\\\"left: 80%; top: 70%\\\" href=\\\"#\\\" uk-marker=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"marker\\\"><rect x=\\\"9\\\" y=\\\"4\\\" width=\\\"1\\\" height=\\\"11\\\"><\\/rect><rect x=\\\"4\\\" y=\\\"9\\\" width=\\\"11\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/a>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <div class=\\\"uk-inline-clip\\\">\\r\\n                        <canvas width=\\\"800\\\" height=\\\"600\\\" class=\\\"test-img\\\"><\\/canvas>\\r\\n                        <div class=\\\"uk-overlay uk-overlay-default uk-position-bottom\\\">\\r\\n                            <p>Default Lorem ipsum dolor sit amet, consectetur.<\\/p>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <div class=\\\"uk-inline-clip\\\">\\r\\n                        <canvas width=\\\"800\\\" height=\\\"600\\\" class=\\\"test-img\\\"><\\/canvas>\\r\\n                        <div class=\\\"uk-overlay uk-overlay-primary uk-position-bottom\\\">\\r\\n                            <p>Primary Lorem ipsum dolor sit amet, consectetur.<\\/p>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <div class=\\\"uk-inline\\\">\\r\\n                        <canvas width=\\\"800\\\" height=\\\"600\\\" class=\\\"test-img\\\"><\\/canvas>\\r\\n                        <div class=\\\"uk-position-center\\\">\\r\\n                            <span uk-overlay-icon=\\\"\\\" class=\\\"uk-overlay-icon uk-icon\\\"><svg width=\\\"40\\\" height=\\\"40\\\" viewBox=\\\"0 0 40 40\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"overlay-icon\\\"><rect x=\\\"19\\\" y=\\\"0\\\" width=\\\"1\\\" height=\\\"40\\\"><\\/rect><rect x=\\\"0\\\" y=\\\"19\\\" width=\\\"40\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-divider uk-child-width-auto@m uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                    <ul class=\\\"uk-dotnav\\\">\\r\\n                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Item 1<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item 2<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item 3<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item 4<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item 5<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item 6<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <a href=\\\"#\\\" uk-slidenav-previous=\\\"\\\" class=\\\"uk-slidenav-previous uk-icon uk-slidenav\\\"><svg width=\\\"14px\\\" height=\\\"24px\\\" viewBox=\\\"0 0 14 24\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"slidenav-previous\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.4\\\" points=\\\"1.225,23 12.775,12 1.225,1 \\\"><\\/polyline><\\/svg><\\/a>\\r\\n                    <a href=\\\"#\\\" uk-slidenav-next=\\\"\\\" class=\\\"uk-slidenav-next uk-icon uk-slidenav\\\"><svg width=\\\"14px\\\" height=\\\"24px\\\" viewBox=\\\"0 0 14 24\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"slidenav-next\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.4\\\" points=\\\"12.775,1 1.225,12 12.775,23 \\\"><\\/polyline><\\/svg><\\/a>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <ul class=\\\"uk-thumbnav\\\">\\r\\n                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\"><canvas width=\\\"60\\\" height=\\\"40\\\" class=\\\"test-img\\\"><\\/canvas><\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\"><canvas width=\\\"60\\\" height=\\\"40\\\" class=\\\"test-img\\\"><\\/canvas><\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\"><canvas width=\\\"60\\\" height=\\\"40\\\" class=\\\"test-img\\\"><\\/canvas><\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <div class=\\\"uk-tooltip uk-tooltip-top-center uk-display-inline-block uk-margin-remove uk-position-relative\\\">Tooltip<\\/div>\\r\\n\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-expand@m\\\">\\r\\n\\r\\n                    <progress class=\\\"uk-progress\\\" value=\\\"45\\\" max=\\\"100\\\">45%<\\/progress>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <button type=\\\"button\\\" uk-close=\\\"\\\" class=\\\"uk-close uk-icon\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/button>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <a href=\\\"#\\\" uk-totop=\\\"\\\" class=\\\"uk-totop uk-icon\\\"><svg width=\\\"18\\\" height=\\\"10\\\" viewBox=\\\"0 0 18 10\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"totop\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.2\\\" points=\\\"1 9 9 1 17 9 \\\"><\\/polyline><\\/svg><\\/a>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-divider uk-child-width-expand@m uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                    <ul class=\\\"uk-subnav uk-subnav-divider\\\" uk-margin=\\\"\\\">\\r\\n                        <li class=\\\"uk-active uk-first-column\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><a>Disabled<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <ul class=\\\"uk-subnav uk-subnav-pill\\\" uk-margin=\\\"\\\">\\r\\n                        <li class=\\\"uk-active uk-first-column\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><a>Disabled<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <ul uk-tab=\\\"\\\" class=\\\"uk-tab\\\">\\r\\n                        <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                        <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                        <li class=\\\"uk-disabled\\\"><a>Disabled<\\/a><\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-divider uk-child-width-expand@m uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                    <ul class=\\\"uk-list uk-list-bullet uk-margin-medium\\\">\\r\\n                        <li>List item 1<\\/li>\\r\\n                        <li>List item 2<\\/li>\\r\\n                        <li>List item 3<\\/li>\\r\\n                     <\\/ul>\\r\\n\\r\\n                    <ul class=\\\"uk-list uk-list-striped\\\">\\r\\n                        <li>List item 1<\\/li>\\r\\n                        <li>List item 2<\\/li>\\r\\n                        <li>List item 3<\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <ul class=\\\"uk-list uk-list-divider uk-margin-medium\\\">\\r\\n                        <li>List item 1<\\/li>\\r\\n                        <li>List item 2<\\/li>\\r\\n                        <li>List item 3<\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                    <dl class=\\\"uk-description-list uk-description-list-divider\\\">\\r\\n                        <dt>Description lists<\\/dt>\\r\\n                        <dd>A description text<\\/dd>\\r\\n                        <dt>Description lists<\\/dt>\\r\\n                        <dd>A description text<\\/dd>\\r\\n                    <\\/dl>\\r\\n\\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <ul uk-accordion=\\\"\\\" class=\\\"uk-accordion\\\">\\r\\n                        <li class=\\\"uk-open\\\">\\r\\n\\r\\n                            <a class=\\\"uk-accordion-title\\\" href=\\\"#\\\">Item 1<\\/a>\\r\\n                            <div class=\\\"uk-accordion-content\\\" aria-hidden=\\\"false\\\">\\r\\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.<\\/p>\\r\\n                            <\\/div>\\r\\n\\r\\n                        <\\/li>\\r\\n                        <li>\\r\\n\\r\\n                            <a class=\\\"uk-accordion-title\\\" href=\\\"#\\\">Item 2<\\/a>\\r\\n                            <div class=\\\"uk-accordion-content\\\" hidden=\\\"\\\" aria-hidden=\\\"true\\\">\\r\\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.<\\/p>\\r\\n                            <\\/div>\\r\\n\\r\\n                        <\\/li>\\r\\n                        <li>\\r\\n\\r\\n                            <a class=\\\"uk-accordion-title\\\" href=\\\"#\\\">Item 3<\\/a>\\r\\n                            <div class=\\\"uk-accordion-content\\\" hidden=\\\"\\\" aria-hidden=\\\"true\\\">\\r\\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.<\\/p>\\r\\n                            <\\/div>\\r\\n\\r\\n                        <\\/li>\\r\\n                    <\\/ul>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n            <hr class=\\\"uk-margin-medium\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-divider uk-child-width-auto uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-first-column\\\">\\r\\n\\r\\n                        <img width=\\\"150\\\" src=\\\"images\\/image.svg\\\" alt=\\\"\\\" uk-svg=\\\"\\\" hidden=\\\"true\\\"><svg class=\\\" uk-svg\\\" width=\\\"150\\\" viewBox=\\\"0 0 350 340\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"images\\/image.svg\\\">\\r\\n    <polygon class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" points=\\\"142.6 273.5 92.4 273.5 64 322 171 322 142.6 273.5\\\"><\\/polygon>\\r\\n    <rect class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x=\\\"102\\\" y=\\\"263\\\" width=\\\"31\\\" height=\\\"10\\\"><\\/rect>\\r\\n    <rect class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x=\\\"41\\\" y=\\\"248\\\" width=\\\"102\\\" height=\\\"15\\\"><\\/rect>\\r\\n    <polyline class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" points=\\\"186.8 200.4 277.9 25.7 296.8 12.3\\\"><\\/polyline>\\r\\n    <polyline class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" points=\\\"89.1 190.6 257 1.5 296.8 12.3 336.9 89\\\"><\\/polyline>\\r\\n    <circle class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" cx=\\\"338.4\\\" cy=\\\"94.8\\\" r=\\\"5.3\\\"><\\/circle>\\r\\n    <line class=\\\"uk-stroke-muted\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x1=\\\"338.4\\\" y1=\\\"207.4\\\" x2=\\\"338.4\\\" y2=\\\"100.1\\\"><\\/line>\\r\\n    <path class=\\\"uk-stroke-primary\\\" fill=\\\"none\\\" stroke=\\\"#0045d4\\\" stroke-width=\\\"2\\\" d=\\\"M332.5,228.4a8,8,0,0,0-.5,2.1,6.77,6.77,0,1,0,8.2-6.1,2.36,2.36,0,0,1-1.8-2.3h0v-5.2\\\"><\\/path>\\r\\n    <circle class=\\\"uk-stroke-primary\\\" fill=\\\"none\\\" stroke=\\\"#0045d4\\\" stroke-width=\\\"2\\\" cx=\\\"338.5\\\" cy=\\\"212.7\\\" r=\\\"4.2\\\"><\\/circle>\\r\\n    <rect class=\\\"uk-fill-default-background uk-stroke-default\\\" fill=\\\"#fff\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x=\\\"3\\\" y=\\\"191\\\" width=\\\"140\\\" height=\\\"57\\\"><\\/rect>\\r\\n    <polygon class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" points=\\\"193 201 193 242 179 263 143 263 143 197 193 201\\\"><\\/polygon>\\r\\n    <polygon class=\\\"uk-stroke-primary\\\" fill=\\\"none\\\" stroke=\\\"#0045d4\\\" stroke-width=\\\"2\\\" points=\\\"185 243 175 258 160 258 160 243 185 243\\\"><\\/polygon>\\r\\n    <rect class=\\\"uk-stroke-primary\\\" fill=\\\"none\\\" stroke=\\\"#0045d4\\\" stroke-width=\\\"2\\\" x=\\\"160\\\" y=\\\"209\\\" width=\\\"26\\\" height=\\\"28\\\"><\\/rect>\\r\\n    <polyline class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" points=\\\"220.2 135.2 139.8 135.2 170.8 199.1\\\"><\\/polyline>\\r\\n    <rect class=\\\"uk-fill-muted-background uk-stroke-default\\\" fill=\\\"#eee\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x=\\\"57\\\" y=\\\"322\\\" width=\\\"120\\\" height=\\\"17\\\"><\\/rect>\\r\\n    <line class=\\\"uk-stroke-default\\\" fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"2\\\" x1=\\\"257\\\" y1=\\\"1.5\\\" x2=\\\"334\\\" y2=\\\"90.7\\\"><\\/line>\\r\\n<\\/svg>\\r\\n    \\r\\n                <\\/div>\\r\\n                <div>\\r\\n\\r\\n                    <div class=\\\"uk-grid-small uk-child-width-auto uk-margin uk-countdown uk-grid\\\" uk-grid=\\\"\\\" js-countdown=\\\"\\\">\\r\\n                        <div class=\\\"uk-first-column\\\">\\r\\n                            <div class=\\\"uk-countdown-number uk-countdown-days\\\"><span>0<\\/span><span>6<\\/span><\\/div>\\r\\n                        <\\/div>\\r\\n                        <div class=\\\"uk-countdown-separator\\\">:<\\/div>\\r\\n                        <div>\\r\\n                            <div class=\\\"uk-countdown-number uk-countdown-hours\\\"><span>2<\\/span><span>3<\\/span><\\/div>\\r\\n                        <\\/div>\\r\\n                        <div class=\\\"uk-countdown-separator\\\">:<\\/div>\\r\\n                        <div>\\r\\n                            <div class=\\\"uk-countdown-number uk-countdown-minutes\\\"><span>5<\\/span><span>4<\\/span><\\/div>\\r\\n                        <\\/div>\\r\\n                        <div class=\\\"uk-countdown-separator\\\">:<\\/div>\\r\\n                        <div>\\r\\n                            <div class=\\\"uk-countdown-number uk-countdown-seconds\\\"><span>2<\\/span><span>1<\\/span><\\/div>\\r\\n                        <\\/div>\\r\\n                    <\\/div>\\r\\n\\r\\n                    <script>\\r\\n\\r\\n                        UIkit.countdown(\'[js-countdown]\', {date: (new Date(Date.now() + 864e5 * 7)).toISOString()});\\r\\n\\r\\n                    <\\/script>\\r\\n\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"uk-section uk-padding-remove-vertical\\\">\\r\\n        <div class=\\\"uk-child-width-1-2@s uk-child-width-1-4@l uk-grid-collapse uk-grid-match uk-grid\\\" uk-grid=\\\"\\\">\\r\\n            <div class=\\\"uk-first-column\\\">\\r\\n                <div class=\\\"uk-tile uk-tile-default\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/div>\\r\\n            <\\/div>\\r\\n            <div>\\r\\n                <div class=\\\"uk-tile uk-tile-muted\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/div>\\r\\n            <\\/div>\\r\\n            <div>\\r\\n                <div class=\\\"uk-tile uk-tile-primary\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/div>\\r\\n            <\\/div>\\r\\n            <div>\\r\\n                <div class=\\\"uk-tile uk-tile-secondary\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/div>\\r\\n            <\\/div>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"uk-section uk-section-default\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-large uk-flex-middle uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-width-expand@m uk-first-column\\\">\\r\\n                    <p class=\\\"uk-text-large\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/p>\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-auto@m\\\">\\r\\n                    <a class=\\\"uk-button uk-button-default uk-button-large\\\" href=\\\"#\\\">Button<\\/a>\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"uk-section uk-section-muted\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-large uk-flex-middle uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-width-expand@m uk-first-column\\\">\\r\\n                    <p class=\\\"uk-text-large\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/p>\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-auto@m\\\">\\r\\n                    <a class=\\\"uk-button uk-button-default uk-button-large\\\" href=\\\"#\\\">Button<\\/a>\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"uk-section uk-section-primary\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-large uk-flex-middle uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-width-expand@m uk-first-column\\\">\\r\\n                    <p class=\\\"uk-text-large\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/p>\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-auto@m\\\">\\r\\n                    <a class=\\\"uk-button uk-button-default uk-button-large\\\" href=\\\"#\\\">Button<\\/a>\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"uk-section uk-section-secondary\\\">\\r\\n        <div class=\\\"uk-container\\\">\\r\\n\\r\\n            <div class=\\\"uk-grid-large uk-flex-middle uk-grid\\\" uk-grid=\\\"\\\">\\r\\n                <div class=\\\"uk-width-expand@m uk-first-column\\\">\\r\\n                    <p class=\\\"uk-text-large\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<\\/p>\\r\\n                <\\/div>\\r\\n                <div class=\\\"uk-width-auto@m\\\">\\r\\n                    <a class=\\\"uk-button uk-button-default uk-button-large\\\" href=\\\"#\\\">Button<\\/a>\\r\\n                <\\/div>\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div id=\\\"modal\\\" uk-modal=\\\"\\\" class=\\\"uk-modal\\\">\\r\\n        <div class=\\\"uk-modal-dialog\\\">\\r\\n            <button class=\\\"uk-modal-close-default uk-close uk-icon\\\" type=\\\"button\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/button>\\r\\n            <div class=\\\"uk-modal-header\\\">\\r\\n                <h2 class=\\\"uk-modal-title\\\">Headline<\\/h2>\\r\\n            <\\/div>\\r\\n            <div class=\\\"uk-modal-body\\\">\\r\\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n            <\\/div>\\r\\n            <div class=\\\"uk-modal-footer uk-text-right\\\">\\r\\n                <button class=\\\"uk-button uk-button-default uk-modal-close\\\" type=\\\"button\\\">Cancel<\\/button>\\r\\n                <button class=\\\"uk-button uk-button-primary\\\" type=\\\"button\\\">Save<\\/button>\\r\\n            <\\/div>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div id=\\\"modal-search\\\" class=\\\"uk-modal-full uk-modal\\\" uk-modal=\\\"\\\">\\r\\n        <div class=\\\"uk-modal-dialog uk-flex uk-flex-center uk-flex-middle\\\" uk-height-viewport=\\\"\\\" style=\\\"min-height: calc(100vh);\\\">\\r\\n\\r\\n            <button class=\\\"uk-modal-close-full uk-close-large uk-close uk-icon\\\" type=\\\"button\\\" uk-close=\\\"\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-large\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.4\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"19\\\" y2=\\\"19\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.4\\\" x1=\\\"19\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"19\\\"><\\/line><\\/svg><\\/button>\\r\\n\\r\\n            <div>\\r\\n\\r\\n                <ul class=\\\"uk-nav-primary uk-nav-center uk-nav\\\" uk-nav=\\\"\\\">\\r\\n                    <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n                    <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                    <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                    <li><a href=\\\"#\\\">Item<\\/a><\\/li>\\r\\n                <\\/ul>\\r\\n\\r\\n                <div class=\\\"uk-margin\\\">\\r\\n                    <form class=\\\"uk-search uk-search-large\\\">\\r\\n                        <input class=\\\"uk-search-input uk-text-center\\\" type=\\\"search\\\" placeholder=\\\"Search...\\\">\\r\\n                    <\\/form>\\r\\n                <\\/div>\\r\\n\\r\\n            <\\/div>\\r\\n\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\\r\\n\\r\\n<div id=\\\"offcanvas\\\" uk-offcanvas=\\\"flip: true; overlay: true\\\" class=\\\"uk-offcanvas\\\">\\r\\n    <div class=\\\"uk-offcanvas-bar\\\">\\r\\n\\r\\n        <button class=\\\"uk-offcanvas-close uk-close uk-icon\\\" type=\\\"button\\\" uk-close=\\\"\\\"><svg width=\\\"14\\\" height=\\\"14\\\" viewBox=\\\"0 0 14 14\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"close-icon\\\"><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"1\\\" y1=\\\"1\\\" x2=\\\"13\\\" y2=\\\"13\\\"><\\/line><line fill=\\\"none\\\" stroke=\\\"#000\\\" stroke-width=\\\"1.1\\\" x1=\\\"13\\\" y1=\\\"1\\\" x2=\\\"1\\\" y2=\\\"13\\\"><\\/line><\\/svg><\\/button>\\r\\n\\r\\n        <ul class=\\\"uk-nav uk-nav-default\\\">\\r\\n            <li class=\\\"uk-active\\\"><a href=\\\"#\\\">Active<\\/a><\\/li>\\r\\n            <li class=\\\"uk-parent\\\">\\r\\n                <a href=\\\"#\\\">Parent<\\/a>\\r\\n                <ul class=\\\"uk-nav-sub\\\">\\r\\n                    <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                    <li><a href=\\\"#\\\">Sub item<\\/a><\\/li>\\r\\n                <\\/ul>\\r\\n            <\\/li>\\r\\n            <li class=\\\"uk-nav-header\\\">Header<\\/li>\\r\\n            <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: table\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"table\\\"><rect x=\\\"1\\\" y=\\\"3\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"7\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"11\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><rect x=\\\"1\\\" y=\\\"15\\\" width=\\\"18\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n            <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: thumbnails\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"thumbnails\\\"><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"3.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"11.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><rect fill=\\\"none\\\" stroke=\\\"#000\\\" x=\\\"3.5\\\" y=\\\"11.5\\\" width=\\\"5\\\" height=\\\"5\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n            <li class=\\\"uk-nav-divider\\\"><\\/li>\\r\\n            <li><a href=\\\"#\\\"><span class=\\\"uk-margin-small-right uk-icon\\\" uk-icon=\\\"icon: trash\\\"><svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 20 20\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" data-svg=\\\"trash\\\"><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"6.5 3 6.5 1.5 13.5 1.5 13.5 3\\\"><\\/polyline><polyline fill=\\\"none\\\" stroke=\\\"#000\\\" points=\\\"4.5 4 4.5 18.5 15.5 18.5 15.5 4\\\"><\\/polyline><rect x=\\\"8\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"11\\\" y=\\\"7\\\" width=\\\"1\\\" height=\\\"9\\\"><\\/rect><rect x=\\\"2\\\" y=\\\"3\\\" width=\\\"16\\\" height=\\\"1\\\"><\\/rect><\\/svg><\\/span> Item<\\/a><\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n        <h3>Title<\\/h3>\\r\\n\\r\\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n\\r\\n    <\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"yo-inspect\\\" style=\\\"top: 4554px; left: 438px;\\\" hidden=\\\"\\\">section<\\/div><\\/body>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2020-05-02 12:01:48\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 12:01:48\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2020-05-02 12:01:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `donya_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(3, 1, 1, '', '2020-05-02 16:13:02', 234, 2031, '5cfe46bdaf9d22fa7a222b510b64ae8da5f675da', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"\\\",\\\"row_gap\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\"} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:13:02\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":2,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"28\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(4, 1, 1, '', '2020-05-02 16:13:10', 234, 2041, '875f0cf5aa2d2627f1390e80022d1481f167c7c5', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"\\\",\\\"row_gap\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\"} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:13:10\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"30\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(5, 1, 1, '', '2020-05-02 16:13:51', 234, 2060, '0a65404ffe1faf50a00ebee099d0ab6adc0667d0', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"medium\\\",\\\"row_gap\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\",\\\"props\\\":[]} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:13:51\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"33\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(6, 1, 1, '', '2020-05-02 16:14:22', 234, 2064, '2eb5548318bb712295afaff8a8c657f6b8148be4', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"small\\\",\\\"row_gap\\\":\\\"small\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\",\\\"props\\\":[]} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:14:22\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"36\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(7, 1, 1, '', '2020-05-02 16:23:45', 234, 2065, '8323868b99a79e5433c0d938d6243346903c27d7', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"small\\\",\\\"row_gap\\\":\\\"small\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"xsmall\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"small\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\",\\\"props\\\":[]} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:23:45\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"40\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(8, 1, 1, '', '2020-05-02 16:23:51', 234, 2066, '95f1f39ccfa83f2d91c922e195b9070517afc8c2', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\",\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"small\\\",\\\"row_gap\\\":\\\"small\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"xsmall\\\"},\\\"children\\\":[]},{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"muted\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"xsmall\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\",\\\"props\\\":[]} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-02 16:23:51\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"41\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(9, 1, 1, '', '2020-05-19 21:04:21', 234, 1828, '15194ea9b33927838e76e61f4f76bfd01d8798e7', '{\"id\":\"1\",\"asset_id\":\"73\",\"title\":\"home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"<!-- {\\\"type\\\":\\\"layout\\\",\\\"children\\\":[{\\\"type\\\":\\\"section\\\",\\\"props\\\":{\\\"style\\\":\\\"default\\\",\\\"width\\\":\\\"default\\\",\\\"vertical_align\\\":\\\"middle\\\",\\\"title_position\\\":\\\"top-left\\\",\\\"title_rotation\\\":\\\"left\\\",\\\"title_breakpoint\\\":\\\"xl\\\",\\\"image_position\\\":\\\"center-center\\\",\\\"text_color\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"header_transparent\\\":\\\"\\\",\\\"animation\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"row\\\",\\\"props\\\":{\\\"layout\\\":\\\"1-1\\\",\\\"breakpoint\\\":\\\"m\\\",\\\"fixed_width\\\":\\\"large\\\",\\\"column_gap\\\":\\\"\\\",\\\"row_gap\\\":\\\"\\\",\\\"width\\\":\\\"\\\",\\\"width_expand\\\":\\\"\\\",\\\"height\\\":\\\"\\\",\\\"margin\\\":\\\"\\\"},\\\"children\\\":[{\\\"type\\\":\\\"column\\\",\\\"props\\\":{\\\"image_position\\\":\\\"center-center\\\",\\\"media_overlay_gradient\\\":\\\"\\\",\\\"vertical_align\\\":\\\"\\\",\\\"style\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"padding\\\":\\\"\\\"},\\\"children\\\":[]}]}]}],\\\"version\\\":\\\"2.0.8\\\"} -->\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2020-05-02 12:00:01\",\"created_by\":\"234\",\"created_by_alias\":\"\",\"modified\":\"2020-05-19 21:04:21\",\"modified_by\":\"234\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2020-05-02 12:00:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{}\",\"version\":8,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_updates`
--

CREATE TABLE `donya_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT 0,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `donya_updates`
--

INSERT INTO `donya_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.13.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.12.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.11.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.17.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.14.2', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.13.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(37, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.9.18.4', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.18.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(77, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.17.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `donya_update_sites`
--

CREATE TABLE `donya_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `donya_update_sites`
--

INSERT INTO `donya_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1593332552, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1588418269, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1588418269, ''),
(4, 'Accredited Donya! Translations', 'collection', 'http://donyadideh.com', 1, 1588419333, ''),
(5, 'EShop Extension', 'extension', 'http://joomdonation.com/updates/eshop.xml', 1, 1588418447, ''),
(6, 'YOOtheme Installer', 'extension', 'http://yootheme.com/api/update/installer_yootheme_j33.xml', 1, 0, ''),
(7, 'YOOtheme', 'extension', 'https://yootheme.com/api/update/yootheme_j33.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `donya_update_sites_extensions`
--

CREATE TABLE `donya_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `donya_update_sites_extensions`
--

INSERT INTO `donya_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10002),
(5, 10028),
(6, 10031),
(7, 10033);

-- --------------------------------------------------------

--
-- Table structure for table `donya_usergroups`
--

CREATE TABLE `donya_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_usergroups`
--

INSERT INTO `donya_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `donya_users`
--

CREATE TABLE `donya_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_users`
--

INSERT INTO `donya_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(234, 'Super User', 'shop', 'shop@y.com', '$2y$10$bRZgRIabczEDWZVmgj/TGuCja9nI4Eyq3bd0GLcFJckWsVcInucUi', 0, 1, '2020-05-02 11:17:38', '2020-06-28 09:22:52', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(235, 'مشتری مشتری زاده', 'user', 'user@y.com', '$2y$10$YCUnOdgjokZt1E9M2DPwj.dIEJ8spaqHdfen2qx9J7flBUhlBlX8u', 0, 0, '2020-05-02 19:14:40', '2020-05-19 12:02:35', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donya_user_keys`
--

CREATE TABLE `donya_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_user_keys`
--

INSERT INTO `donya_user_keys` (`id`, `user_id`, `token`, `series`, `invalid`, `time`, `uastring`) VALUES
(1, 'shop', '$2y$10$64rG5s00pqGBF7aXrV8CGefJAw5HLPOAzbkSVNNtYy8xIiD.WXAp6', 'TVTzMfyQUX7mfu7xKHit', 0, '1593629426', 'joomla_remember_me_0be91ad9b7d90942324ab84d3c12602c'),
(2, 'user', '$2y$10$1sTdqCFdB5zwSu.j6BgGeuqHts6r7VBq9niS65NQa6ILrjRrlx6e2', '2obh97NZKwP7W9n1prPX', 0, '1593686577', 'joomla_remember_me_0be91ad9b7d90942324ab84d3c12602c');

-- --------------------------------------------------------

--
-- Table structure for table `donya_user_notes`
--

CREATE TABLE `donya_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donya_user_profiles`
--

CREATE TABLE `donya_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `donya_user_usergroup_map`
--

CREATE TABLE `donya_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_user_usergroup_map`
--

INSERT INTO `donya_user_usergroup_map` (`user_id`, `group_id`) VALUES
(234, 8),
(235, 2);

-- --------------------------------------------------------

--
-- Table structure for table `donya_utf8_conversion`
--

CREATE TABLE `donya_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_utf8_conversion`
--

INSERT INTO `donya_utf8_conversion` (`converted`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `donya_viewlevels`
--

CREATE TABLE `donya_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donya_viewlevels`
--

INSERT INTO `donya_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donya_action_logs`
--
ALTER TABLE `donya_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `donya_action_logs_extensions`
--
ALTER TABLE `donya_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_action_logs_users`
--
ALTER TABLE `donya_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `donya_action_log_config`
--
ALTER TABLE `donya_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_assets`
--
ALTER TABLE `donya_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `donya_associations`
--
ALTER TABLE `donya_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `donya_banners`
--
ALTER TABLE `donya_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_banner_clients`
--
ALTER TABLE `donya_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `donya_banner_tracks`
--
ALTER TABLE `donya_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `donya_categories`
--
ALTER TABLE `donya_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_contact_details`
--
ALTER TABLE `donya_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `donya_content`
--
ALTER TABLE `donya_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `donya_contentitem_tag_map`
--
ALTER TABLE `donya_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `donya_content_frontpage`
--
ALTER TABLE `donya_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `donya_content_rating`
--
ALTER TABLE `donya_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `donya_content_types`
--
ALTER TABLE `donya_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `donya_eshop_addresses`
--
ALTER TABLE `donya_eshop_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_attributedetails`
--
ALTER TABLE `donya_eshop_attributedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `donya_eshop_attributegroupdetails`
--
ALTER TABLE `donya_eshop_attributegroupdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributegroup_id` (`attributegroup_id`);

--
-- Indexes for table `donya_eshop_attributegroups`
--
ALTER TABLE `donya_eshop_attributegroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_attributes`
--
ALTER TABLE `donya_eshop_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributegroup_id` (`attributegroup_id`);

--
-- Indexes for table `donya_eshop_carts`
--
ALTER TABLE `donya_eshop_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_categories`
--
ALTER TABLE `donya_eshop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_parent_id` (`category_parent_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `donya_eshop_categorydetails`
--
ALTER TABLE `donya_eshop_categorydetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `donya_eshop_configs`
--
ALTER TABLE `donya_eshop_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_countries`
--
ALTER TABLE `donya_eshop_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_couponcategories`
--
ALTER TABLE `donya_eshop_couponcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_couponcustomergroups`
--
ALTER TABLE `donya_eshop_couponcustomergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_couponhistory`
--
ALTER TABLE `donya_eshop_couponhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_couponproducts`
--
ALTER TABLE `donya_eshop_couponproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_coupons`
--
ALTER TABLE `donya_eshop_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_currencies`
--
ALTER TABLE `donya_eshop_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_customergroupdetails`
--
ALTER TABLE `donya_eshop_customergroupdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_customergroups`
--
ALTER TABLE `donya_eshop_customergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_customers`
--
ALTER TABLE `donya_eshop_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_discountelements`
--
ALTER TABLE `donya_eshop_discountelements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_discounts`
--
ALTER TABLE `donya_eshop_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_downloaddetails`
--
ALTER TABLE `donya_eshop_downloaddetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_downloads`
--
ALTER TABLE `donya_eshop_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_fielddetails`
--
ALTER TABLE `donya_eshop_fielddetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_fields`
--
ALTER TABLE `donya_eshop_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_geozonepostcodes`
--
ALTER TABLE `donya_eshop_geozonepostcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_geozones`
--
ALTER TABLE `donya_eshop_geozones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_geozonezones`
--
ALTER TABLE `donya_eshop_geozonezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_labeldetails`
--
ALTER TABLE `donya_eshop_labeldetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_labelelements`
--
ALTER TABLE `donya_eshop_labelelements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_labels`
--
ALTER TABLE `donya_eshop_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_lengthdetails`
--
ALTER TABLE `donya_eshop_lengthdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_lengths`
--
ALTER TABLE `donya_eshop_lengths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_manufacturerdetails`
--
ALTER TABLE `donya_eshop_manufacturerdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `donya_eshop_manufacturers`
--
ALTER TABLE `donya_eshop_manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_menus`
--
ALTER TABLE `donya_eshop_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_messagedetails`
--
ALTER TABLE `donya_eshop_messagedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_messages`
--
ALTER TABLE `donya_eshop_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_notify`
--
ALTER TABLE `donya_eshop_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_optiondetails`
--
ALTER TABLE `donya_eshop_optiondetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `donya_eshop_options`
--
ALTER TABLE `donya_eshop_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_optionvaluedetails`
--
ALTER TABLE `donya_eshop_optionvaluedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionvalue_id` (`optionvalue_id`);

--
-- Indexes for table `donya_eshop_optionvalues`
--
ALTER TABLE `donya_eshop_optionvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `donya_eshop_orderdownloads`
--
ALTER TABLE `donya_eshop_orderdownloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_orderoptions`
--
ALTER TABLE `donya_eshop_orderoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_orderproducts`
--
ALTER TABLE `donya_eshop_orderproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_orders`
--
ALTER TABLE `donya_eshop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_orderstatusdetails`
--
ALTER TABLE `donya_eshop_orderstatusdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_orderstatuses`
--
ALTER TABLE `donya_eshop_orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_ordertotals`
--
ALTER TABLE `donya_eshop_ordertotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_payments`
--
ALTER TABLE `donya_eshop_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_productattachments`
--
ALTER TABLE `donya_eshop_productattachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_productattributedetails`
--
ALTER TABLE `donya_eshop_productattributedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productattribute_id` (`productattribute_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `donya_eshop_productattributes`
--
ALTER TABLE `donya_eshop_productattributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `donya_eshop_productcategories`
--
ALTER TABLE `donya_eshop_productcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `donya_eshop_productdetails`
--
ALTER TABLE `donya_eshop_productdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `donya_eshop_productdiscounts`
--
ALTER TABLE `donya_eshop_productdiscounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_productdownloads`
--
ALTER TABLE `donya_eshop_productdownloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_productimages`
--
ALTER TABLE `donya_eshop_productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_productoptions`
--
ALTER TABLE `donya_eshop_productoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `donya_eshop_productoptionvalues`
--
ALTER TABLE `donya_eshop_productoptionvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_option_id` (`product_option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `option_value_id` (`option_value_id`);

--
-- Indexes for table `donya_eshop_productrelations`
--
ALTER TABLE `donya_eshop_productrelations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_products`
--
ALTER TABLE `donya_eshop_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `donya_eshop_productspecials`
--
ALTER TABLE `donya_eshop_productspecials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_producttags`
--
ALTER TABLE `donya_eshop_producttags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_quoteoptions`
--
ALTER TABLE `donya_eshop_quoteoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_quoteproducts`
--
ALTER TABLE `donya_eshop_quoteproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_quotes`
--
ALTER TABLE `donya_eshop_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_reviews`
--
ALTER TABLE `donya_eshop_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_shippings`
--
ALTER TABLE `donya_eshop_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_stockstatusdetails`
--
ALTER TABLE `donya_eshop_stockstatusdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_stockstatuses`
--
ALTER TABLE `donya_eshop_stockstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_tags`
--
ALTER TABLE `donya_eshop_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_taxclasses`
--
ALTER TABLE `donya_eshop_taxclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_taxcustomergroups`
--
ALTER TABLE `donya_eshop_taxcustomergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_taxes`
--
ALTER TABLE `donya_eshop_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_taxrules`
--
ALTER TABLE `donya_eshop_taxrules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_themes`
--
ALTER TABLE `donya_eshop_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_urls`
--
ALTER TABLE `donya_eshop_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_voucherhistory`
--
ALTER TABLE `donya_eshop_voucherhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_vouchers`
--
ALTER TABLE `donya_eshop_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_weightdetails`
--
ALTER TABLE `donya_eshop_weightdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_weights`
--
ALTER TABLE `donya_eshop_weights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_eshop_wishlists`
--
ALTER TABLE `donya_eshop_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `donya_eshop_zones`
--
ALTER TABLE `donya_eshop_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_extensions`
--
ALTER TABLE `donya_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `donya_fields`
--
ALTER TABLE `donya_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_fields_categories`
--
ALTER TABLE `donya_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `donya_fields_groups`
--
ALTER TABLE `donya_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_fields_values`
--
ALTER TABLE `donya_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `donya_finder_filters`
--
ALTER TABLE `donya_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `donya_finder_links`
--
ALTER TABLE `donya_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `donya_finder_links_terms0`
--
ALTER TABLE `donya_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms1`
--
ALTER TABLE `donya_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms2`
--
ALTER TABLE `donya_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms3`
--
ALTER TABLE `donya_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms4`
--
ALTER TABLE `donya_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms5`
--
ALTER TABLE `donya_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms6`
--
ALTER TABLE `donya_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms7`
--
ALTER TABLE `donya_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms8`
--
ALTER TABLE `donya_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_terms9`
--
ALTER TABLE `donya_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termsa`
--
ALTER TABLE `donya_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termsb`
--
ALTER TABLE `donya_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termsc`
--
ALTER TABLE `donya_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termsd`
--
ALTER TABLE `donya_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termse`
--
ALTER TABLE `donya_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_links_termsf`
--
ALTER TABLE `donya_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `donya_finder_taxonomy`
--
ALTER TABLE `donya_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `donya_finder_taxonomy_map`
--
ALTER TABLE `donya_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `donya_finder_terms`
--
ALTER TABLE `donya_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `donya_finder_terms_common`
--
ALTER TABLE `donya_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `donya_finder_tokens`
--
ALTER TABLE `donya_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `donya_finder_tokens_aggregate`
--
ALTER TABLE `donya_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `donya_finder_types`
--
ALTER TABLE `donya_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `donya_languages`
--
ALTER TABLE `donya_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `donya_menu`
--
ALTER TABLE `donya_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_menu_types`
--
ALTER TABLE `donya_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `donya_messages`
--
ALTER TABLE `donya_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `donya_messages_cfg`
--
ALTER TABLE `donya_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `donya_modules`
--
ALTER TABLE `donya_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_modules_menu`
--
ALTER TABLE `donya_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `donya_newsfeeds`
--
ALTER TABLE `donya_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `donya_overrider`
--
ALTER TABLE `donya_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_postinstall_messages`
--
ALTER TABLE `donya_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `donya_privacy_consents`
--
ALTER TABLE `donya_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `donya_privacy_requests`
--
ALTER TABLE `donya_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donya_redirect_links`
--
ALTER TABLE `donya_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `donya_schemas`
--
ALTER TABLE `donya_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `donya_session`
--
ALTER TABLE `donya_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `donya_tags`
--
ALTER TABLE `donya_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `donya_template_styles`
--
ALTER TABLE `donya_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `donya_ucm_base`
--
ALTER TABLE `donya_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `donya_ucm_content`
--
ALTER TABLE `donya_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `donya_ucm_history`
--
ALTER TABLE `donya_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `donya_updates`
--
ALTER TABLE `donya_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `donya_update_sites`
--
ALTER TABLE `donya_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `donya_update_sites_extensions`
--
ALTER TABLE `donya_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `donya_usergroups`
--
ALTER TABLE `donya_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `donya_users`
--
ALTER TABLE `donya_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `donya_user_keys`
--
ALTER TABLE `donya_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `donya_user_notes`
--
ALTER TABLE `donya_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `donya_user_profiles`
--
ALTER TABLE `donya_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `donya_user_usergroup_map`
--
ALTER TABLE `donya_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `donya_viewlevels`
--
ALTER TABLE `donya_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donya_action_logs`
--
ALTER TABLE `donya_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `donya_action_logs_extensions`
--
ALTER TABLE `donya_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `donya_action_log_config`
--
ALTER TABLE `donya_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `donya_assets`
--
ALTER TABLE `donya_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `donya_banners`
--
ALTER TABLE `donya_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_banner_clients`
--
ALTER TABLE `donya_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_categories`
--
ALTER TABLE `donya_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donya_contact_details`
--
ALTER TABLE `donya_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_content`
--
ALTER TABLE `donya_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_content_types`
--
ALTER TABLE `donya_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donya_eshop_addresses`
--
ALTER TABLE `donya_eshop_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_attributedetails`
--
ALTER TABLE `donya_eshop_attributedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_attributegroupdetails`
--
ALTER TABLE `donya_eshop_attributegroupdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_attributegroups`
--
ALTER TABLE `donya_eshop_attributegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_attributes`
--
ALTER TABLE `donya_eshop_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_carts`
--
ALTER TABLE `donya_eshop_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_categories`
--
ALTER TABLE `donya_eshop_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donya_eshop_categorydetails`
--
ALTER TABLE `donya_eshop_categorydetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donya_eshop_configs`
--
ALTER TABLE `donya_eshop_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `donya_eshop_countries`
--
ALTER TABLE `donya_eshop_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `donya_eshop_couponcategories`
--
ALTER TABLE `donya_eshop_couponcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_couponcustomergroups`
--
ALTER TABLE `donya_eshop_couponcustomergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_couponhistory`
--
ALTER TABLE `donya_eshop_couponhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_couponproducts`
--
ALTER TABLE `donya_eshop_couponproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_coupons`
--
ALTER TABLE `donya_eshop_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_currencies`
--
ALTER TABLE `donya_eshop_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donya_eshop_customergroupdetails`
--
ALTER TABLE `donya_eshop_customergroupdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_eshop_customergroups`
--
ALTER TABLE `donya_eshop_customergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_customers`
--
ALTER TABLE `donya_eshop_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_discountelements`
--
ALTER TABLE `donya_eshop_discountelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_discounts`
--
ALTER TABLE `donya_eshop_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_downloaddetails`
--
ALTER TABLE `donya_eshop_downloaddetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_downloads`
--
ALTER TABLE `donya_eshop_downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_fielddetails`
--
ALTER TABLE `donya_eshop_fielddetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `donya_eshop_fields`
--
ALTER TABLE `donya_eshop_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donya_eshop_geozonepostcodes`
--
ALTER TABLE `donya_eshop_geozonepostcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_geozones`
--
ALTER TABLE `donya_eshop_geozones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_geozonezones`
--
ALTER TABLE `donya_eshop_geozonezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_labeldetails`
--
ALTER TABLE `donya_eshop_labeldetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_labelelements`
--
ALTER TABLE `donya_eshop_labelelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_labels`
--
ALTER TABLE `donya_eshop_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_lengthdetails`
--
ALTER TABLE `donya_eshop_lengthdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donya_eshop_lengths`
--
ALTER TABLE `donya_eshop_lengths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donya_eshop_manufacturerdetails`
--
ALTER TABLE `donya_eshop_manufacturerdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_manufacturers`
--
ALTER TABLE `donya_eshop_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_menus`
--
ALTER TABLE `donya_eshop_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `donya_eshop_messagedetails`
--
ALTER TABLE `donya_eshop_messagedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `donya_eshop_messages`
--
ALTER TABLE `donya_eshop_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `donya_eshop_notify`
--
ALTER TABLE `donya_eshop_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_optiondetails`
--
ALTER TABLE `donya_eshop_optiondetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_options`
--
ALTER TABLE `donya_eshop_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_optionvaluedetails`
--
ALTER TABLE `donya_eshop_optionvaluedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donya_eshop_optionvalues`
--
ALTER TABLE `donya_eshop_optionvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donya_eshop_orderdownloads`
--
ALTER TABLE `donya_eshop_orderdownloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_orderoptions`
--
ALTER TABLE `donya_eshop_orderoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donya_eshop_orderproducts`
--
ALTER TABLE `donya_eshop_orderproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donya_eshop_orders`
--
ALTER TABLE `donya_eshop_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donya_eshop_orderstatusdetails`
--
ALTER TABLE `donya_eshop_orderstatusdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `donya_eshop_orderstatuses`
--
ALTER TABLE `donya_eshop_orderstatuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donya_eshop_ordertotals`
--
ALTER TABLE `donya_eshop_ordertotals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `donya_eshop_payments`
--
ALTER TABLE `donya_eshop_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donya_eshop_productattachments`
--
ALTER TABLE `donya_eshop_productattachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_productattributedetails`
--
ALTER TABLE `donya_eshop_productattributedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_productattributes`
--
ALTER TABLE `donya_eshop_productattributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_productcategories`
--
ALTER TABLE `donya_eshop_productcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `donya_eshop_productdetails`
--
ALTER TABLE `donya_eshop_productdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donya_eshop_productdiscounts`
--
ALTER TABLE `donya_eshop_productdiscounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_productdownloads`
--
ALTER TABLE `donya_eshop_productdownloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_productimages`
--
ALTER TABLE `donya_eshop_productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `donya_eshop_productoptions`
--
ALTER TABLE `donya_eshop_productoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donya_eshop_productoptionvalues`
--
ALTER TABLE `donya_eshop_productoptionvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `donya_eshop_productrelations`
--
ALTER TABLE `donya_eshop_productrelations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `donya_eshop_products`
--
ALTER TABLE `donya_eshop_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donya_eshop_productspecials`
--
ALTER TABLE `donya_eshop_productspecials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_producttags`
--
ALTER TABLE `donya_eshop_producttags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_quoteoptions`
--
ALTER TABLE `donya_eshop_quoteoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_eshop_quoteproducts`
--
ALTER TABLE `donya_eshop_quoteproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_eshop_quotes`
--
ALTER TABLE `donya_eshop_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_eshop_reviews`
--
ALTER TABLE `donya_eshop_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_shippings`
--
ALTER TABLE `donya_eshop_shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `donya_eshop_stockstatusdetails`
--
ALTER TABLE `donya_eshop_stockstatusdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donya_eshop_stockstatuses`
--
ALTER TABLE `donya_eshop_stockstatuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donya_eshop_tags`
--
ALTER TABLE `donya_eshop_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_taxclasses`
--
ALTER TABLE `donya_eshop_taxclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_taxcustomergroups`
--
ALTER TABLE `donya_eshop_taxcustomergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_taxes`
--
ALTER TABLE `donya_eshop_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_taxrules`
--
ALTER TABLE `donya_eshop_taxrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_themes`
--
ALTER TABLE `donya_eshop_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_eshop_urls`
--
ALTER TABLE `donya_eshop_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `donya_eshop_voucherhistory`
--
ALTER TABLE `donya_eshop_voucherhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_vouchers`
--
ALTER TABLE `donya_eshop_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_eshop_weightdetails`
--
ALTER TABLE `donya_eshop_weightdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donya_eshop_weights`
--
ALTER TABLE `donya_eshop_weights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donya_eshop_wishlists`
--
ALTER TABLE `donya_eshop_wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donya_eshop_zones`
--
ALTER TABLE `donya_eshop_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3970;

--
-- AUTO_INCREMENT for table `donya_extensions`
--
ALTER TABLE `donya_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10034;

--
-- AUTO_INCREMENT for table `donya_fields`
--
ALTER TABLE `donya_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_fields_groups`
--
ALTER TABLE `donya_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_finder_filters`
--
ALTER TABLE `donya_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_finder_links`
--
ALTER TABLE `donya_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_finder_taxonomy`
--
ALTER TABLE `donya_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_finder_terms`
--
ALTER TABLE `donya_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_finder_types`
--
ALTER TABLE `donya_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_languages`
--
ALTER TABLE `donya_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_menu`
--
ALTER TABLE `donya_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `donya_menu_types`
--
ALTER TABLE `donya_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_messages`
--
ALTER TABLE `donya_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_modules`
--
ALTER TABLE `donya_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `donya_newsfeeds`
--
ALTER TABLE `donya_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_overrider`
--
ALTER TABLE `donya_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `donya_postinstall_messages`
--
ALTER TABLE `donya_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donya_privacy_consents`
--
ALTER TABLE `donya_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_privacy_requests`
--
ALTER TABLE `donya_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_redirect_links`
--
ALTER TABLE `donya_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_tags`
--
ALTER TABLE `donya_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donya_template_styles`
--
ALTER TABLE `donya_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donya_ucm_content`
--
ALTER TABLE `donya_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_ucm_history`
--
ALTER TABLE `donya_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donya_updates`
--
ALTER TABLE `donya_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `donya_update_sites`
--
ALTER TABLE `donya_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donya_usergroups`
--
ALTER TABLE `donya_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `donya_users`
--
ALTER TABLE `donya_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `donya_user_keys`
--
ALTER TABLE `donya_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donya_user_notes`
--
ALTER TABLE `donya_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donya_viewlevels`
--
ALTER TABLE `donya_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
