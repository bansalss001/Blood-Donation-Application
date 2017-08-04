<?php
$connection = mysqli_connect("bansalss.5gbfree.com","bansalss_ssb",".hateme","bansalss_database");
    $country = $_GET["co"];
    $state = $_GET["s"];
    $city = $_GET["c"];
    $blood = $_GET["b"];
$query = "SELECT `name`,`phone` FROM `details` WHERE `country`='$country' AND `state`='$state' AND `city`='$city' AND `blood`='$blood'";
$resultset =mysqli_query($connection,$query);
$records = array();
while($r=mysqli_fetch_assoc($resultset))
{
$records[] = $r;
}
echo json_encode($records);
?>