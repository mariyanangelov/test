<?php
mb_internal_encoding('UTF-8');
$link = mysqli_connect('localhost', 'user', 'qwerty', 'books');
if (!$link) {
    echo 'No database';
}
mysqli_set_charset($link, 'utf8');

