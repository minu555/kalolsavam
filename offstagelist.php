<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  </head>
<body>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #ff4040;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #a52a2a;
}
</style>
</head>
<p><h1><i><center></center>DYUTHI ARTFEST</center> </i></h1></p>
<p><center><h1><i>GOVERMENT ENGINEERING COLLEGE IDUKKI  </i></h1></center></p>
<p> <img src="lo.jpg" alt="arts logo" width="100" height="100" align="left"> </p>
<body>
<ul>
  <li><a href="dashboard.html">Admin Home</a></li>
 <li><a href="gallery.html">Gallery</a></li>
  <li><a href="events.html">Events</a></li>
  <li><a href="conact.html">Contact us</a></li>
</ul>

<?php include('server.php') ?>

<?php $query = "SELECT username,branch,phone,email,val as item FROM users join events on users.event=events.id WHERE event>22 ORDER BY event";
 $results = mysqli_query($db, $query);
 $rows=mysqli_fetch_all($results,MYSQLI_ASSOC);?>
<body>
	 <table style="width:100%">
  <tr>
    <th>Name</th>
    <th>branch</th>
    <th>item</th>
    <th>phone</th>
    <th>email</th>
  </tr>
  <?php foreach($rows as $row) { ?>
  <tr>
    <td><?php echo $row['username']; ?></td>
    <td><?php echo $row['branch']; ?></td>
    <td><?php echo $row['item']; ?></td>
    <td><?php echo $row['phone']; ?></td>
    <td><?php echo $row['email']; ?></td>
  </tr>
<?php } ?>
</table> 
</body>
</html>
