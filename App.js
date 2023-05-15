let mysql      = require('mysql');

let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '112233',
    database : 'miNegocio'
});

connection.connect(function (error) {
    if (error){
        throw error;
    }else{
        console.log('Conexion exitosa');
    }
});
//Mostrar
connection.query('SELECT * FROM Clientes', function (error, results, fields) {
    if (error){
        throw error;
    }else{
        results.forEach(result => {
            console.log(result);
        });
    }
});

//Insertar
connection.query('INSERT INTO Clientes (nombre, RFC, ciudad, CP, email) VALUES ("Jose", "1234fc", "Colima", 28989,"Jose13@gmail.com"), ("Adrian", "4321fc", "Villa de Alvarez", 28567,"Adr1213@gmail.com");', function (error, results, fields){
    if (error){
        throw error;
    }else{
        console.log('registro agregado', results);
    }
});

connection.end();
