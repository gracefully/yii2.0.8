-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-05-26 10:09:41
-- 服务器版本： 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('普通管理员', '7', 1464194304),
('管理员', '6', 1464192798);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/admin/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/default/*', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/default/index', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/menu/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/menu/create', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/menu/index', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/menu/update', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/menu/view', 2, NULL, NULL, NULL, 1464248267, 1464248267),
('/admin/permission/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/create', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/update', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/permission/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/assign', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/create', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/delete', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/remove', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/update', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/role/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/assign', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/create', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/route/remove', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/create', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/update', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/rule/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/activate', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/delete', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/login', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/logout', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/signup', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/admin/user/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/debug/default/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/*', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/gii/default/*', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/default/action', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/default/diff', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/default/index', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/default/preview', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/gii/default/view', 2, NULL, NULL, NULL, 1464248268, 1464248268),
('/site/*', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/site/error', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/site/index', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/site/login', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('/site/logout', 2, NULL, NULL, NULL, 1464248269, 1464248269),
('普通管理员', 1, NULL, NULL, NULL, 1464194161, 1464194161),
('管理员', 1, NULL, NULL, NULL, 1464192721, 1464192721);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('管理员', '/*');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(2, '权限管理', NULL, NULL, NULL, 0x7b2269636f6e223a202266612066612d6b6579222c202276697369626c65223a20747275657d),
(3, '用户管理', 2, '/admin/user/index', 5, 0x7b2269636f6e223a202266612066612d75736572222c202276697369626c65223a20747275657d),
(4, '路由列表', 21, '/admin/route/index', NULL, ''),
(6, '角色列表', 18, '/admin/role/index', NULL, ''),
(7, '分配', 20, '/admin/assignment/index', NULL, ''),
(8, '菜单管理', 2, '/admin/menu/index', 1, 0x7b2269636f6e223a202266612066612d6c697374222c202276697369626c65223a20747275657d),
(9, '管理工具', NULL, NULL, 100, 0x7b2269636f6e223a202266612066612d7772656e6368222c202276697369626c65223a20747275657d),
(10, 'Gii', 9, '/gii/default/index', NULL, ''),
(11, '新增用户', 3, '/admin/user/signup', NULL, ''),
(12, '新增菜单', 8, '/admin/menu/create', NULL, NULL),
(13, '菜单列表', 8, '/admin/menu/index', NULL, NULL),
(14, 'Debug', 9, '/debug/default/index', NULL, ''),
(16, '用户列表', 3, '/admin/user/index', NULL, ''),
(18, '角色管理', 2, ' ', 3, 0x7b2269636f6e223a202266612066612d757365722d6d64222c202276697369626c65223a20747275657d),
(19, '新增角色', 18, '/admin/role/create', NULL, ''),
(20, '分配管理', 2, NULL, 4, 0x7b2269636f6e223a202266612066612d68616e642d6f2d7269676874222c202276697369626c65223a20747275657d),
(21, '权限控制', 2, NULL, 2, 0x7b2269636f6e223a202266612066612d6c6f636b222c202276697369626c65223a20747275657d);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT AS `重置密码token`,
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(6, 'admin', 'V5njSZtBAfKA_z8NvLOp-uuMGwhZuHzr', '$2y$13$ngjhlfHSkNxWWpyZMqe2Quvr/4530/roLTjweW8q0zzXt9G78NPha', NULL, 'admin@admin.com', 10, 10, 1464014144, 1464014144),
(7, 'demo', 'purGpTaZ1lecrwUbv6CWRTq9UpJdxbpV', '$2y$13$1634G9p4uWpff5wqooSeVeM3X/gwlOnqYb3hPO59./mJV1Rg0w0NS', NULL, '123456@admin.com', 10, 10, 1464193996, 1464193996);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID', AUTO_INCREMENT=8;
--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
