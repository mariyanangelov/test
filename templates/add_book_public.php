
<a href="index.php">Списък</a>
<a href="index.php?page=authors">Нов автор</a>
<form method="post" action="add_book.php">
    Име: <input type="text" name="book_name" />

    
    <div>Автори:<select name="authors[]" multiple style="width: 200px">
            <?php
            foreach ($authors as $row) {
                echo '<option value="' . $row['author_id'] . '">
                    ' . $row['author_name'] . '</option>';
            }
            ?>

        </select></div>
    <input type="submit" value="Добави" />    

</form>

