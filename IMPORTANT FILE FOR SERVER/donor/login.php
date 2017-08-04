<?php
$connection = mysqli_connect("bansalss001.6te.net","bansalss001.6te.net",".hateme","1214205");
    $user = $_GET["user"];
    $phone = $_GET["phone"];
    $pass = $_GET["pass"];

$query = "SELECT * FROM `login` WHERE (`user_id`='$user' OR `phone`='$phone')AND `password`='$pass'";
$resultset =mysqli_query($connection,$query);
$records = array();
while($r=mysqli_fetch_assoc($resultset))
{
$records[] = $r;
echo json_encode(hello);
}
echo json_encode($records);
?>