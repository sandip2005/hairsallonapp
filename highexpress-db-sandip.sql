# @*************************************************************************@
# @ @author Mansur Altamirov (Mansur_TL)                                    @
# @ @author_url 1: https://www.instagram.com/mansur_tl                      @
# @ @author_url 2: http://codecanyon.net/user/mansur_tl                     @
# @ @author_email: highexpresstore@gmail.com                                @
# @*************************************************************************@
# @ HighExpress - The Ultimate Modern Marketplace Platform                  @
# @ Copyright (c) 05.07.19 HighExpress. All rights reserved.                @
# @*************************************************************************@


    SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";



    SET time_zone = "+00:00";



    /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;



    /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;



    /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;



    /*!40101 SET NAMES utf8mb4 */;



    CREATE TABLE `hex_admin_sessions` (
      `id` int(11) NOT NULL,
      `login_sess_id` int(11) NOT NULL DEFAULT '0',
      `admin_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(20) DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_acc_del_requests` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `reason` varchar(2) NOT NULL DEFAULT '5',
      `message` varchar(600) NOT NULL DEFAULT '',
      `time` varchar(20) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_admins` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  CREATE TABLE `hex_languages` (
    `id` int(11) NOT NULL,
    `lang_name` varchar(32) NOT NULL DEFAULT '',
    `a2_code` varchar(5) NOT NULL DEFAULT 'gb',
    `status` enum('active','inactive') NOT NULL,
    `sort_order` int(11) NOT NULL DEFAULT '0'
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  INSERT INTO `hex_languages` (`id`, `lang_name`, `a2_code`, `status`, `sort_order`) VALUES
    (1, 'english', 'gb', 'active', 1),
    (2, 'french', 'fr', 'active', 2),
    (3, 'german', 'de', 'active', 3),
    (4, 'italian', 'it', 'active', 4),
    (5, 'russian', 'ru', 'active', 5),
    (6, 'portuguese', 'pt', 'active', 6),
    (7, 'spanish', 'es', 'active', 7),
    (8, 'turkish', 'tr', 'active', 8),
    (9, 'dutch', 'nl', 'active', 9),
    (10, 'ukraine', 'ua', 'active', 10);



  CREATE TABLE `hex_currencies` (
    `id` int(11) NOT NULL,
    `curr_name` varchar(55) NOT NULL DEFAULT '',
    `curr_code` varchar(6) NOT NULL DEFAULT 'usd',
    `curr_symbol` varchar(5) CHARACTER SET utf8mb4 NOT NULL DEFAULT '$'
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  INSERT INTO `hex_currencies` (`id`, `curr_name`, `curr_code`, `curr_symbol`) VALUES
  (1, 'United states dollar', 'usd', '$'),
  (2, 'EU Euro', 'euro', '€'),
  (3, 'Russian ruble', 'rub', '₽'),
  (4, 'Turkish lira', 'tl', '₺'),
  (5, 'Japanese yen', 'jpy', '¥'),
  (6, 'Pound sterling', 'gbp', '£'),
  (7, 'Polish zloty', 'pln', 'zł'),
  (8, 'Israeli new shekel', 'ils', '₪'),
  (9, 'Brazilian real', 'brl', 'R$'),
  (10, 'Indian rupee', 'inr', '₹');



  CREATE TABLE `hex_temp_media` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `file_path` varchar(600) NOT NULL DEFAULT '',
   `time` varchar(25) NOT NULL DEFAULT '0',
   PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_announcements` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `message` varchar(600) NOT NULL DEFAULT '',
      `title` varchar(150) NOT NULL DEFAULT '',
      `url` varchar(500) NOT NULL DEFAULT '',
      `type` enum('success','info','warning','error') DEFAULT NULL,
      `static` enum('Y','N') NOT NULL DEFAULT 'N',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_backups` (
      `id` int(11) NOT NULL,
      `backup_dir` varchar(80) NOT NULL DEFAULT '',
      `files_backup` varchar(120) NOT NULL DEFAULT '',
      `sql_backup` varchar(120) NOT NULL DEFAULT '',
      `file_size` varchar(50) NOT NULL DEFAULT '0',
      `sql_size` varchar(50) NOT NULL DEFAULT '0',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_verif_requests` ( 
      `id` INT(11) NOT NULL AUTO_INCREMENT ,  
      `user_id` INT(11) NOT NULL DEFAULT '0' ,  
      `full_name` VARCHAR(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,  
      `message` VARCHAR(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,  
      `id_photo` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,  
      `pr_photo` VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,  
      `status` ENUM('pending','rejected') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pending' ,  
      `time` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,    
    PRIMARY KEY  (`id`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;



  CREATE TABLE `hex_prod_categories` (
    `id` int(11) NOT NULL,
    `catg_id` varchar(60) NOT NULL DEFAULT '',
    `catg_name` varchar(60) NOT NULL DEFAULT '',
    `status` enum('active','inactive') NOT NULL DEFAULT 'active',
    `sort_order` int(11) NOT NULL DEFAULT '1'
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  CREATE TABLE `hex_blocked_users` (
    `id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL DEFAULT '0',
    `time` varchar(25) NOT NULL DEFAULT '0'
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  INSERT INTO `hex_prod_categories` (`id`, `catg_id`, `catg_name`, `status`, `sort_order`) VALUES
    (1, 'womens_fation', 'Women\'s fashion', 'active', 2),
    (2, 'health_beauty', 'Health and beauty', 'active', 18),
    (3, 'phones_and_tablets', 'Phones and tablets', 'active', 9),
    (4, 'computers_accessories', 'Computers and Accessories', 'active', 3),
    (5, 'electronics', 'Electronics', 'active', 23),
    (6, 'footwear', 'Footwear', 'active', 4),
    (7, 'household', 'Household products', 'active', 5),
    (8, 'children_baby', 'Childen\'s goods', 'active', 6),
    (9, 'mens_fation', 'Men\'s fashion', 'active', 22),
    (10, 'pets', 'Goods for pets', 'active', 8),
    (11, 'graden', 'Garden', 'active', 7),
    (12, 'sports_fitenss', 'Sports & Fintness', 'active', 10),
    (13, 'auto', 'Auto products', 'active', 11),
    (14, 'motorcycle', 'Motorcycle products', 'active', 12),
    (15, 'repair', 'Repair Products', 'active', 13),
    (16, 'hobby', 'Hobby goods', 'active', 14),
    (17, 'office_goods', 'Office supplies', 'active', 15),
    (18, 'school_supplies', 'School supplies', 'active', 16),
    (19, 'hunting_accessories', 'Hunting accessories', 'active', 17),
    (20, 'fishing_supplies', 'Fishing Supplies & Equipment', 'active', 1),
    (21, 'holidays_events', 'Holidays & Events', 'active', 19),
    (22, 'tea_accessories', 'Tea & Accessories', 'active', 20),
    (23, 'games_and_toys', 'Games and toys', 'active', 21);



    CREATE TABLE `hex_basket` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `var_id` int(11) DEFAULT NULL,
      `var_type` enum('single','color','size','color_size') NOT NULL DEFAULT 'single',
      `quantity` int(11) NOT NULL DEFAULT '0',
      `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
      `time` varchar(15) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_chat_conversations` (
      `id` int(11) NOT NULL,
      `user_one` int(11) NOT NULL DEFAULT '0',
      `user_two` int(11) NOT NULL DEFAULT '0',
      `time` int(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_chat_messages` (
      `id` int(11) NOT NULL,
      `sent_by` int(11) NOT NULL DEFAULT '0',
      `sent_to` int(11) NOT NULL DEFAULT '0',
      `owner` int(11) NOT NULL DEFAULT '0',
      `message` varchar(3000) NOT NULL DEFAULT '',
      `media_file` varchar(1000) NOT NULL DEFAULT '',
      `media_type` varchar(25) NOT NULL DEFAULT 'none',
      `seen` varchar(25) NOT NULL DEFAULT '0',
      `deleted_fs1` enum('Y','N') NOT NULL DEFAULT 'N',
      `deleted_fs2` enum('Y','N') NOT NULL DEFAULT 'N',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_checkout_transactions` (
      `id` int(11) NOT NULL,
      `order_id` int(11) NOT NULL DEFAULT '0',
      `seller_id` int(11) NOT NULL DEFAULT '0',
      `buyer_id` int(11) NOT NULL DEFAULT '0',
      `amount` varchar(11) NOT NULL DEFAULT '0.00',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `var_id` int(11) NOT NULL DEFAULT '0',
      `var_type` enum('single','color','size','color_size') NOT NULL DEFAULT 'single',
      `status` enum('success','failed') NOT NULL,
      `method` varchar(15) NOT NULL DEFAULT 'none',
      `stripe_pid` varchar(220) NOT NULL DEFAULT '',
      `paypal_pid` varchar(220) NOT NULL DEFAULT '',
      `wallet_pid` varchar(220) DEFAULT '',
      `market_rate` int(3) NOT NULL DEFAULT '0',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_config` (
      `id` int(11) NOT NULL,
      `title` varchar(220) NOT NULL DEFAULT '',
      `name` varchar(100) NOT NULL DEFAULT '',
      `value` varchar(3000) NOT NULL DEFAULT '',
      `regex` varchar(300) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  INSERT INTO `hex_config` (`id`, `title`, `name`, `value`, `regex`) VALUES
    (1, 'Market default language', 'language', 'english', ''),
    (2, '', 'theme', 'v1', ''),
    (3, '', 'validation', 'off', ''),
    (4, 'Market name', 'name', '', ''),
    (5, 'Market e-mail address', 'email', '', ''),
    (6, 'SMTP Server type', 'smtp_or_mail', 'mail', '/^(smtp|mail)$/'),
    (7, 'SMTP Host', 'smtp_host', '', ''),
    (8, 'SMTP Password', 'smtp_password', '', ''),
    (9, 'SMTP Encription type', 'smtp_encryption', 'ssl', '/^(ssl|tls)$/'),
    (10, 'SMTP Port', 'smtp_port', '42', '/^[0-9]{1,11}$/'),
    (11, 'SMTP User', 'smtp_username', '', ''),
    (12, 'Stripe API Public key', 'stripe_api_key', '', ''),
    (13, 'Stripe API Secret key', 'stripe_api_pass', '', ''),
    (14, 'Market sale rate', 'market_sale_rate', '5', '/^[0-9]{1,3}$/'),
    (15, 'PayPal API Public key', 'paypal_api_key', '', ''),
    (16, 'PayPal API Secret key', 'paypal_api_pass', '', ''),
    (17, 'PayPal Payment Mode', 'paypal_mode', 'sandbox', ''),
    (20, 'Market currency', 'market_currency', 'usd', '/^[a-z]{2,5}$/'),
    (21, 'Min payout request amount', 'min_payout', '50', '/^[0-9]{1,11}(\\.[0-9]{1,2}){0,1}$/'),
    (22, 'Product max price', 'max_sale_price', '1000', '/^[0-9]{1,11}(\\.[0-9]{1,2}){0,1}$/'),
    (23, 'Product min price', 'min_sale_price', '50', '/^[0-9]{1,11}(\\.[0-9]{1,2}){0,1}$/'),
    (24, 'Payout Period', 'payout_period', '60', '/^[0-9]{1,2}$/'),
    (25, 'Market title', 'title', '', ''),
    (26, 'Market description', 'description', 'HighExpress - The Ultimate Modern Marketplace Platform', ''),
    (27, 'Market keywords', 'keywords', 'marketplace,ecommerce,shopping,ebusiness,ecom,store,online store,online business,ecommerce website,shopping cart,ecommunity,ecommerce platform', ''),
    (28, 'Google Maps API', 'google_maps_api', '', ''),
    (29, 'Company address', 'company_address', 'Company address', ''),
    (30, 'Company contacts info', 'contacts_info', '', '{32,3000}'),
    (31, '', 'last_sitemap_update', '', ''),
    (32, '', 'last_backup', '', ''),
    (33, 'Google analytics', 'google_analytics', '', ''),
    (34, 'Order cancellation fee', 'order_cancellation_fee', '45', '/^[0-9]{1,11}(\\.[0-9]{1,2}){0,1}$/'),
    (35, '', 'script_version', '1.0.1', ''),
    (36, '', 'db_lc', '0', ''),
    (37, 'Facebook API ID', 'facebook_api_id', '', ''),
    (38, 'Facebook API Key', 'facebook_api_key', '', ''),
    (39, 'Twitter API ID', 'twitter_api_id', '', ''),
    (40, 'Twitter API Key', 'twitter_api_key', '', ''),
    (41, 'Google API ID', 'google_api_id', '', ''),
    (42, 'Google API Key', 'google_api_key', '', ''),
    (43, 'Server mode', 'server_mode', 'production', '/^(debug|production)$/'),
    (44, 'Account validation', 'acc_validation', 'off', '/^(on|off)$/'),
    (45, 'Site favicon', 'site_favicon', 'upload/images/favicon.png', ''),
    (46, 'Site logo', 'site_logo', 'upload/images/logo.png', ''),
    (47, 'Amazon S3 Storage', 'as3_storage', 'off', '/^(on|off)$/'),
    (48, 'AS3 bucket name', 'as3_bucket_name', 'highexpress df', ''),
    (49, 'Amazon S3 API key', 'as3_api_key', ' df', ''),
    (50, 'Amazon S3 API secret key', 'as3_api_secret_key', '', ''),
    (51, 'AS3 bucket region', 'as3_bucket_region', '', ''),
    (52, 'Delete from server', 'as3_onup_delete', 'yes', '/^(yes|no)$/'),
    (53, 'Product description max length', 'prod_max_desc', '600', '/^[0-9]{1,5}$/'),
    (54, 'Product description min length', 'prod_min_desc', '32', '/^[0-9]{1,5}$/'),
    (55, 'Product name minimum length', 'prod_min_name', '45', '/^[0-9]{1,3}$/'),
    (56, 'Product name maximum length', 'prod_max_name', '144', '/^[0-9]{1,3}$/'),
    (58, 'Maximum number of product images', 'prod_max_images', '25', '/^[0-9]{1,2}$/'),
    (59, 'Minimum number of product images', 'prod_min_images', '1', '/^[0-9]{1,2}$/'),
    (60, 'Maximum number of user wishlists', 'user_max_wls', '10', '/^[0-9]{1,2}$/'),
    (62, 'Currency symbol position', 'curr_symbol_position', 'before', '/^(before|after)$/'),
    (63, 'PayPal gateway status', 'paypal_gateway_status', 'on', '/^(on|off)$/'),
    (64, 'Stripe gateway status', 'stripe_gateway_status', 'on', '/^(on|off)$/'),
    (65, 'Wallet gateway status', 'wallet_gateway_status', 'on', '/^(on|off)$/'),
    (66, 'COD gateway status', 'cod_gateway_status', 'on', '/^(on|off)$/'),
    (67, 'Min balance top up amount', 'min_topup', '500', '/^[0-9]{1,11}(\\.[0-9]{1,2}){0,1}$/');



    CREATE TABLE `hex_data_sessions` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `json` text,
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_deliv_addresses` (
      `id` int(11) NOT NULL,
      `full_name` varchar(60) NOT NULL DEFAULT '',
      `phone` varchar(18) NOT NULL DEFAULT '',
      `street` varchar(100) NOT NULL DEFAULT '',
      `off_apt` varchar(60) NOT NULL DEFAULT '',
      `country_id` int(3) NOT NULL DEFAULT '0',
      `state` varchar(50) NOT NULL DEFAULT '',
      `city` varchar(60) NOT NULL DEFAULT '',
      `zip_postal` varchar(10) NOT NULL DEFAULT '',
      `email` varchar(50) NOT NULL DEFAULT '',
      `user_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(15) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_langs` (
      `id` int(11) NOT NULL,
      `lang_key` varchar(500) NOT NULL DEFAULT '',
      `english` varchar(500) NOT NULL DEFAULT '',
      `french` varchar(500) NOT NULL DEFAULT '',
      `german` varchar(500) NOT NULL DEFAULT '',
      `italian` varchar(500) NOT NULL DEFAULT '',
      `russian` varchar(500) NOT NULL DEFAULT '',
      `portuguese` varchar(500) NOT NULL DEFAULT '',
      `spanish` varchar(500) NOT NULL DEFAULT '',
      `turkish` varchar(500) NOT NULL DEFAULT '',
      `dutch` varchar(500) NOT NULL DEFAULT '',
      `ukraine` varchar(500) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_market_revenue` (
      `id` int(11) NOT NULL,
      `order_id` int(11) NOT NULL DEFAULT '0',
      `trans_id` int(11) DEFAULT '0',
      `amount` varchar(20) NOT NULL DEFAULT '0.00',
      `rate` varchar(11) NOT NULL DEFAULT '0',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_notifications` (
      `id` int(11) NOT NULL,
      `notifier_id` int(11) NOT NULL DEFAULT '0',
      `recipient_id` int(11) NOT NULL DEFAULT '0',
      `subject` varchar(25) NOT NULL DEFAULT '',
      `message` varchar(300) NOT NULL DEFAULT '',
      `status` enum('1','0') NOT NULL DEFAULT '0',
      `url` varchar(500) NOT NULL DEFAULT '',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_orders` (
      `id` int(11) NOT NULL,
      `seller_id` int(11) NOT NULL DEFAULT '0',
      `buyer_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `prod_sp` varchar(11) NOT NULL DEFAULT '0.00',
      `prod_rp` varchar(11) NOT NULL DEFAULT '0.00',
      `prod_sf` varchar(11) NOT NULL DEFAULT '0.00',
      `prod_sc` enum('free','paid') NOT NULL DEFAULT 'free',
      `paid_amount` varchar(11) NOT NULL DEFAULT '0.00',
      `var_id` int(11) NOT NULL DEFAULT '0',
      `var_type` enum('single','color','size','color_size') NOT NULL DEFAULT 'single',
      `quantity` int(11) NOT NULL DEFAULT '0',
      `cust_name` varchar(60) NOT NULL DEFAULT '',
      `cust_phone` varchar(20) NOT NULL DEFAULT '',
      `cust_street` varchar(60) NOT NULL DEFAULT '',
      `cust_off_apt` varchar(50) NOT NULL DEFAULT '',
      `cust_country` varchar(60) NOT NULL DEFAULT '',
      `cust_state` varchar(50) NOT NULL DEFAULT '',
      `cust_city` varchar(60) NOT NULL DEFAULT '',
      `cust_zip` varchar(20) NOT NULL DEFAULT '0',
      `cust_email` varchar(50) NOT NULL DEFAULT '',
      `status` varchar(50) NOT NULL DEFAULT 'pending',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_order_cancellations` (
      `id` int(11) NOT NULL,
      `order_id` int(11) NOT NULL DEFAULT '0',
      `trans_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `seller_id` int(11) NOT NULL DEFAULT '0',
      `buyer_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_ord_hist_timeline` (
      `id` int(11) NOT NULL,
      `seller_id` int(11) NOT NULL DEFAULT '0',
      `buyer_id` int(11) NOT NULL DEFAULT '0',
      `order_id` int(11) NOT NULL DEFAULT '0',
      `status` varchar(50) NOT NULL DEFAULT 'pending',
      `buyer_notified` enum('y','n') NOT NULL DEFAULT 'n',
      `comment` varchar(600) NOT NULL,
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_payout_requests` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `pp_link` varchar(300) NOT NULL DEFAULT '',
      `amount` varchar(15) NOT NULL DEFAULT '0.00',
      `currency` varchar(5) NOT NULL DEFAULT 'usd',
      `status` enum('pending','paid','declined') NOT NULL DEFAULT 'pending',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_products` (
      `id` int(11) NOT NULL,
      `name` varchar(150) NOT NULL DEFAULT '',
      `description` text,
      `keywords` varchar(600) NOT NULL DEFAULT '',
      `category` varchar(25) NOT NULL DEFAULT 'none',
      `condition` enum('1','2','3') NOT NULL DEFAULT '1',
      `has_variations` enum('0','1') NOT NULL DEFAULT '0',
      `reg_price` varchar(11) NOT NULL DEFAULT '0.00',
      `sale_price` varchar(11) NOT NULL DEFAULT '0.00',
      `quantity` int(11) NOT NULL DEFAULT '0',
      `sku` varchar(25) NOT NULL DEFAULT '',
      `shipping_cost` varchar(60) NOT NULL DEFAULT '',
      `shipping_fee` varchar(20) NOT NULL DEFAULT '0.00',
      `shipping_time` varchar(120) NOT NULL DEFAULT '',
      `status` enum('inactive','active','deleted') NOT NULL DEFAULT 'active',
      `origin` varchar(100) NOT NULL DEFAULT '',
      `brand` varchar(50) NOT NULL DEFAULT '',
      `model_number` varchar(50) NOT NULL DEFAULT '',
      `weight` varchar(11) NOT NULL DEFAULT '0',
      `length` varchar(11) NOT NULL DEFAULT '0',
      `width` varchar(11) NOT NULL DEFAULT '0',
      `height` varchar(11) NOT NULL DEFAULT '0',
      `poster` varchar(300) NOT NULL DEFAULT '',
      `thumb` varchar(3000) NOT NULL DEFAULT '',
      `variation_type` enum('single','color','size','color_size') NOT NULL DEFAULT 'single',
      `sizing_type` varchar(30) NOT NULL DEFAULT 'none',
      `user_id` int(11) NOT NULL DEFAULT '0',
      `sold` int(11) NOT NULL DEFAULT '0',
      `rating` varchar(5) NOT NULL DEFAULT '0.0',
      `reviews` int(11) NOT NULL DEFAULT '0',
      `profit` varchar(15) NOT NULL DEFAULT '0.00',
      `activity_status` enum('active','inactive','orphan') NOT NULL DEFAULT 'inactive',
      `approved` enum('Y','N') DEFAULT 'N',
      `editing_stage` enum('saved','unsaved') NOT NULL DEFAULT 'unsaved',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_product_media` (
      `id` int(11) NOT NULL,
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `src` varchar(300) NOT NULL DEFAULT '',
      `thumb` varchar(300) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_prod_ratings` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `valuation` int(11) NOT NULL DEFAULT '0',
      `review` varchar(1200) NOT NULL DEFAULT '',
      `activity_status` enum('active','inactive','orphan') NOT NULL DEFAULT 'inactive',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_prod_rating_media` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `review_id` int(11) NOT NULL DEFAULT '0',
      `file_path` varchar(1500) NOT NULL DEFAULT '',
      `time` varchar(15) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_prod_reports` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `report` varchar(1220) NOT NULL DEFAULT '',
      `seen` enum('1','0') NOT NULL DEFAULT '0',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_prod_variations` (
      `id` int(11) NOT NULL,
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `col_img` varchar(300) NOT NULL DEFAULT '',
      `col_thumb` varchar(3000) NOT NULL DEFAULT '',
      `col_hex` varchar(15) NOT NULL DEFAULT '',
      `col_name` varchar(20) NOT NULL DEFAULT '',
      `size` varchar(50) NOT NULL DEFAULT '',
      `reg_price` varchar(15) NOT NULL DEFAULT '0.00',
      `sale_price` varchar(15) NOT NULL DEFAULT '0.00',
      `quantity` int(11) NOT NULL DEFAULT '0',
      `sku` varchar(25) NOT NULL DEFAULT '',
      `height` varchar(11) NOT NULL DEFAULT '',
      `var_type` enum('color','size','color_size','none') NOT NULL DEFAULT 'none',
      `status` enum('active','inactive','blank') NOT NULL DEFAULT 'active',
      `activity_status` enum('active','inactive','orphan') NOT NULL DEFAULT 'inactive',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_sessions` (
      `id` int(11) NOT NULL,
      `session_id` varchar(100) NOT NULL DEFAULT '',
      `user_id` int(11) NOT NULL DEFAULT '0',
      `platform` varchar(10) NOT NULL DEFAULT 'web',
      `time` varchar(15) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_settings` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `key` varchar(60) NOT NULL DEFAULT '',
      `value` varchar(100) NOT NULL DEFAULT ''
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_static_pages` (
      `id` int(11) NOT NULL,
      `page_name` varchar(300) NOT NULL DEFAULT '',
      `page_content` longtext,
      `last_updated` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    INSERT INTO `hex_static_pages` (`id`, `page_name`, `page_content`, `last_updated`) VALUES
    (1, 'doc_aboutus_page', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan viverra suscipit. Phasellus vitae interdum leo. Nullam fringilla a neque ut finibus. Pellentesque molestie dolor sit amet metus pretium maximus. Cras molestie id nibh quis volutpat. Integer vel rhoncus ex, non aliquam justo. Mauris accumsan nisl nec nisi pulvinar, nec malesuada sapien convallis. Donec sed accumsan nulla. Aliquam diam velit, malesuada eu turpis et, euismod accumsan nulla. Nulla ac ligula sit amet sem commodo posuere. Cras mauris purus, hendrerit eu lacus vitae, vulputate mollis justo. Nunc eu egestas arcu.\n\nIn finibus eu urna nec facilisis. Cras eu vulputate lorem. Suspendisse pharetra est congue nibh consequat, vel eleifend felis ultricies. Aliquam quis semper risus. Donec ipsum felis, consectetur ac metus ac, dapibus condimentum libero. Etiam velit nulla, congue id suscipit vel, sagittis et sem. Sed condimentum laoreet lorem, sodales porttitor enim egestas ut. Donec tristique nibh quis massa rhoncus laoreet. In hendrerit quam sit amet commodo interdum. Morbi consectetur semper mattis. Nulla tempus lorem suscipit lacus tincidunt, at venenatis sapien tristique. Ut ut mi varius, euismod ligula ut, ornare neque. Curabitur efficitur justo eu nisi maximus lacinia.\n\nSuspendisse a sapien nec nibh auctor scelerisque ut id eros. Nunc at quam ultricies, placerat sapien et, efficitur urna. Duis blandit elit tellus, eu ullamcorper metus aliquet a. Suspendisse feugiat malesuada nisl eu ornare. Cras at dignissim arcu. In ut nibh eget diam eleifend efficitur a sit amet mi. Curabitur accumsan a purus nec sagittis. Vestibulum efficitur orci sem, vitae facilisis nulla pharetra at. Maecenas sit amet elit justo. Maecenas cursus, sapien vitae congue tincidunt, arcu diam vestibulum magna, sed egestas urna velit eu tortor. Sed porta placerat sapien, quis faucibus ligula fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent mattis facilisis velit ac tristique. Quisque lacus sem, imperdiet a est id, lobortis mollis sem. Nulla venenatis eu lorem fringilla commodo. Nulla nec orci et nunc feugiat interdum.\n\nMorbi consequat efficitur diam. Etiam euismod sodales magna quis vehicula. Fusce consectetur sem tellus, at aliquet ante mattis quis. Quisque ullamcorper dui justo, quis congue lorem imperdiet vel. Aliquam ut libero nec leo interdum consequat. Nam tristique libero sed lorem elementum mattis. Fusce nec aliquet felis.\n\nNam tempus lorem nec erat egestas, at posuere felis iaculis. Duis tempor nunc pellentesque metus consequat, ac eleifend lacus accumsan. Nunc id ante nec ex blandit ultricies. Phasellus commodo consectetur quam, vel ullamcorper libero sollicitudin eu. Nunc nisl augue, volutpat eu convallis in, dictum aliquet arcu. Morbi a lacus felis. Fusce lobortis diam fermentum facilisis pretium. Integer nec luctus sem, et convallis tellus. Nunc lacinia leo ut tempor lobortis. Fusce tincidunt orci quis consectetur elementum. Nunc rhoncus dui quis augue molestie pulvinar. Mauris sed cursus massa, quis porta risus.', '0'),
    (2, 'doc_privacy_policy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan viverra suscipit. Phasellus vitae interdum leo. Nullam fringilla a neque ut finibus. Pellentesque molestie dolor sit amet metus pretium maximus. Cras molestie id nibh quis volutpat. Integer vel rhoncus ex, non aliquam justo. Mauris accumsan nisl nec nisi pulvinar, nec malesuada sapien convallis. Donec sed accumsan nulla. Aliquam diam velit, malesuada eu turpis et, euismod accumsan nulla. Nulla ac ligula sit amet sem commodo posuere. Cras mauris purus, hendrerit eu lacus vitae, vulputate mollis justo. Nunc eu egestas arcu.\n\nIn finibus eu urna nec facilisis. Cras eu vulputate lorem. Suspendisse pharetra est congue nibh consequat, vel eleifend felis ultricies. Aliquam quis semper risus. Donec ipsum felis, consectetur ac metus ac, dapibus condimentum libero. Etiam velit nulla, congue id suscipit vel, sagittis et sem. Sed condimentum laoreet lorem, sodales porttitor enim egestas ut. Donec tristique nibh quis massa rhoncus laoreet. In hendrerit quam sit amet commodo interdum. Morbi consectetur semper mattis. Nulla tempus lorem suscipit lacus tincidunt, at venenatis sapien tristique. Ut ut mi varius, euismod ligula ut, ornare neque. Curabitur efficitur justo eu nisi maximus lacinia.\n\nSuspendisse a sapien nec nibh auctor scelerisque ut id eros. Nunc at quam ultricies, placerat sapien et, efficitur urna. Duis blandit elit tellus, eu ullamcorper metus aliquet a. Suspendisse feugiat malesuada nisl eu ornare. Cras at dignissim arcu. In ut nibh eget diam eleifend efficitur a sit amet mi. Curabitur accumsan a purus nec sagittis. Vestibulum efficitur orci sem, vitae facilisis nulla pharetra at. Maecenas sit amet elit justo. Maecenas cursus, sapien vitae congue tincidunt, arcu diam vestibulum magna, sed egestas urna velit eu tortor. Sed porta placerat sapien, quis faucibus ligula fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent mattis facilisis velit ac tristique. Quisque lacus sem, imperdiet a est id, lobortis mollis sem. Nulla venenatis eu lorem fringilla commodo. Nulla nec orci et nunc feugiat interdum.\n\nMorbi consequat efficitur diam. Etiam euismod sodales magna quis vehicula. Fusce consectetur sem tellus, at aliquet ante mattis quis. Quisque ullamcorper dui justo, quis congue lorem imperdiet vel. Aliquam ut libero nec leo interdum consequat. Nam tristique libero sed lorem elementum mattis. Fusce nec aliquet felis.\n\nNam tempus lorem nec erat egestas, at posuere felis iaculis. Duis tempor nunc pellentesque metus consequat, ac eleifend lacus accumsan. Nunc id ante nec ex blandit ultricies. Phasellus commodo consectetur quam, vel ullamcorper libero sollicitudin eu. Nunc nisl augue, volutpat eu convallis in, dictum aliquet arcu. Morbi a lacus felis. Fusce lobortis diam fermentum facilisis pretium. Integer nec luctus sem, et convallis tellus. Nunc lacinia leo ut tempor lobortis. Fusce tincidunt orci quis consectetur elementum. Nunc rhoncus dui quis augue molestie pulvinar. Mauris sed cursus massa, quis porta risus.', '0'),
    (3, 'doc_terms', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan viverra suscipit. Phasellus vitae interdum leo. Nullam fringilla a neque ut finibus. Pellentesque molestie dolor sit amet metus pretium maximus. Cras molestie id nibh quis volutpat. Integer vel rhoncus ex, non aliquam justo. Mauris accumsan nisl nec nisi pulvinar, nec malesuada sapien convallis. Donec sed accumsan nulla. Aliquam diam velit, malesuada eu turpis et, euismod accumsan nulla. Nulla ac ligula sit amet sem commodo posuere. Cras mauris purus, hendrerit eu lacus vitae, vulputate mollis justo. Nunc eu egestas arcu.\n\nIn finibus eu urna nec facilisis. Cras eu vulputate lorem. Suspendisse pharetra est congue nibh consequat, vel eleifend felis ultricies. Aliquam quis semper risus. Donec ipsum felis, consectetur ac metus ac, dapibus condimentum libero. Etiam velit nulla, congue id suscipit vel, sagittis et sem. Sed condimentum laoreet lorem, sodales porttitor enim egestas ut. Donec tristique nibh quis massa rhoncus laoreet. In hendrerit quam sit amet commodo interdum. Morbi consectetur semper mattis. Nulla tempus lorem suscipit lacus tincidunt, at venenatis sapien tristique. Ut ut mi varius, euismod ligula ut, ornare neque. Curabitur efficitur justo eu nisi maximus lacinia.\n\nSuspendisse a sapien nec nibh auctor scelerisque ut id eros. Nunc at quam ultricies, placerat sapien et, efficitur urna. Duis blandit elit tellus, eu ullamcorper metus aliquet a. Suspendisse feugiat malesuada nisl eu ornare. Cras at dignissim arcu. In ut nibh eget diam eleifend efficitur a sit amet mi. Curabitur accumsan a purus nec sagittis. Vestibulum efficitur orci sem, vitae facilisis nulla pharetra at. Maecenas sit amet elit justo. Maecenas cursus, sapien vitae congue tincidunt, arcu diam vestibulum magna, sed egestas urna velit eu tortor. Sed porta placerat sapien, quis faucibus ligula fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent mattis facilisis velit ac tristique. Quisque lacus sem, imperdiet a est id, lobortis mollis sem. Nulla venenatis eu lorem fringilla commodo. Nulla nec orci et nunc feugiat interdum.\n\nMorbi consequat efficitur diam. Etiam euismod sodales magna quis vehicula. Fusce consectetur sem tellus, at aliquet ante mattis quis. Quisque ullamcorper dui justo, quis congue lorem imperdiet vel. Aliquam ut libero nec leo interdum consequat. Nam tristique libero sed lorem elementum mattis. Fusce nec aliquet felis.\n\nNam tempus lorem nec erat egestas, at posuere felis iaculis. Duis tempor nunc pellentesque metus consequat, ac eleifend lacus accumsan. Nunc id ante nec ex blandit ultricies. Phasellus commodo consectetur quam, vel ullamcorper libero sollicitudin eu. Nunc nisl augue, volutpat eu convallis in, dictum aliquet arcu. Morbi a lacus felis. Fusce lobortis diam fermentum facilisis pretium. Integer nec luctus sem, et convallis tellus. Nunc lacinia leo ut tempor lobortis. Fusce tincidunt orci quis consectetur elementum. Nunc rhoncus dui quis augue molestie pulvinar. Mauris sed cursus massa, quis porta risus.', '0'),
    (4, 'doc_merchant_terms', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan viverra suscipit. Phasellus vitae interdum leo. Nullam fringilla a neque ut finibus. Pellentesque molestie dolor sit amet metus pretium maximus. Cras molestie id nibh quis volutpat. Integer vel rhoncus ex, non aliquam justo. Mauris accumsan nisl nec nisi pulvinar, nec malesuada sapien convallis. Donec sed accumsan nulla. Aliquam diam velit, malesuada eu turpis et, euismod accumsan nulla. Nulla ac ligula sit amet sem commodo posuere. Cras mauris purus, hendrerit eu lacus vitae, vulputate mollis justo. Nunc eu egestas arcu.\n\nIn finibus eu urna nec facilisis. Cras eu vulputate lorem. Suspendisse pharetra est congue nibh consequat, vel eleifend felis ultricies. Aliquam quis semper risus. Donec ipsum felis, consectetur ac metus ac, dapibus condimentum libero. Etiam velit nulla, congue id suscipit vel, sagittis et sem. Sed condimentum laoreet lorem, sodales porttitor enim egestas ut. Donec tristique nibh quis massa rhoncus laoreet. In hendrerit quam sit amet commodo interdum. Morbi consectetur semper mattis. Nulla tempus lorem suscipit lacus tincidunt, at venenatis sapien tristique. Ut ut mi varius, euismod ligula ut, ornare neque. Curabitur efficitur justo eu nisi maximus lacinia.\n\nSuspendisse a sapien nec nibh auctor scelerisque ut id eros. Nunc at quam ultricies, placerat sapien et, efficitur urna. Duis blandit elit tellus, eu ullamcorper metus aliquet a. Suspendisse feugiat malesuada nisl eu ornare. Cras at dignissim arcu. In ut nibh eget diam eleifend efficitur a sit amet mi. Curabitur accumsan a purus nec sagittis. Vestibulum efficitur orci sem, vitae facilisis nulla pharetra at. Maecenas sit amet elit justo. Maecenas cursus, sapien vitae congue tincidunt, arcu diam vestibulum magna, sed egestas urna velit eu tortor. Sed porta placerat sapien, quis faucibus ligula fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent mattis facilisis velit ac tristique. Quisque lacus sem, imperdiet a est id, lobortis mollis sem. Nulla venenatis eu lorem fringilla commodo. Nulla nec orci et nunc feugiat interdum.\n\nMorbi consequat efficitur diam. Etiam euismod sodales magna quis vehicula. Fusce consectetur sem tellus, at aliquet ante mattis quis. Quisque ullamcorper dui justo, quis congue lorem imperdiet vel. Aliquam ut libero nec leo interdum consequat. Nam tristique libero sed lorem elementum mattis. Fusce nec aliquet felis.\n\nNam tempus lorem nec erat egestas, at posuere felis iaculis. Duis tempor nunc pellentesque metus consequat, ac eleifend lacus accumsan. Nunc id ante nec ex blandit ultricies. Phasellus commodo consectetur quam, vel ullamcorper libero sollicitudin eu. Nunc nisl augue, volutpat eu convallis in, dictum aliquet arcu. Morbi a lacus felis. Fusce lobortis diam fermentum facilisis pretium. Integer nec luctus sem, et convallis tellus. Nunc lacinia leo ut tempor lobortis. Fusce tincidunt orci quis consectetur elementum. Nunc rhoncus dui quis augue molestie pulvinar. Mauris sed cursus massa, quis porta risus.', '0');



    CREATE TABLE `hex_store_customers` (
      `id` int(11) NOT NULL,
      `seller_id` int(11) NOT NULL DEFAULT '0',
      `buyer_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(25) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_temp_data` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `name` varchar(300) NOT NULL DEFAULT '',
      `value` varchar(3000) NOT NULL DEFAULT '',
      `type` enum('int','text','url','path','none') NOT NULL DEFAULT 'none'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_users` (
      `id` int(11) NOT NULL,
      `username` varchar(30) NOT NULL DEFAULT '',
      `fname` varchar(30) NOT NULL DEFAULT '',
      `lname` varchar(30) NOT NULL DEFAULT '',
      `bio` varchar(220) NOT NULL DEFAULT '',
      `email` varchar(60) NOT NULL DEFAULT '',
      `em_code` varchar(100) NOT NULL DEFAULT '',
      `password` varchar(100) NOT NULL DEFAULT '',
      `joined` varchar(20) NOT NULL DEFAULT '0',
      `last_active` varchar(20) NOT NULL DEFAULT '0',
      `ipv4_address` varchar(15) NOT NULL DEFAULT '0.0.0.0',
      `language` varchar(20) NOT NULL DEFAULT 'english',
      `avatar` varchar(300) NOT NULL DEFAULT 'upload/users/user-avatar.png',
      `country_id` int(3) NOT NULL DEFAULT '0',
      `youtube` varchar(100) NOT NULL DEFAULT '',
      `facebook` varchar(100) NOT NULL DEFAULT '',
      `twitter` varchar(100) NOT NULL DEFAULT '',
      `instagram` varchar(100) NOT NULL DEFAULT '',
      `website` varchar(100) NOT NULL DEFAULT '',
      `google_plus` varchar(100) NOT NULL DEFAULT '',
      `verified` enum('0','1') NOT NULL DEFAULT '0',
      `admin` enum('0','1') NOT NULL DEFAULT '0',
      `is_seller` enum('Y','N') NOT NULL DEFAULT 'N',
      `wallet` varchar(15) NOT NULL DEFAULT '0.00',
      `sales` int(11) NOT NULL DEFAULT '0',
      `active` enum('0','1','2') NOT NULL DEFAULT '0',
      `phone` varchar(18) NOT NULL DEFAULT '',
      `whatsapp` varchar(18) NOT NULL DEFAULT '',
      `state` varchar(50) NOT NULL DEFAULT '',
      `city` varchar(60) NOT NULL DEFAULT '',
      `street` varchar(100) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
      `off_apt` varchar(60) NOT NULL DEFAULT '',
      `zip_postal` varchar(10) NOT NULL DEFAULT '',
      `deliv_addr` varchar(11) NOT NULL DEFAULT 'default'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_wishlist` (
      `id` int(11) NOT NULL,
      `user_id` int(11) NOT NULL DEFAULT '0',
      `list_name` varchar(50) NOT NULL DEFAULT '',
      `hash_id` varchar(64) NOT NULL DEFAULT '',
      `type` enum('static','removable') NOT NULL DEFAULT 'removable',
      `time` varchar(20) DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



    CREATE TABLE `hex_wishlist_items` (
      `id` int(11) NOT NULL,
      `list_id` int(11) NOT NULL DEFAULT '0',
      `prod_id` int(11) NOT NULL DEFAULT '0',
      `user_id` int(11) NOT NULL DEFAULT '0',
      `time` varchar(20) NOT NULL DEFAULT '0'
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;



  ALTER TABLE `hex_languages` ADD PRIMARY KEY (`id`);



  ALTER TABLE `hex_languages` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_admin_sessions` ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_acc_del_requests` ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_admins` ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_announcements` ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`); 



    ALTER TABLE `hex_announcements` ADD `message_type` ENUM('system','custom') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'system' AFTER `static`;



    ALTER TABLE `hex_announcements` ADD `json_data` VARCHAR(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '{}' AFTER `message_type`;



    ALTER TABLE `hex_backups` ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_chat_conversations`
      ADD PRIMARY KEY (`id`),
      ADD KEY `user_one` (`user_one`),
      ADD KEY `user_two` (`user_two`);



    ALTER TABLE `hex_chat_messages`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_checkout_transactions`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_config`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_data_sessions`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_deliv_addresses`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_langs`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_market_revenue`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_notifications`
      ADD PRIMARY KEY (`id`),
      ADD KEY `notifier_id` (`notifier_id`),
      ADD KEY `recipient_id` (`recipient_id`);



    ALTER TABLE `hex_orders`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_orders` ADD `cancellation_time` VARCHAR(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' AFTER `time`;



    ALTER TABLE `hex_order_cancellations`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_order_cancellations` ADD `status` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'none' AFTER `buyer_id`;



    ALTER TABLE `hex_ord_hist_timeline`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_prod_categories`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_prod_categories`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;



    ALTER TABLE `hex_payout_requests`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_products`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_product_media`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_prod_ratings`
      ADD PRIMARY KEY (`id`),
      ADD KEY `activity_status` (`activity_status`);



    ALTER TABLE `hex_prod_rating_media`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_prod_reports`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_prod_variations`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_sessions`
      ADD PRIMARY KEY (`id`),
      ADD KEY `hex_sessions_ibfk_1` (`user_id`);



    ALTER TABLE `hex_settings`
      ADD PRIMARY KEY (`id`),
      ADD KEY `user_id` (`user_id`);



    ALTER TABLE `hex_static_pages`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_store_customers`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_temp_data`
      ADD PRIMARY KEY (`id`),
      ADD KEY `user_id` (`user_id`),
      ADD KEY `key` (`name`);



    ALTER TABLE `hex_users`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_currencies`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_currencies`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;



    ALTER TABLE `hex_wishlist`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_wishlist_items`
      ADD PRIMARY KEY (`id`);



    ALTER TABLE `hex_admin_sessions`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_products` ADD `payment_method` 
    ENUM('cod_payments','pre_payments','all_payments') 
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
    DEFAULT 'pre_payments' AFTER `editing_stage`;



    ALTER TABLE `hex_products` CHANGE `status` `status` 
    ENUM('inactive','active','deleted','blocked') 
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
    DEFAULT 'active';



    ALTER TABLE `hex_checkout_transactions` CHANGE `wallet_pid` `wallet_pid` VARCHAR(220) 
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
    DEFAULT '';



    ALTER TABLE `hex_checkout_transactions` ADD `cod_pid` VARCHAR(220) 
    CHARACTER SET utf8 COLLATE utf8_general_ci 
    NOT NULL DEFAULT '' AFTER `wallet_pid`;



    ALTER TABLE `hex_products` ADD `last_status` 
    ENUM('inactive','active','deleted') CHARACTER SET utf8 COLLATE utf8_general_ci 
    NOT NULL DEFAULT 'active' AFTER `status`;



    ALTER TABLE `hex_announcements` ADD `slug` VARCHAR(40) 
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
    DEFAULT 'none' AFTER `message_type`;



    ALTER TABLE `hex_acc_del_requests`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_admins`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_announcements`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_backups`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_basket` ADD PRIMARY KEY(`id`);



    ALTER TABLE `hex_basket`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_chat_conversations`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_chat_messages`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_checkout_transactions`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_config`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;



    ALTER TABLE `hex_data_sessions`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_deliv_addresses`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_langs`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34974;



    ALTER TABLE `hex_market_revenue`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_notifications`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_orders`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_orders` ADD `timeline` 
      VARCHAR(300) CHARACTER SET utf8 COLLATE utf8_general_ci 
      NOT NULL DEFAULT '[]' AFTER `status`;



    ALTER TABLE `hex_order_cancellations`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_ord_hist_timeline`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_payout_requests`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_products`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_product_media`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_prod_ratings`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_prod_rating_media`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_prod_reports`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_prod_variations`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_sessions`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_settings`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_static_pages`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_store_customers`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_temp_data`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_users`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_wishlist`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_wishlist_items`
      MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



  ALTER TABLE `hex_blocked_users`
    ADD PRIMARY KEY (`id`);



  ALTER TABLE `hex_blocked_users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



    ALTER TABLE `hex_sessions`
      ADD CONSTRAINT `hex_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `hex_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;



  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;



  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;



  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

