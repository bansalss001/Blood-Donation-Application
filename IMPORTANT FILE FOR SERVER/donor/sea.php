<?php
$connection = mysqli_connect("bansalss.5gbfree.com","bansalss_ssb",".hateme","bansalss_database");
    $user = $_GET["u"];
$query = "SELECT * FROM `details` WHERE `user_id`='$user'";
$resultset =mysqli_query($connection,$query);
$records = array();
while($r=mysqli_fetch_assoc($resultset))
{
$records[] = $r;
}
echo json_encode($records);
?>