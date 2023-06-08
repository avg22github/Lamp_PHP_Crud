<?php
$hostname = "db";
$username = "root";
$password = "bolson";
$dbname = "login";
$conn = mysqli_connect($hostname, $username, $password, $dbname);
if(!$conn) {
    die("Unable to connect");
}

$message = ""; // Variable para almacenar el mensaje de error

if($_POST) {
    $uname = $_POST["username"];
    $pass = md5($_POST['password']);

    $uname = mysqli_real_escape_string($conn, $uname);
    $pass = mysqli_real_escape_string($conn, $pass);
    $sql = "SELECT * FROM personas WHERE username = '$uname' AND password = '$pass'";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) == 1) {
        header("location: lista.php");
    } else {
        $message = "Usuario o Contraseña incorrectos";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Inicio de sesión</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            background-image: url('fondo.jpg');
            background-size: 150%;
            background-position: center;
        }


        .container {
            max-width: 400px;
            margin: 100px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            border: none;
            border-radius: 3px;
            background-color: #4285f4;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3367d6;
        }

        .link {
            display: block;
            margin-top: 20px;
            color: #333;
            text-decoration: none;
            border: 1px solid #333;
            border-radius: 3px;
            background-color: #fff;
            padding: 10px;
            transition: background-color 0.3s ease;
        }

        .link:hover {
            background-color: #333;
            color: #fff;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Inicio de sesión</h1>
        <form action="" method="POST" autocomplete="off">
            <input type="text" name="username" placeholder="Usuario" required /><br />
            <input type="password" name="password" placeholder="********" required /><br />
            <input type="submit" name="login" value="Iniciar Sesión" />
        </form>
        <?php if($message): ?>
        <div class="error-message"><?php echo $message; ?></div>
        <?php endif; ?>
    </div>
</body>
</html>
