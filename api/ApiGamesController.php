<?php

require_once 'models/juegosModel.php';
require_once 'api/api.view.php';
require_once 'helpers/AuthApiHelpers.php';

class ApiGamesController {
    private $model;
    private $view;
    private $data;
    private $authHelper;

    function __construct() {
        $this->model = new JuegosModel();
        $this->view = new apiView();
        $this->authHelper = new AuthApiHelper();
        $this->data = file_get_contents("php://input");
    }

    function getAll($params = null) {
        $games = $this->model->getJuegos();
        if(!empty($games)){
            $this->view->response($games, 200);
        }else{
            $this->view->response($games, 404);
        }    
    }

    function getOne($params = null) {
        $id = $params[':ID'];
        $game = $this->model->getJuego($id);
        if($game){
            $this->view->response($game, 200);
        }else{
            $this->view->response("Game id = $id not found", 404);
        }
    }

    function getCategorie($params = null) {
        $categorie = $params[':CATEGORIE'];
        $games = $this->model->getCategorie($categorie);
        if(!empty($games)){
            $this->view->response($games, 200);
        }else{
            $this->view->response("This games category is null", 404);
        }   
    }

    function getData(){
        return json_decode($this->data);
    }

    function addGame($params = null){
        $data = $this->getData();

        $id = $this->model->insertGame($data->name,$position = null, $data->description, $data->date, $img = null, $data->categorie, $idCategorie = null);
        $game = $this->model->getJuego($id);

        $user = $this->authHelper->getUser();

        if($user){
            if($game){
                $this->view->response($game, 200);
            }else{
                $this->view->response("El juego no fue creado", 500);
            }
        }else{
            $this->view->response("Unauthorized", 401);
        }   
    }

    function gamePagination($params = null){
        $start = $params[':START'];
        $end = $params[':END'];
        $games = $this->model->getPagination($start, $end);
        if($games){
            $this->view->response($games, 200);
        }else{
            $this->view->response("Error 404 : Not found" ,404);
        }
    }
}