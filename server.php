<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$branch ="";
$phone = "";
$errors = array(); 


// connect to the database
$db = mysqli_connect('localhost', 'root', 'trainersql', 'registration');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $branch = mysqli_real_escape_string($db, $_POST['branch']);
  $phone = mysqli_real_escape_string($db, $_POST['phone']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
  $event = mysqli_real_escape_string($db, $_POST['event']);
  
  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($branch)) { array_push($errors, "branch name is required"); }
  if (empty($phone)) { array_push($errors, "phone no is required"); }
  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
  array_push($errors, "The two passwords do not match");
  }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username && $user['event'] === $event) {
      array_push($errors, "User already registered for this event");
    }

    if ($user['email'] === $email && $user['event'] === $event) {
      array_push($errors, "email already exists");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
    $password = md5($password_1);//encrypt the password before saving in the database

    $query = "INSERT INTO users (username, email, password, branch, phone, event) 
          VALUES('$username', '$email', '$password', '$branch', '$phone', '$event' )";
          
    if(mysqli_query($db, $query)) {
       
        header('location: home.html');
	}
  }
}

// ... 

// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);
  if (empty($username)) {
    array_push($errors, "Username is required");
  }
  if (empty($password)) {
    array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
    $password = md5($password);
    $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    echo $query;
    $results = mysqli_query($db, $query);
    if (mysqli_num_rows($results) == 1) {
      
      header('location: dashboard.html');
    }else {
      array_push($errors, "Wrong username/password combination");
    }
  }
}

?>
