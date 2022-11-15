<?php

require_once 'libs/Router.php';
require_once 'api/ApiGamesController.php';
require_once 'models/juegosModel.php';
require_once 'api\ApiUserController.php';

$router = new Router();

$router->addRoute('games', 'GET', 'ApiGamesController', 'getAll');
$router->addRoute('games/:ID', 'GET', 'ApiGamesController', 'getOne');
$router->addRoute('games/:CATEGORIE/list', 'GET', 'ApiGamesController', 'getCategorie');
$router->addRoute('games', 'POST', 'ApiGamesController', 'addGame');

//Paginacion
$router->addRoute('/games/startAt/:START/endAt/:END', 'GET', 'ApiGamesController', 'gamePagination');

//TokenAUTH
$router->addRoute('games/user/token', 'GET', 'ApiUserController', 'getToken');
$router->addRoute('games/user/:ID', 'GET', 'ApiUserController', 'getUser');



$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);