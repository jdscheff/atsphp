-- GOALS
-- 1) Sanity
-- 2) Sanity
-- 3) Common Sense
-- 4) Keep backlog of stats for the past 10 days, weeks, and months
-- 5) Sanity

CREATE TABLE `ats_settings` (
  `list_name` varchar(255) default 'My Topsites List',
  `list_url` varchar(255) default '',
  `default_language` varchar(255) default 'english',
  `default_skin` varchar(255) default 'Default',
  `your_email` varchar(255) default 'info@example.com',
  `num_list` int(5) default 10,
  `ranking_period` varchar(7) default 'daily',
  `ranking_method` varchar(255) default 'pv',
  `featured_member` tinyint(1) default 0,
  `top_skin_num` int(5) default 2,
  `ad_breaks` varchar(255) default '',
  `active_default` tinyint(1) default 1,
  `delete_after` int(5) default 14,
  `email_admin_on_join` tinyint(1) default 0,
  `max_banner_width` int(4) default 0,
  `max_banner_height` int(4) default 0,
  `default_banner` varchar(255) default '',
  `ranks_on_buttons` tinyint(1) default 1,
  `button_url` varchar(255) default '',
  `button_dir` varchar(255) default '',
  `button_ext` varchar(255) default '',
  `button_num` int(3) default 5,
  `search` tinyint(1) default 1,
  `search_results` int(2) default 10,
  `gzip` tinyint(1) default 0,
  `time_offset` int(2) default 0,
  `gateway` tinyint(1) default 1
);

CREATE TABLE `ats_etc` (
  `admin_password` varchar(32) default '',
  `last_new_day` tinyint(4) default '0',
  `last_new_week` tinyint(4) default '0',
  `last_new_month` tinyint(4) default '0'
);

CREATE TABLE `ats_categories` (
  `category` varchar(255) default '',
  `skin` varchar(255) default ''
);

CREATE TABLE `ats_ip_log` (
  `ip_address` varchar(32) default '',
  `username` varchar(255) default '',
  `unq_pv` tinyint(1) default '',
  `unq_in` tinyint(1) default '',
  `unq_out` tinyint(1) default '',
  `review` tinyint(1) default ''
);

CREATE TABLE `ats_sites` (
  `username` varchar(255) default '',
  `password` varchar(32) default '',
  `url` varchar(255) default '',
  `title` varchar(255) default '',
  `description` varchar(255) default '',
  `category` varchar(255) default '',
  `banner_url` varchar(255) default '',
  `email` varchar(255) default '',
  `join_date` date default '0000-00-00',
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`username`)
);

CREATE TABLE `ats_reviews` (
  `username` varchar(255) default '',
  `id` bigint(20) unsigned default '0',
  `date` datetime default '0000-00-00 00:00:00',
  `review` text,
  PRIMARY KEY  (`id`)
);

CREATE TABLE `ats_sessions` (
  `type` varchar(7) default '',
  `sid` varchar(32) default '',
  `time` int(10) unsigned default '',
  `data` varchar(255) default '',
  PRIMARY KEY  (`sid`)
);

CREATE TABLE `ats_stats` (
  `username` varchar(255) default '',
  `rank_cache` bigint(20) unsigned default '0',
  `rank_cache_time` int(10) unsigned default '0',
  `old_rank` bigint(20) unsigned default '0',
  `days_inactive` int(10) unsigned default '0',
  `total_rating` bigint(20) unsigned default '0',
  `num_ratings` bigint(20) unsigned default '0',
  `unq_pv_overall` bigint(20) unsigned default '0',
  `tot_pv_overall` bigint(20) unsigned default '0',
  `unq_in_overall` bigint(20) unsigned default '0',
  `tot_in_overall` bigint(20) unsigned default '0',
  `unq_out_overall` bigint(20) unsigned default '0',
  `tot_out_overall` bigint(20) unsigned default '0',
  `unq_pv_0_daily` bigint(20) unsigned default '0',
  `unq_pv_1_daily` bigint(20) unsigned default '0',
  `unq_pv_2_daily` bigint(20) unsigned default '0',
  `unq_pv_3_daily` bigint(20) unsigned default '0',
  `unq_pv_4_daily` bigint(20) unsigned default '0',
  `unq_pv_5_daily` bigint(20) unsigned default '0',
  `unq_pv_6_daily` bigint(20) unsigned default '0',
  `unq_pv_7_daily` bigint(20) unsigned default '0',
  `unq_pv_8_daily` bigint(20) unsigned default '0',
  `unq_pv_9_daily` bigint(20) unsigned default '0',
  `unq_pv_max_daily` bigint(20) unsigned default '0',
  `tot_pv_0_daily` bigint(20) unsigned default '0',
  `tot_pv_1_daily` bigint(20) unsigned default '0',
  `tot_pv_2_daily` bigint(20) unsigned default '0',
  `tot_pv_3_daily` bigint(20) unsigned default '0',
  `tot_pv_4_daily` bigint(20) unsigned default '0',
  `tot_pv_5_daily` bigint(20) unsigned default '0',
  `tot_pv_6_daily` bigint(20) unsigned default '0',
  `tot_pv_7_daily` bigint(20) unsigned default '0',
  `tot_pv_8_daily` bigint(20) unsigned default '0',
  `tot_pv_9_daily` bigint(20) unsigned default '0',
  `tot_pv_max_daily` bigint(20) unsigned default '0',
  `unq_in_0_daily` bigint(20) unsigned default '0',
  `unq_in_1_daily` bigint(20) unsigned default '0',
  `unq_in_2_daily` bigint(20) unsigned default '0',
  `unq_in_3_daily` bigint(20) unsigned default '0',
  `unq_in_4_daily` bigint(20) unsigned default '0',
  `unq_in_5_daily` bigint(20) unsigned default '0',
  `unq_in_6_daily` bigint(20) unsigned default '0',
  `unq_in_7_daily` bigint(20) unsigned default '0',
  `unq_in_8_daily` bigint(20) unsigned default '0',
  `unq_in_9_daily` bigint(20) unsigned default '0',
  `unq_in_max_daily` bigint(20) unsigned default '0',
  `tot_in_0_daily` bigint(20) unsigned default '0',
  `tot_in_1_daily` bigint(20) unsigned default '0',
  `tot_in_2_daily` bigint(20) unsigned default '0',
  `tot_in_3_daily` bigint(20) unsigned default '0',
  `tot_in_4_daily` bigint(20) unsigned default '0',
  `tot_in_5_daily` bigint(20) unsigned default '0',
  `tot_in_6_daily` bigint(20) unsigned default '0',
  `tot_in_7_daily` bigint(20) unsigned default '0',
  `tot_in_8_daily` bigint(20) unsigned default '0',
  `tot_in_9_daily` bigint(20) unsigned default '0',
  `tot_in_max_daily` bigint(20) unsigned default '0',
  `unq_out_0_daily` bigint(20) unsigned default '0',
  `unq_out_1_daily` bigint(20) unsigned default '0',
  `unq_out_2_daily` bigint(20) unsigned default '0',
  `unq_out_3_daily` bigint(20) unsigned default '0',
  `unq_out_4_daily` bigint(20) unsigned default '0',
  `unq_out_5_daily` bigint(20) unsigned default '0',
  `unq_out_6_daily` bigint(20) unsigned default '0',
  `unq_out_7_daily` bigint(20) unsigned default '0',
  `unq_out_8_daily` bigint(20) unsigned default '0',
  `unq_out_9_daily` bigint(20) unsigned default '0',
  `unq_out_max_daily` bigint(20) unsigned default '0',
  `tot_out_0_daily` bigint(20) unsigned default '0',
  `tot_out_1_daily` bigint(20) unsigned default '0',
  `tot_out_2_daily` bigint(20) unsigned default '0',
  `tot_out_3_daily` bigint(20) unsigned default '0',
  `tot_out_4_daily` bigint(20) unsigned default '0',
  `tot_out_5_daily` bigint(20) unsigned default '0',
  `tot_out_6_daily` bigint(20) unsigned default '0',
  `tot_out_7_daily` bigint(20) unsigned default '0',
  `tot_out_8_daily` bigint(20) unsigned default '0',
  `tot_out_9_daily` bigint(20) unsigned default '0',
  `tot_out_max_daily` bigint(20) unsigned default '0',
  `unq_pv_0_weekly` bigint(20) unsigned default '0',
  `unq_pv_1_weekly` bigint(20) unsigned default '0',
  `unq_pv_2_weekly` bigint(20) unsigned default '0',
  `unq_pv_3_weekly` bigint(20) unsigned default '0',
  `unq_pv_4_weekly` bigint(20) unsigned default '0',
  `unq_pv_5_weekly` bigint(20) unsigned default '0',
  `unq_pv_6_weekly` bigint(20) unsigned default '0',
  `unq_pv_7_weekly` bigint(20) unsigned default '0',
  `unq_pv_8_weekly` bigint(20) unsigned default '0',
  `unq_pv_9_weekly` bigint(20) unsigned default '0',
  `unq_pv_max_weekly` bigint(20) unsigned default '0',
  `tot_pv_0_weekly` bigint(20) unsigned default '0',
  `tot_pv_1_weekly` bigint(20) unsigned default '0',
  `tot_pv_2_weekly` bigint(20) unsigned default '0',
  `tot_pv_3_weekly` bigint(20) unsigned default '0',
  `tot_pv_4_weekly` bigint(20) unsigned default '0',
  `tot_pv_5_weekly` bigint(20) unsigned default '0',
  `tot_pv_6_weekly` bigint(20) unsigned default '0',
  `tot_pv_7_weekly` bigint(20) unsigned default '0',
  `tot_pv_8_weekly` bigint(20) unsigned default '0',
  `tot_pv_9_weekly` bigint(20) unsigned default '0',
  `tot_pv_max_weekly` bigint(20) unsigned default '0',
  `unq_in_0_weekly` bigint(20) unsigned default '0',
  `unq_in_1_weekly` bigint(20) unsigned default '0',
  `unq_in_2_weekly` bigint(20) unsigned default '0',
  `unq_in_3_weekly` bigint(20) unsigned default '0',
  `unq_in_4_weekly` bigint(20) unsigned default '0',
  `unq_in_5_weekly` bigint(20) unsigned default '0',
  `unq_in_6_weekly` bigint(20) unsigned default '0',
  `unq_in_7_weekly` bigint(20) unsigned default '0',
  `unq_in_8_weekly` bigint(20) unsigned default '0',
  `unq_in_9_weekly` bigint(20) unsigned default '0',
  `unq_in_max_weekly` bigint(20) unsigned default '0',
  `tot_in_0_weekly` bigint(20) unsigned default '0',
  `tot_in_1_weekly` bigint(20) unsigned default '0',
  `tot_in_2_weekly` bigint(20) unsigned default '0',
  `tot_in_3_weekly` bigint(20) unsigned default '0',
  `tot_in_4_weekly` bigint(20) unsigned default '0',
  `tot_in_5_weekly` bigint(20) unsigned default '0',
  `tot_in_6_weekly` bigint(20) unsigned default '0',
  `tot_in_7_weekly` bigint(20) unsigned default '0',
  `tot_in_8_weekly` bigint(20) unsigned default '0',
  `tot_in_9_weekly` bigint(20) unsigned default '0',
  `tot_in_max_weekly` bigint(20) unsigned default '0',
  `unq_out_0_weekly` bigint(20) unsigned default '0',
  `unq_out_1_weekly` bigint(20) unsigned default '0',
  `unq_out_2_weekly` bigint(20) unsigned default '0',
  `unq_out_3_weekly` bigint(20) unsigned default '0',
  `unq_out_4_weekly` bigint(20) unsigned default '0',
  `unq_out_5_weekly` bigint(20) unsigned default '0',
  `unq_out_6_weekly` bigint(20) unsigned default '0',
  `unq_out_7_weekly` bigint(20) unsigned default '0',
  `unq_out_8_weekly` bigint(20) unsigned default '0',
  `unq_out_9_weekly` bigint(20) unsigned default '0',
  `unq_out_max_weekly` bigint(20) unsigned default '0',
  `tot_out_0_weekly` bigint(20) unsigned default '0',
  `tot_out_1_weekly` bigint(20) unsigned default '0',
  `tot_out_2_weekly` bigint(20) unsigned default '0',
  `tot_out_3_weekly` bigint(20) unsigned default '0',
  `tot_out_4_weekly` bigint(20) unsigned default '0',
  `tot_out_5_weekly` bigint(20) unsigned default '0',
  `tot_out_6_weekly` bigint(20) unsigned default '0',
  `tot_out_7_weekly` bigint(20) unsigned default '0',
  `tot_out_8_weekly` bigint(20) unsigned default '0',
  `tot_out_9_weekly` bigint(20) unsigned default '0',
  `tot_out_max_weekly` bigint(20) unsigned default '0',
  `unq_pv_0_monthly` bigint(20) unsigned default '0',
  `unq_pv_1_monthly` bigint(20) unsigned default '0',
  `unq_pv_2_monthly` bigint(20) unsigned default '0',
  `unq_pv_3_monthly` bigint(20) unsigned default '0',
  `unq_pv_4_monthly` bigint(20) unsigned default '0',
  `unq_pv_5_monthly` bigint(20) unsigned default '0',
  `unq_pv_6_monthly` bigint(20) unsigned default '0',
  `unq_pv_7_monthly` bigint(20) unsigned default '0',
  `unq_pv_8_monthly` bigint(20) unsigned default '0',
  `unq_pv_9_monthly` bigint(20) unsigned default '0',
  `unq_pv_max_monthly` bigint(20) unsigned default '0',
  `tot_pv_0_monthly` bigint(20) unsigned default '0',
  `tot_pv_1_monthly` bigint(20) unsigned default '0',
  `tot_pv_2_monthly` bigint(20) unsigned default '0',
  `tot_pv_3_monthly` bigint(20) unsigned default '0',
  `tot_pv_4_monthly` bigint(20) unsigned default '0',
  `tot_pv_5_monthly` bigint(20) unsigned default '0',
  `tot_pv_6_monthly` bigint(20) unsigned default '0',
  `tot_pv_7_monthly` bigint(20) unsigned default '0',
  `tot_pv_8_monthly` bigint(20) unsigned default '0',
  `tot_pv_9_monthly` bigint(20) unsigned default '0',
  `tot_pv_max_monthly` bigint(20) unsigned default '0',
  `unq_in_0_monthly` bigint(20) unsigned default '0',
  `unq_in_1_monthly` bigint(20) unsigned default '0',
  `unq_in_2_monthly` bigint(20) unsigned default '0',
  `unq_in_3_monthly` bigint(20) unsigned default '0',
  `unq_in_4_monthly` bigint(20) unsigned default '0',
  `unq_in_5_monthly` bigint(20) unsigned default '0',
  `unq_in_6_monthly` bigint(20) unsigned default '0',
  `unq_in_7_monthly` bigint(20) unsigned default '0',
  `unq_in_8_monthly` bigint(20) unsigned default '0',
  `unq_in_9_monthly` bigint(20) unsigned default '0',
  `unq_in_max_monthly` bigint(20) unsigned default '0',
  `tot_in_0_monthly` bigint(20) unsigned default '0',
  `tot_in_1_monthly` bigint(20) unsigned default '0',
  `tot_in_2_monthly` bigint(20) unsigned default '0',
  `tot_in_3_monthly` bigint(20) unsigned default '0',
  `tot_in_4_monthly` bigint(20) unsigned default '0',
  `tot_in_5_monthly` bigint(20) unsigned default '0',
  `tot_in_6_monthly` bigint(20) unsigned default '0',
  `tot_in_7_monthly` bigint(20) unsigned default '0',
  `tot_in_8_monthly` bigint(20) unsigned default '0',
  `tot_in_9_monthly` bigint(20) unsigned default '0',
  `tot_in_max_monthly` bigint(20) unsigned default '0',
  `unq_out_0_monthly` bigint(20) unsigned default '0',
  `unq_out_1_monthly` bigint(20) unsigned default '0',
  `unq_out_2_monthly` bigint(20) unsigned default '0',
  `unq_out_3_monthly` bigint(20) unsigned default '0',
  `unq_out_4_monthly` bigint(20) unsigned default '0',
  `unq_out_5_monthly` bigint(20) unsigned default '0',
  `unq_out_6_monthly` bigint(20) unsigned default '0',
  `unq_out_7_monthly` bigint(20) unsigned default '0',
  `unq_out_8_monthly` bigint(20) unsigned default '0',
  `unq_out_9_monthly` bigint(20) unsigned default '0',
  `unq_out_max_monthly` bigint(20) unsigned default '0',
  `tot_out_0_monthly` bigint(20) unsigned default '0',
  `tot_out_1_monthly` bigint(20) unsigned default '0',
  `tot_out_2_monthly` bigint(20) unsigned default '0',
  `tot_out_3_monthly` bigint(20) unsigned default '0',
  `tot_out_4_monthly` bigint(20) unsigned default '0',
  `tot_out_5_monthly` bigint(20) unsigned default '0',
  `tot_out_6_monthly` bigint(20) unsigned default '0',
  `tot_out_7_monthly` bigint(20) unsigned default '0',
  `tot_out_8_monthly` bigint(20) unsigned default '0',
  `tot_out_9_monthly` bigint(20) unsigned default '0',
  `tot_out_max_monthly` bigint(20) unsigned default '0',
  PRIMARY KEY  (`username`)
);
