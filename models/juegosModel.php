<?php


class JuegosModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_juegos;charset=utf8', 'root', '');
    }

    function getJuegos(){
        $query = $this->db->prepare( 'SELECT * FROM juegos');
        $query->execute();
        $juegos = $query->fetchAll(PDO::FETCH_OBJ);
        return $juegos;
    }
    
    function getJuego($id){
        $sentencia = $this->db->prepare( 'SELECT * FROM juegos WHERE id=?');
        $sentencia->execute(array($id));
        $tarea = $sentencia->fetch(PDO::FETCH_OBJ);
        return $tarea;
    }

    function getCategorie($categorie){
        $sentencia = $this->db->prepare( 'SELECT * FROM juegos WHERE categories = ? ORDER BY id ASC');
        $sentencia->execute(array($categorie));
        $games = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $games;
    }

    function insertGame($name, $position = null, $description, $date, $img = null, $categorie, $id_categorie = null){
        $pathImg = null;
        switch($categorie){
            case "accion":
                $id_categorie = 3;
                break;
            case "aventura":
                $id_categorie = 1;
                break;
            case "deporte":
                $id_categorie = 2;
                break;
        }
        if(!empty($img)){
            $pathImg = $this->uploadImg($img);
    
        }
        $sentencia = $this->db->prepare('INSERT INTO juegos(id, name, release_date, categories, url_img, description, id_categorie) VALUES( ?, ?, ?, ?, ?, ?, ?)');
        $sentencia->execute(array($position, $name, $date, $categorie, $pathImg, $description, $id_categorie));
        
        return $this->db->lastInsertId();
    }

    private function uploadImg($image){
        $target = 'img/games/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

    function deleteGameFromDB($id){
        $sentencia = $this->db->prepare("DELETE FROM juegos WHERE id=?");
        $sentencia->execute(array($id));
    }

    function editGame($name, $id, $date, $categorie, $description, $id_categorie){
        $sentencia = $this->db->prepare("UPDATE juegos SET name = ?, release_date = ?, categories = ?, description = ?, id_categorie = ? WHERE id=?");
        $sentencia->execute(array($name, $date, $categorie, $description, $id_categorie, $id));
    }

    function getPagination($start, $end){
        $sentencia = $this->db->prepare("SELECT * FROM `juegos` LIMIT $start, $end;");
        $sentencia->execute();
        $juegos = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $juegos;
    }
}