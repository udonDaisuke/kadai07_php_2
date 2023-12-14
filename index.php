<?php
    session_start();
    echo $_SESSION['nickname'];
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <div><a href="./registration.php" class="registration">登録はこちら</a></div>
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
            <div><a href="./" class="registration">Back to Log in</a></div>
            </form>
        </div>
        <div class="bm-submit">
        <form action="./bm.php" method="post">
            <div>
                <h1 class="h1-txt">ブックマーク登録</h1>
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

                <button class="btn" type="submit">登録</button>
            </div>
            <div><a href="./" class="registration">Back to Log in</a></div>
            </form>
        </div>
        <form action="./logout.php" method="post">
            <button class="btn" type="submit">ログアウト</button>
        </form>

    </div>



</body>
</html>