<?php
/**
 * Created by PhpStorm.
 * User: Hung
 * Date: 16/09/2015
 * Time: 22:53
 */

if(isset($_GET['id'])){
    $authorId = $_GET['id'];
} else {
    $authorId = 0;
}

try {
    // query for authors
    $queryAuthor = $pdo->query('SELECT * FROM author JOIN image ON author.image_id = image.id WHERE author.id = '. $authorId .' ');
    $author = $queryAuthor->fetchAll(PDO::FETCH_OBJ);

    // query for book author
    $queryBookAuthor = $pdo->query('SELECT book.id, title FROM author JOIN book ON book.author_id = author.id WHERE author.id = '. $authorId .' ');
    $bookAuthors = $queryBookAuthor->fetchAll(PDO::FETCH_OBJ);

} catch (Exception $e){
    throw new Exception('Error query');
}

if(!empty($author)){
    foreach($author as $thisAuthor) { ?>

        <h1><?= $thisAuthor->name . ' ' . $thisAuthor->surname; ?></h1>
        <img src="<?= $thisAuthor->url ?>" />
        <p><?= $thisAuthor->description ?></p>
        <p>Liste des livres de l'auteur : <br/>
            <?php
            if(!empty($bookAuthors)){ // if the author has at least one book
                foreach($bookAuthors as $bookAuthor) : ?>
                    <a href="index.php?p=book&id=<?= $bookAuthor->id ?>"><?= $bookAuthor->title ?></a><br/>
                <?php endforeach;
            } else { ?>
                Pas de livre associé à cet auteur.
            <?php }
            ?>
        </p>

    <?php
    }
}
?>

<br/>
<br/>

<a href="index.php">Retour vers la liste des livres</a>