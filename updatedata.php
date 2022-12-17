<?php 
$stu_id = $_POST['sid'];
$stu_name = $_POST['sname'];
$stu_address = $_POST['saddress'];
$stu_class = $_POST['sclass'];
$stu_phone = $_POST['sphone'];

$conn= mysqli_connect("localhost","root","","winner") or die("connection fild");
$sql="UPDATE lottery_user SET sname = '{$stu_name}',saddress = '{$stu_address}',slottery_number = '{$stu_class}',sphone = '{$stu_phone}' WHERE sid = {$stu_id}" ;
$result = mysqli_query($conn, $sql) or die ("unsussefull query.");

header("location: http://localhost/win/view.php");
mysqli_close($conn)




?>