<?php
function render ($contentFile, $variables = array()) {
    $contentPath = TEMPLATES_PATH . '/' . $contentFile;
    
    if (count($variables) > 0) {
        foreach ($variables as $key => $value) {
            if (strlen($key) > 0) {
                ${$key} = $value;
            }
        }
    }
require TEMPLATES_PATH . '/header.php';

    if (file_exists($contentPath)) {
        require $contentPath;
    } else {      

        require TEMPLATES_PATH . '/error_public.php';
    }

    require TEMPLATES_PATH . '/footer.php';
}

function getAuthors($link) {
    $q = mysqli_query($link, 'SELECT * FROM authors');
    if (mysqli_error($link)) {
        return false;
    }
    $ret = [];
    while ($row = mysqli_fetch_assoc($q)) {
        $ret[] = $row;
    }
    return $ret;
}

function isAuthorIdExists($link, $ids) {
    if (!is_array($ids)) {
        return false;
    }
    $q = mysqli_query($link, 'SELECT * FROM authors WHERE 
        author_id IN(' . implode(',', $ids) . ')');
    if (mysqli_error($link)) {
        return false;
    }
    
    if (mysqli_num_rows($q) == count($ids)) {
        return true;
    }
    return false;
}
