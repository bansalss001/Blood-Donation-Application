<?php
$connection = mysqli_connect("bansalss.5gbfree.com","bansalss_ssb",".hateme","bansalss_database");
    $name = $_GET["n"];
    $user = $_GET["u"];
    $phone = $_GET["m"];
    $pass = $_GET["p"];
    $address = $_GET["a"];
    $city = $_GET["c"];
    $state = $_GET["s"];
    $country = $_GET["co"];
    $pincode = $_GET["pi"];
    $blood = $_GET["b"];
    $date = $_GET["d"];
$query1 = "INSERT INTO `details` (`name`, `user_id`, `password`, `phone`, `dob`, `address`, `city`, `state`, `country`, `pincode`, `blood`) VALUES ('$name', '$user', '$pass', '$phone', '$date', '$address', '$city', '$state', '$country', '$pincode', '$blood');";
$query2 = "INSERT INTO `login` (`user_id`, `phone`, `password`) VALUES ('$user', '$phone', '$pass')";
$query3 = "CREATE TABLE `donor`.`$user` ( `date` DATE NOT NULL , PRIMARY KEY (`date`)) ENGINE = InnoDB";
    if(mysqli_query($connection,$query1) && mysqli_query($connection,$query2) && mysqli_query($connection,$query3))
    {
        $records = array("status" => "ok");
    }
    else
    {
       $records = array("status" => "not");
    }

echo json_encode($records);
?>