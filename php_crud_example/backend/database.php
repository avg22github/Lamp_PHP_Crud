<?php
$servername = "db";
$username = "root";
$password = "bolson";
$dbname = "clientes";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>