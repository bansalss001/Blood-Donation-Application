<?php
$connection = mysqli_connect("bansalss.5gbfree.com","bansalss_ssb",".hateme","bansalss_database");
    $date = $_GET["d"];
    $user = $_GET["u"];
$query1 = "INSERT INTO `$user` (`date`) VALUES ('$date')";
    if(mysqli_query($connection,$query1))
    {
        $records = array("status" => "ok");
    }
    else
    {
       $records = array("status" => "not");
    }

echo json_encode($records);
?>