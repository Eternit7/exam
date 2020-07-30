<?php
header('Content-type:text/html;charset=utf9');
require 'MySQLPDO.class.php';
$db = MySQLPDO::getInstance();
$id=$_GET["id"];
$sql="select * from qtypeinfo where paperID=:paperID";
$data["paperID"]=$id;
$res=$db->fetchAll($sql,$data);
$userAnswer=$_POST;
$sum = 0;
foreach ($res as $key => $value){
    $sql1 = "select * from `questioninfo` where qTypeID =:qTypeId";
    $datas['qTypeId']=$value['id'];
    $ret = $db->fetchAll($sql1,$datas);
    //该类型，每道题的分数
    $score[$value['id']] = $value['qTypeScore']/count($ret);
    $count[$value['id']] = count($ret);
    $data[$value['id']]['name'] = $value['qTypeName'];
    $i=1;
    foreach ( $ret as $k => $v ){
        $answer = $v['qAnswer'];
        $result = true;
        if($v['qTypeID'] == 3){
            $answer = explode('**',$v['qAnswer']);
        }if($userAnswer[$value['id']][$v['id']] === $answer){
            $sum += $score[$value['id']];
        }else {
            $result = false;
        }
        $total[$value['id']][$i] = $result;
        $i++;
    }
}
require 'view/total.html';
?>