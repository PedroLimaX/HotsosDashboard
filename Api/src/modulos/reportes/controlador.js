const TABLA = 'reports';

module.exports = function (dbInyectada) {

    let db= dbInyectada;

    if(!db){
        db = require('../../DB/mysql');
    }

    function todos (){
        return db.todos(TABLA);
    }
    
    function uno (id){
        return db.uno(TABLA,id);
    }

    function orderByNOrder (nOrder){
        return db.orderByNOrder(TABLA,nOrder);
    }

    function Daily (month){
        return db.Daily(TABLA,month);
    }

    function Hourly (day){
        return db.Daily(TABLA,day);
    }
    
    function agregar (body){
        return db.agregar(TABLA,body);
    }
    
    function eliminar (body){
        return db.eliminar(TABLA,body);
    }

    return{
        todos,
        uno,
        orderByNOrder,
        Daily,
        Hourly,
        agregar,
        eliminar,
    }
}