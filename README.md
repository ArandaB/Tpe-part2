# Tpe-part2
Api de juegos mas valorados
EndsPoint
->....Tpe/api/games/, 'GET':
Trae tabla completa con todos sus items

->....Tpe/api/games/ID, 'GET':
Trae un unico item de la tabla por su ID

->....Tpe/api/games/CATEGORIA/list, 'GET':
Filtra items por su categoria de las cuales pueden ser Accion, Aventura y Deporte

->....Tpe/api/games/, 'POST':
Crear nuevo item enviando un Json con los puntos =
{
    "name": "",
    "description": "",
    "date": "00/00/0000",
    "categorie": "",
    "idCategorie": ""
}
(ids de Categoria : 1=aventura, 2=deporte, 3=accion)

->....Tpe/api/games/startAt/:START/endAt/:END, 'GET':
Paginacion de items, donde :START es a partir de que item segun su id y :END es la cantidad en total
