<?php


//Inlcude config File
require_once(dirname(__FILE__) . "/config.php");
//Load Main Functions Herex
//Auto Load Classes Here
 // you don't want to display errors on a prod environment

 include "classes/class.DB.php";

function __spl_autoload_register($className)
{
   
        include "classes/class.". $className . ".php";
       
}





/*set_error_handler("customError");*/




date_default_timezone_set("Asia/Kolkata");//INDIA --- :)
?>