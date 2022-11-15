<?php

require_once 'models/userModel.php';
require_once 'api/api.view.php';
require_once 'helpers/AuthApiHelpers.php';

class ApiUserController {
    private $model;
    private $view;
    private $authHelper;

    function __construct() {
        $this->model = new userModel();
        $this->view = new apiView();
        $this->authHelper = new AuthApiHelper();
    }

    function getToken($params = null){
        $userpass = $this->authHelper->getBasic();
        $getUser = $this->model->getUser($userpass["user"]);

        $user = array("user" =>$userpass["user"]);

        if($userpass["user"] && password_verify($userpass["pass"], $getUser->password)){
           $token = $this->authHelper->createToken($user);
           $this->view->response(["token"=>$token], 200);
        }else{
            $this->view->response("Usuario y contraseña incorrectos", 401);
        }    
    }

    function getUser($params = null){
        $id = $params[":ID"];
        $user = $this->authHelper->getUser();
        if($user){
            if($id == $user->sub){
                $this->view->response(200);
            }else{
                $this->view->response("Forbidden", 403);
            }
        }else{
            $this->view->response("Unauthorized", 401);
        }    
    }
}