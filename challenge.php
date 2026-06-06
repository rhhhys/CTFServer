<?php
    $servername = "CTF-MySQL";
    $username = "CyberCity";
    $password = "Cyb3rC1ty";
    $dbname = "CyberCity";

    try {
        $dsn = "mysql:host=$servername;dbname=$dbname;charset=utf8mb4";
        $pdo = new PDO($dsn, $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Connection failed: " . $e -> getMessage());
    }

    $message = "";
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $password = $_POST['password'];

        // intentionally vulnerable SQL query for the challenge
        $sql = "SELECT * FROM Users WHERE Username = '$username' AND HashedPassword = '$password'";
        $stmt = $pdo->query($sql);
        $user = $stmt->fetch();

        if ($user) {
            echo $user["Username"];
            $message = "You have successfully logged in. Challenge completed!";
        } else {
            $message = "Incorrect username or password. Please try again.";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>

    <body>
        <div class = "container" style = "margin-top: 25vh;">
        <h1 class = "text-center">Admin Login</h1>
        <p class = "text-center">Challenge: login to the admin account without knowing the password.</p>
            <div class = "text-center">
                <form method = "post" style = "display: flex; flex-direction: column; align-items: center; margin-top: 20px;">
                    <div class = "row" style = "margin-top: 10px;">
                        <div class = "col-md-6">
                            <input type="text" name="username" class="form-control" placeholder="Enter username" style = "text-align: center; max-width: 300px; padding: 10px;">
                        </div>
                        <div class = "col-md-6">
                            <input type="text" name="password" class="form-control" placeholder="Enter password" style = "text-align: center; max-width: 300px; padding: 10px;">
                        </div>
                    </div>
                    <button type="submit" style = "margin-top: 10px;">Submit</button>
                </form>
            </div>
            <p class = "text-center" style = "margin-top: 15px; font-style: italic;"><?php echo $message; ?></p>
        </div>
    </body>
</html>