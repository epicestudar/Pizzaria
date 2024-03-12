<?php
// endereco
// nome do BD
// usuario
// senha
$endereco = 'localhost';
$banco = 'pizzaria_epicestudar';
$adm = 'postgres';
$senha = 'postgres';

try {
    // sgbd:host;port;dbname
    // usuario
    // senha
    // errmode
    $pdo = new PDO(
        "pgsql:host=$endereco;port=5432;dbname=$banco",
        $adm,
        $senha,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );
    echo "Conectado no banco de dados!!!";

    $sql1 = "CREATE TABLE IF NOT EXISTS clientes (ID_CLIENTE serial PRIMARY KEY,
    NOME varchar(255), 
    CPF varchar(255),
    EMAIL varchar(255), 
    SENHA varchar(255))";
    $stmt1 = $pdo->prepare($sql1);
    $stmt1->execute();


   
} catch (PDOException $e) {
    echo "Falha ao conectar ao banco de dados.<br\>";
    die($e->getMessage());
}