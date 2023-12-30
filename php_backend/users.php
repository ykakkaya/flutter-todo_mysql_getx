<?php

class User{
    private $connection;
    private $table = "users";
    public $id;
    public $username;
    public $password;
    public $email;
    public $date;
    
    public function __construct($connection){
        $this->connection = $connection;
    }

    public function __construct($connection){
        $this->connection = $connection;
     }

     function addUser{
  
            $query = "INSERT INTO $this->table (username, password, email,date) VALUES (:username, :password, :email,:date)";
            $statement = $this->connection->prepare($query);
            $statement->execute(array(
                ":username" => $this->username,
                ":password" => $this->password,
                ":email" => $this->email
                ":date" => $this->date
            ));
         return $statement->rowCount();
        
     }
}

?>