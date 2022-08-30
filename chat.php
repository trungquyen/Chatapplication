<?php
    session_start();
    if (!isset($_SESSION['unique_id'])){
        header("location: login.php");
    }
?>
<?php include_once "template/header.php" ?>
<body>
    <div class="wrapper">
        <section class="chat-area">
            <header>
                <?php
                    include_once "php/config.php";
                    $users_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                    $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = '{$users_id}'");
                    if (mysqli_num_rows($sql)){
                        $row = mysqli_fetch_assoc($sql);
                    }
                ?>
                <a href="users.php" class = "back-icon"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="php/image/<?php echo $row['img'] ?>" alt="">
                <div class="details">
                    <span><?php echo $row['fname'] . " " . $row['lname'] ?></span>
                    <p><?php echo $row['status'] ?></p>
                </div>
            </header>
            <div class="chat-box">
                <!-- <div class="chat outgoing">
                    <div class="details">
                        <p>wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww</p>
                    </div>
                </div>
                <div class="chat incoming">
                    <img src="image/avata.jpg" alt="">
                    <div class="details">
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                </div> -->
            </div>
            <form action="#" class="typing-area" autocomplete="off">
                <input type="text" name="outgoing_id" value="<?php echo $_SESSION['unique_id']; ?>" hidden>
                <input type="text" name="incoming_id" value="<?php echo $users_id; ?>" hidden>
                <input type="text" name="message" class="input-field" placeholder="Type a message here...">
                <button><i class="fab fa-telegram-plane"></i></button>
            </form>
        </section>
    </div>

    <script src="js/chat.js"></script>
</body>
</html>