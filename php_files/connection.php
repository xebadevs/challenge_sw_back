<?php

class Connection{
    private $host = 'localhost';
    private $dbname = 'ch_scandiweb';
    private $dbuser = 'root';
    private $dbpassword = '';
    private $connect;

    public function __construct(){
        $connection = "mysql:host" . $this->host .";dbname=" . $this->dbname . ";charset-utf8";
        try{
            $this->connect = new PDO($connection, $this->dbuser, $this->dbpassword);
            $this->connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch (Exception $e){
            $this->connect = 'Connection error';
            echo 'ERROR: ' . $e->getMessage();
        }
    }

    public function connect(){
            return $this->connect;
        }
}