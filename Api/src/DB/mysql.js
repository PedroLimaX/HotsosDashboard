const mysql = require('mysql');
const config = require('../config');

const dbconfig = {
    host:config.mysql.host,
    user:config.mysql.user,
    password:config.mysql.password,
    database:config.mysql.database,

}

let conexion;

function conMysql(){
    conexion = mysql.createConnection(dbconfig);

    conexion.connect((err)=>{
        if(err){
            console.log('[db err]', err);
            setTimeout(conMysql,200);
        }
        else{
            console.log('DB Conectada');    
        }
    });

    conexion.on('error', err=>{
        console.log('[db err]', err);
        if(err.code === 'PROTOCOL_CONNECION_LOST'){
            conMysql();
        }
        else{
            throw err;
        }
    })
}

conMysql(); 

function todos(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT N_ORDER as 'Numero de Orden',
        DATE(CREATED_AT) as 'Fecha de Creacion',
        DATE(CREATED_AT) as 'Fecha de Cierre',
        TYPE as 'Tipo de Reporte',
        ATTACHMENT as 'Contiene Adjuntos',
        N_PRIORITY as 'Prioridad de Reporte',
        ROOM as 'Habitacion de Reporte',
        ASSIGNED_AREA as 'Area',
        CASE WHEN ROOM BETWEEN 1000 AND 2000 THEN 'Diseño'
            ELSE 
                CASE WHEN ROOM BETWEEN 2000 AND 3000 THEN 'Artistas'
                ELSE
                    CASE WHEN ROOM BETWEEN 3000 AND 4000 THEN 'Piramide'
                    ELSE
                        CASE WHEN ROOM BETWEEN 4000 AND 5000 THEN 'Musica'
                        ELSE
                            CASE WHEN ROOM BETWEEN 5000 AND 6000 THEN 'Paz'
                            ELSE 'Desconocida'
                            END
                        END
                    END
                END
            END AS 'Casa de Habitacion',
    
            CASE WHEN ROOM BETWEEN 1100 AND 1200 OR ROOM BETWEEN 2100 AND 2200 OR ROOM BETWEEN 3100 AND 3200 OR ROOM BETWEEN 4100 AND 4200 OR ROOM BETWEEN 5100 AND 5200 THEN '1'
            ELSE 
                CASE WHEN ROOM BETWEEN 1200 AND 1300 OR ROOM BETWEEN 2200 AND 2300 OR ROOM BETWEEN 3200 AND 3300 OR ROOM BETWEEN 4200 AND 4300 OR ROOM BETWEEN 5200 AND 5300 THEN '2'
                ELSE
                    CASE WHEN ROOM BETWEEN 1300 AND 1400 OR ROOM BETWEEN 2300 AND 2400 OR ROOM BETWEEN 3300 AND 3400 OR ROOM BETWEEN 4300 AND 4400 OR ROOM BETWEEN 5300 AND 5400 THEN '3'
                    ELSE
                        CASE WHEN ROOM BETWEEN 1400 AND 1500 OR ROOM BETWEEN 2400 AND 2500 OR ROOM BETWEEN 3400 AND 3500 OR ROOM BETWEEN 4400 AND 4500 OR ROOM BETWEEN 5400 AND 5500 THEN '4'
                        ELSE
                            CASE WHEN ROOM BETWEEN 1500 AND 1600 OR ROOM BETWEEN 2500 AND 2600 OR ROOM BETWEEN 3500 AND 3600 OR ROOM BETWEEN 4500 AND 4600 OR ROOM BETWEEN 5500 AND 5600 THEN '5'
                            ELSE 
                                CASE WHEN ROOM BETWEEN 1600 AND 1700 OR ROOM BETWEEN 2600 AND 2700 OR ROOM BETWEEN 3600 AND 3700 OR ROOM BETWEEN 4600 AND 4700 OR ROOM BETWEEN 5600 AND 5700 THEN '6'
                                ELSE 'Otro'
                                END
                            END
                        END
                    END
                END
            END AS 'Piso de Habitacion',
        APPLICANT_ID_WORKER as 'Id del Colaborador Solicitante',
        CONCAT(APPLICANT_NAME,' ',APPLICANT_LASTNAME) as 'Nombre del Colabodador Solicitante',
        ASSIGNED_ID_WORKER as 'Id del Colaborador Asignado',
        CONCAT(ASSIGNED_NAME,' ',ASSIGNED_LASTNAME) as 'Nombre del colaborador Asignado',
        CONCAT(GUEST_NAME,' ',GUEST_LASTNAME) as 'Nombre del Huesped'
    FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}


function Type(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', TYPE AS 'Tipo' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Issue(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', ISSUE AS 'Problema' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Guest(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', GUEST_TYPE AS 'Huesped' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Priority(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', N_PRIORITY AS 'Prioridad' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Assigned(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', ASSIGNED_ID_WORKER AS 'Asignado' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Room(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area', ROOM AS 'Habitacion' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function House(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area',
        CASE WHEN ROOM BETWEEN 1000 AND 2000 THEN 'Diseño'
        ELSE 
            CASE WHEN ROOM BETWEEN 2000 AND 3000 THEN 'Artistas'
            ELSE
                CASE WHEN ROOM BETWEEN 3000 AND 4000 THEN 'Piramide'
                ELSE
                    CASE WHEN ROOM BETWEEN 4000 AND 5000 THEN 'Musica'
                    ELSE
                        CASE WHEN ROOM BETWEEN 5000 AND 6000 THEN 'Paz'
                        ELSE 'Desconocida'
                        END
                    END
                END
            END
        END AS 'Casa' FROM ${tabla}` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Year(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Month(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function Week(tabla){
    return new Promise( (resolve,reject) => {
        conexion.query(`SELECT YEAR(CREATED_AT) as 'Year', MONTHNAME(CREATED_AT) as 'Month', DAY(CREATED_AT) as 'Day', WEEK(CREATED_AT) as 'Week', ASSIGNED_AREA AS 'Area' FROM ${tabla};` , (error,result) => {
            return error ? reject(error) : resolve(result);
        })
    });
}

function uno(tabla,id){
    return new Promise((resolve,reject)=>{
        conexion.query(`SELECT * FROM ${tabla} WHERE ID=${id}`,(error,result)=>{
            return error ? reject(error) : resolve(result);
        })
    });
}


function agregar(tabla,data){
    return new Promise((resolve,reject)=>{
        conexion.query(`INSERT INTO ${tabla} SET ? ON DUPLICATE KEY UPDATE ?`,[data,data],(error,result)=>{
            return error ? reject(error) : resolve(result);
        })
    });
}


function eliminar(tabla,data){
    return new Promise((resolve,reject)=>{
        conexion.query(`DELETE FROM ${tabla} WHERE id = ?`,data.id,(error,result)=>{
            return error ? reject(error) : resolve(result);
        })
    });
}


function query(tabla,consulta){
    return new Promise((resolve,reject)=>{
        conexion.query(`SELECT * FROM ${tabla} WHERE ?`,consulta,(error,result)=>{
            return error ? reject(error) : resolve(result[0]);
        })
    });
}


module.exports = {
    todos,
    uno,
    agregar,
    eliminar,
    Type,
    Issue,
    Guest,
    Priority,
    Assigned,
    Room,
    House,
    Year,
    Month,
    Week,
    query,
}