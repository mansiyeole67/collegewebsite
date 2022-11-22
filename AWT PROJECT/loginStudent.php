<?php
    $username =  $_POST['username'];
    $password =  $_POST['password'];

    //Database Connection
    $con = new mysqli("localhost","root","","student");
    if($con->connect_error){
        die('Connection Failed :'.$con->connect_error);
    }else{
        $stml = $con->prepare("select * from registrationS where username = ?");
        $stml->bind_param("s", $username);
        $stml->execute();
        $stml_result = $stml->get_result();
        if($stml_result->num_rows > 0){
            $data = $stml_result->fetch_assoc();
            if($data['password'] === $password){
                
		include("selectStudent.html");

            }
            else{
                echo "<h2>Invalid username or password</h2>";
            }
        }else{
            echo "<h2>Invalid username or password</h2>";
        }
    }
?>