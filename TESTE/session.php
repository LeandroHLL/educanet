<?php session_start();
    $connect=mysqli_connect("localhost","root","","") or die("Connection Failed");
    if(!empty($_POST['button']))
    {
        $name=$_POST['username'];
        $email=$_POST['email'];
        $pass=$_POST['password'];
        if($email== "" && $pass == "" && $name=="")
        {
            echo "<script> alert('Please fill all fields.......')</script>";
        }
        else
        {
            $query= "select * from rl_form where email='$email' and pass='$pass' and user='$name'";
            $result=mysqli_query($connect, $query);
            $count= mysqli_num_rows($result);
            if($count>0)
            {
                $_SESSION['unname']="set";
                setcookie("username",$name);
                header("location:welcome.php");
                // echo "<script> alert('Congratulations! you are logged in .......')</script>";
            }
            else
            {
                echo "<script> alert('Username/Email and Password does not match.......')</script>";
            }
        }
    }
    if (!empty($_GET['log'])) {
        session_destroy();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>home page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="main">
        <div class="inner">
            <div class="welcome">
                Login Form
            </div>
            <div class="login_options">
                <form action="" method="post">
                    <div class="lleft_body">
                        <label for="">
                            Enter your username here
                        </label>
                        <br>
                        <label for="">
                            Enter your email here
                        </label>
                        <br>
                        <label for="">
                            Enter your password here
                        </label>
                    </div>
                    <div class="lright_body">
                        <input type="text" name="username" id="">
                        <br><br>
                        <input type="email" name="email" id="">
                        <br><br>
                        <input type="password" name="password" id="">
                    </div>
                    <div class="login_submit">
                        <input type="submit" value="Login" id="login" name="button">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>