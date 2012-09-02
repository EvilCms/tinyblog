<?php

class Database{
    //basic connect function, only called once.
    public function Connect(){
       
        global $_CONF;
        global $core;
      $con = mysql_connect($_CONF['mysql']['host'],$_CONF['mysql']['user'],$_CONF['mysql']['password']);
	  mysql_select_db($_CONF['mysql']['db'],$con);
      if(!$con){
	  $core->Error("MySQL could not connect");
        }
    }
  
}
?>
