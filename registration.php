<?php
require_once('./login_registration.php');
userSQL("registration");

echo "登録<br>";
var_dump($_SESSION);
echo "<a href='./index.php'>戻る</a>";

?>