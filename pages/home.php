<?php
/**
 * Created by PhpStorm.
 * User: Hung
 * Date: 15/09/2015
 * Time: 21:43
 */

// query for books
$sqlBooks = 'SELECT author.id, author.name, author.surname, book.id, book.title, book.author_id FROM book INNER JOIN author ON book.author_id = author.id';

// query for authors
$queryAuthors = $pdo->query('SELECT * FROM author');
$authors = $queryAuthors->fetchAll(PDO::FETCH_OBJ);

// Filter
if(isset($_POST['filter']) && !empty($_POST['select-author'])){ // if filter button is submitted and an author is selected
    $authorId = $_POST['select-author'];

    $sqlBooks .= ' WHERE book.author_id = '. $authorId;
} else {
    $sqlBooks .= ' WHERE 1';
}
$queryBooks = $pdo->query($sqlBooks);
$books = $queryBooks->fetchAll(PDO::FETCH_OBJ);

?>

<h1>Liste des livres</h1>

<form action="" method="post">
    <label>
        Filter par auteur :
        <select name="select-author">
            <option value=""></option>
            <?php foreach($authors as $author) : ?>
            <option value="<?= $author->id; ?>"><?= $author->name . ' ' . $author->surname; ?></option>
            <?php endforeach; ?>
        </select>
    </label>
    <input type="submit" value="Filtrer" name="filter"/>
</form>

<br>
<br>

<table border="1">
    <thead>
        <tr>
            <td>ID</td>
            <td>Titre</td>
            <td>Auteur</td>
            <td>Detail du livre</td>
            <td>Detail sur auteur</td>
        </tr>
    </thead>

    <?php foreach($books as $book) : // display books info ?>
        <tr>
            <td><?= $book->id ?></td>
            <td><?= $book->title ?></td>
            <td><?= $book->name . ' ' . $book->surname; ?></td>
            <td><a href="index.php?p=book&id=<?= $book->id ?>">Lien vers le livre</a></td>
            <td><a href="index.php?p=author&id=<?= $book->author_id ?>">Lien vers l'auteur</a></td>
        </tr>
    <?php endforeach; ?>

</table>