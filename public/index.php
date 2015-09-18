<?php
/**
 * Created by PhpStorm.
 * User: Hung
 * Date: 15/09/2015
 * Time: 21:33
 */

require '../app/autoload.php';
\App\Autoload::register();

if(isset($_GET['p'])){
    $p = $_GET['p'];
} else {
    $p = 'home';
}

try {
    $pdo = new PDO('mysql:dbname=Library;host=localhost', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e){
    throw new Exception('Error connexion database');
}


ob_start();

if($p === 'home'){
    require '../pages/home.php';
} elseif($p === 'book'){
    require '../pages/bookDetail.php';
} elseif($p === 'author'){
    require '../pages/authorDetail.php';
}

$content = ob_get_clean();
require '../pages/templates/default.php';