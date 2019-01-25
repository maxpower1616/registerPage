    <?php
    include("database.php");

    $firstName = "";
    $lastName = "";
    $emailAddress = "";
    $userName = "";
    $password = "";
    $streetName = "";
    $houseNumber = "";
    $city = "";
    $zipCode = "";
    $country = "";
    $birthDate = "";
    $registerDate = "";
    $phoneNumber = "";

    if(isset($_POST['myregister']))
    {
        $firstName      = $_POST['fname'];
        $lastName       = $_POST['lname'];
        $emailAddress   = $_POST['email'];
        $userName       = $_POST['uname'];
        $password       = $_POST['psw'];
        $streetName     = $_POST['sname'];
        $houseNumber    = $_POST['hname'];
        $city           = $_POST['cname'];
        $zipCode        = $_POST['zname'];
        $country        = $_POST['coname'];
        $birthDate      = $_POST['bname'];
        $registerDate   = $_POST['rname'];
        $phoneNumber    = $_POST['pname'];

        if ($firstName != "" && $lastName != "" && $emailAddress != "" && $userName != "" && $password != "" && $streetName != "" && $houseNumber != "" && $city != "" && $zipCode != "" && $country != "" && $birthDate != "" && $registerDate != "" && $phoneNumber != "")
        {
            $sql = "INSERT INTO users (userFirstName, userLastName, userEmailAddress, userUserName, userPassword, userStreetName, userHouseNumber, userCity, userZipCode, userCountry, userBirthDate, userRegisterDate, userPhoneNumber)
            VALUES ('$firstName', '$lastName', '$emailAddress', '$userName', '$password', '$streetName', '$houseNumber', '$city', '$zipCode', '$country', '$birthDate', '$registerDate', '$phoneNumber')"; 
        }
        
        if ($conn->query($sql) === TRUE) {
            echo "Registered successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }   
        $conn->close();
    }
    ?>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <title>register</title>
</head>
<body>
    <form action="" method="post">
        <div class="register">
            <h1>Register</h1>
            <input type="text" placeholder="Enter name" name="fname" required>
            <input type="text" placeholder="Enter Last name" name="lname" required>
            <input type="text" placeholder="Enter Email address" name="email" required>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <input type="password" placeholder="Enter Password" name="psw" required>
            <br>
            <br>
            <input type="text" placeholder="Enter street name" name="sname" required>
            <input type="text" placeholder="Enter house number" name="hname" required>
            <input type="text" placeholder="Enter city" name="cname" required>
            <input type="text" placeholder="Enter zip code" name="zname" required>
            <input type="text" placeholder="Enter country" name="coname" required>
            <br>
            <br>
            <input type="text" placeholder="Enter date of birth" name="bname" required>
            <input type="text" placeholder="Enter date of register" name="rname" required>
            <input type="text" placeholder="Enter phone number" name="pname" required>
            <button class="submit" type="submit" name="myregister">Register</button>         
        </div>
    </form>
</body>
</html>
