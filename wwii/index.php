<?php
 

  include 'bootstrap.php';

  $query = DB::getInstance()->query("SELECT * FROM scenes");
  $res = $query->results();
  foreach ($res as $key => $value) {
  	  


  	 $quert_events = DB::getInstance()->query("SELECT * FROM events WHERE sceneID = ?",array($value->id));
   $value->events = $quert_events->results();
    
       

  }


 print_r(json_encode($res));


?>