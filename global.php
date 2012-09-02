<?php

include "framework/classes/class.tpl.php";
include "framework/classes/class.mysql.php";
include "framework/classes/class.core.php";
include "framework/config/config.php";
include "framework/classes/class.blogcore.php";
global $_CONF;
$db=new Database;
$template=new Template;
$blogcore=new blogcore;
$core=new Core;
$db->Connect();
$template->SetParam('title', $_CONF['site']['title']);
$template->SetParam('desc',$_CONF['site']['description']);
$template->SetParam('theme',$_CONF['site']['theme']);
$blogcore->getArticle('1');
?>

