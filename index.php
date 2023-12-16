<?php
    session_start();
    $user_name =  $_SESSION['nickname'];
    // require_once("./bm.php");
    // $bm_all = getBm();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Document</title>
</head>
<body>
    <div >
        <form action="./login.php" method="post">
        <div class="login-area">
            <span class="overlay"></span>
            <h1 class="h1-txt">Log in</h1>
            <label for="user_id">
                ID
                <input type="text" name="user_id" id="user_id" placeholder="**user_id**" required>
            </label>
            <label for="pass">
                PASSWORD
                <input type="text" name="pass" id="pass" placeholder="**user_id**" required>
            </label> 
            <button class="btn" type="submit">Log in</button>           
        </div>
        </form>
        <div class="registration-area">
            <form action="./registration.php" method="post">
            <div>
                <h1 class="h1-txt">ユーザー登録</h1>
                <label for="user_id">
                    ID
                    <input type="text" name="user_id" id="user_id" placeholder="**user_id**" required>
                </label>
                <label for="pass">
                    PASSWORD
                    <input type="text" name="pass" id="pass" placeholder="**password**" required>
                </label>
                <label for="nickname">
                    PASSWORD
                    <input type="text" name="nickname" id="nickname" placeholder="**nickname**" required>
                </label>
                <button class="btn" type="submit">登録</button>
            </div>
            </form>
        </div>
        <form action="./logout.php" method="post">
            <button class="btn" type="submit">ログアウト</button>
        </form>
        <div class="bm-submit">
        <form action="./bm.php" method="post" target="iframe-bm">
        <!-- <form action="./" method="post"> -->

        <div class="bm-area">
                <h1 class="h1-txt">ブックマーク登録<?= ": ".$user_name." でログイン中";?></h1>
                <label for="name">
                    Subject
                    <input type="text" name="name" id="name" placeholder="**subject**" required>
                </label>
                <label for="URL">
                    URL
                    <input type="text" name="URL" id="URL" placeholder="**reference url**" required>
                </label>
                <label for="summary">
                    Comment
                    <input type="text" name="summary" id="summary" placeholder="**comment**" required>
                </label>

                <button class="btn" type="submit" >登録</button>
            </div>
            <div><a href="./" class="registration">リロード</a></div>
        </div>
        </form>

        <div class="bm-all">
            <iframe id="iframe-bm" name="iframe-bm" width="700" height="500"></iframe>
        </div>



</body>
</html>