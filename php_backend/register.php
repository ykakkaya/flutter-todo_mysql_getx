<?php
include_once("connection.php");
include_once("users.php");

$connection = new Connection();
$conn = $connection->connect();
function addUser(){
    $user = new User($conn);
    $user->username = $_POST["username"];
    $user->password = $_POST["password"];
    $user->email = $_POST["email"];
    $user->date = date("Y-m-d");
    $result = $user->addUser();
    if($result){
        echo "User added successfully";
    } else {
        echo "User not added";
    }
}













?>