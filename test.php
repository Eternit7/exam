<?php
require "MySQLPDO.class.php";
$pdo = MySQLPDO::getInstance();
$id=$_GET["id"];
$sql1 = "select * from qtypeinfo where paperID =:paperID";
$data1["paperID"]=$id;
$arr1 = $pdo->fetchAll($sql1,$data1);
$data = array();
$i = 0;
$sql3 = "select * from paperinfo where id =:id";
$data2["id"]=$id;
//获取id，考试题名
$d = $pdo->fetchRow($sql3,$data2);
//获取剩余时间
$data['timeout'] = $d['paperTimeOut'];

foreach($arr1 as $k=>$a)
{
    $sql2 = "select * from questioninfo where qTypeID = :qTypeID";
    $data3["qTypeID"]=$a["id"];
    $arr2 = $pdo->fetchAll($sql2,$data3);
    foreach($arr2 as $k=>$a1){
        $arr2[$k]['qOption'] = explode("**",$a1['qOption']);
    }
    $data[$i]['data'] = $arr2;
    $data[$i]['id'] = strval($a['id']);
    $data[$i]['score'] = $a['qTypeScore'];
    $data[$i]['sorce1'] = $a['qTypeScore']/count($arr2);
    $data[$i]['type'] = $a['qTypeName'];
    $data[$i]['count'] = count($arr2);
    $i ++;
}

require "view/test.html";
?>