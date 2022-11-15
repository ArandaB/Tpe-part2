<?php


class categoriesModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_juegos;charset=utf8', 'root', '');
    }

    function getCategories(){
        $query = $this->db->prepare('SELECT a.*, b.* FROM juegos a LEFT JOIN categorias b ON a.id_categorie = b.id_categorie');
        $query->execute();
        $categoriesT = $query->fetchAll(PDO::FETCH_OBJ);
        return $categoriesT;
    }
}