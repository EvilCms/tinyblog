
<?php

class Template
{      
       public $values = array();
  
	   
	   function SetParam($key, $value)
	  {//here we set our paramters
	   global $core;
	   $this->values[$key] = $value;
	  }
	  
	   function Write($file)
	  {//write to a file
	    global $core;
            global $_CONF;
            
	    if(!file_exists("framework/tpl/".$_CONF['site']['theme']."/$file.php"))
		{
		$core->Error("File does not exist!");
		}
		
	    $output = file_get_contents("framework/tpl/joker/$file.php");
        foreach ($this->values as $key => $value) 
       { //replace param keys
	    $tagToReplace = "%$key%";
        $output = str_replace($tagToReplace, $value, $output);
	   }
       ob_start();
       echo $output;
	   ob_end_flush();
	  }
	  public function Append($var){echo $var;}//write
}

?>