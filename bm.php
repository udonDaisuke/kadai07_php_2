<?php
    session_start();

    require("./dbconnect.php");

    $name = $_POST['name'];
    $URL = $_POST['URL'];
    $summary = $_POST['summary'];

    $user_id = $_SESSION['user_id'];
    $nickname = $_SESSION['nickname'];

    //３ SQL作成 ブックマーク投稿
    $stmt = $pdo->prepare("
        INSERT INTO bm_main(name,URL,summary,postby)
        VALUES(:name,:URL,:summary,:postby);
        ");
    //  2. バインド変数を用意
    $stmt->bindValue(':name', $name, PDO::PARAM_STR);
    $stmt->bindValue(':URL', $URL, PDO::PARAM_STR);
    $stmt->bindValue(':summary', $summary, PDO::PARAM_STR);
    $stmt->bindValue(':postby', $nickname, PDO::PARAM_STR);

    $status = $stmt->execute();

    //4 SQL作成 ブックマーク取得
    $stmt = $pdo->prepare("
        SELECT * FROM bm_main ");
    //  2. バインド変数を用意

    $status = $stmt->execute();
    $data_all = $stmt->fetch();

    var_dump($data_all);
?>