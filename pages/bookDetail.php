<?php
/**
 * Created by PhpStorm.
 * User: Hung
 * Date: 16/09/2015
 * Time: 22:27
 */

if(isset($_GET['id'])){
    $bookId = $_GET['id'];
} else {
    $bookId = 0;
}

try {
    $queryBook = $pdo->query('SELECT * FROM book JOIN image ON book.image_id = image.id JOIN author ON book.author_id = author.id WHERE book.id = '. $bookId .' ');
    $book = $queryBook->fetchAll(PDO::FETCH_OBJ);
} catch (Exception $e){
    throw new Exception('Error query');
}

if(!empty($book)){
    foreach($book as $thebook) : ?>

        <h1><?= $thebook->title ?></h1>
        <img src="<?= $thebook->url ?>" />
        <p><?= $thebook->description ?></p>
        <h2><?= $thebook->name . ' ' . $thebook->surname ?></h2>
        <td><a href="index.php?p=author&id=<?= $thebook->author_id ?>">Lien vers l'auteur</a></td>

    <?php endforeach;
}
?>

<br/>
<br/>

<a href="index.php">Retour vers la liste des livres</a>