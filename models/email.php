<?php
class Email extends Model{
    public function addEmail($name_email)
    {
        $sql = self::$connection->prepare("INSERT INTO `email` (`email_id`, `name_email`) VALUES (null, ?)");
        $sql->bind_param("s", $name_email);
      return  $sql->execute(); //return an object
          
       // return $items; //return an array
    }
}
