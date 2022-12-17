<div id="wrapper">
        <div id="header">
            <h1>LOTTERY FORM</h1>
        </div>
        <div id="menu">
            <ul>
                <li>
                    <a href="index.php">Home</a>
                </li>
                <li>
                    <a href="about.php">about</a>
                </li>
                <li>
                    <a href="contact.php">contact</a>
                </li>
            </ul>
        </div>
<h3>see admin panel http://localhost/win/view.php</h3>

<link rel="stylesheet" href="css/style.css">
<div id="main-content">
    <h2>Add New Record</h2>
    <form class="post-form" action="savedata.php" method="post">
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="sname" />
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" name="saddress" />
        </div>
        <div class="form-group">
            <label>Choose Lottery NO.</label>
            <select name="slottery_number">
                <option value="" selected disabled>Select Number</option>
               <?php
               $conn= mysqli_connect("localhost","root","","winner") or die("connection fild");
               $sql="SELECT * FROM  lottery_no";
               $result = mysqli_query($conn, $sql) or die ("unsussefull query.");
              
               while($row=mysqli_fetch_assoc($result)){
               ?>
                <option value=<?php echo $row ["cid"]; ?>><?php echo $row ["cname"]; ?> </option>
                <?php } ?>
              
            </select>
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text" name="sphone" />
        </div>
        <input class="submit" type="submit" value="Save"  />
        
        
       
       
    </form>
</div>
</div>
</body>
</html>
