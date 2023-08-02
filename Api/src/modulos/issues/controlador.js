const TABLA = 'reports';

module.exports = function (dbInyectada) {

    let db= dbInyectada;

    if(!db){
        db = require('../../DB/mysql');
    }

    function Issue (){
        return db.Issue(TABLA);
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
        Issue,
        agregar,
        eliminar,
    }
}