<?php
require "MySQLPDO.class.php";
$db=MySQLPDO::getInstance();
$data=$db->fetchAll('select * from paperinfo');
$i=0;
foreach($data as $value){
    $info[$i]["fileName"]=$value["id"];
    $info[$i]["title"]=$value["paperName"];
    $info[$i]["time"]=$value["paperTimeOut"]/60;
    $info[$i]["score"]=$value["paperScore"];
    $i++;
}
require "view/index.html";
?>