<?php

ini_set('display_errors', 'On');
error_reporting(E_ALL);
// Version
define('VERSION', '3.0.3.7');
define('VERSION_CORE', 'ocStore');

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: install/index.php');
	exit;
}

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('catalog');