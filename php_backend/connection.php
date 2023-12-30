<?php

class Connection{

    private $host = "localhost";
    private $db = "ykakkaya_flutter-todo";
    private $username = "ykakkaya_flutter-todo";
    private $password = "flutter-todo";

    function connect(){

        try 
        {
            $connection = new PDO("mysql:host=$this->host;dbname=$this->db", $this->username, $this->password);
            echo "Connection established successfully";
            return $connection;

            
        } catch (PDOException $e) {
            echo "Connection failed: ". $e->getMessage();
            return $e->getMessage();
        }
    }
}
?>