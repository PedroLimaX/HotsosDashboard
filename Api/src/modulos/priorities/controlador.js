const TABLA = 'reports';

module.exports = function (dbInyectada) {

    let db= dbInyectada;

    if(!db){
        db = require('../../DB/mysql');
    }

    function Priority (){
        return db.Priority(TABLA);
    }
    
    function uno (id){
        return db.uno(TABLA,id);
    }

    function agregar (body){
        return db.agregar(TABLA,body);
    }
    
    function eliminar (body){
        return db.eliminar(TABLA,body);
    }

    return{
        uno,
        Priority,
        agregar,
        eliminar,
    }
}