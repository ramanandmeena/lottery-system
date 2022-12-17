<?php

echo $stu_id = $_GET['id'];

$conn= mysqli_connect("localhost","root","","winner") or die("connection fild");
$sql="DELETE FROM lottery_user WHERE sid = {$stu_id}";
$result = mysqli_query($conn, $sql) or die ("unsussefull query.");

header("location: http://localhost/win/view.php");
mysqli_close($conn)
?>