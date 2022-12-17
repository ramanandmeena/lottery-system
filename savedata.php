<?php  
 $stu_name = $_POST['sname'];
 $stu_address = $_POST['saddress'];
 $stu_class = $_POST['slottery_number'];
 $stu_phone = $_POST['sphone'];

$conn= mysqli_connect("localhost","root","","winner") or die("connection fild");
$sql=" INSERT INTO lottery_user(sname,saddress,slottery_number,sphone) VALUES ('{$stu_name }','{$stu_address}','{$stu_class}','{$stu_phone }')" ;
$result = mysqli_query($conn, $sql) or die ("unsussefull query.");

// echo"Thankyou";

header("location: http://localhost/win/index.php");
mysqli_close($conn)

?>