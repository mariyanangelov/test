<?php

require realpath(dirname(__FILE__) . '/../homeworkN7/config.php');
require INC_PATH . '/db.php';
require INC_PATH . '/functions.php';


if (isset($_GET['page'])) {
    switch ($_GET['page']) {
        case 'add-book':
            $page = 'add_book';
            break;
        case 'authors':
            $page = 'authors';
            break;
        default:
            $page = 'books';
            break;
    }
} else {
    $page = 'books';
}


require realpath(dirname(__FILE__) . '/../homeworkN7/' . $page . '.php');
