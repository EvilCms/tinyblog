<?php
class Core{
    public function Write($var){
        
        echo $var;
    }
    public function Error($string){
        echo "<div class='error'>Tinyblog detected an error<br/>".$string;
    }
    public function Hash($string,$salt){
        return crypt($string.$salt);
    }
}
?>
