<?php
header('Content-type:text/html;charset=utf-8');
require "MySQLPDO.class.php";
$id=$_GET['id'];
$db=MySQLPDO::getInstance();
$sql="select * from paperinfo where id=:id";
$data1["id"]=$id;
$d=$db->fetchRow($sql,$data1);

$sql1="select *from qtypeinfo where paperID=:paperID";
$data2["paperID"]=$id;
$da=$db->fetchRow($sql1,$data2);
//获取试题的时间
$data["timeout"]=$d["paperTimeOut"];




$i=0;
//获取试题的所有题型




require "view/test.html";
?>
