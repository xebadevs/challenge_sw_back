<?php

class DB {
    static $db;

    static function getConnection(){
        if (!isset(self::$db)) {
            self::$db = new PDO(
                'mysql:host=127.0.0.1;dbname=ch_scandiweb',
                'root',
                ''
            );
        }

        return self::$db;
    }
}