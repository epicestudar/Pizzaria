<?php
session_start(); // Inicia a sessão

require_once 'conectaBD.php';

if (!empty($_POST['email']) && !empty($_POST['senha'])) {
    try {
        // Verifica se o usuário existe no banco de dados
        $sql = "SELECT * FROM clientes WHERE EMAIL = :email AND SENHA = :senha";
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':email', $_POST['email']);
        $stmt->bindValue(':senha', md5($_POST['senha'])); // Note que você está usando md5 para criptografar a senha, o que não é o mais seguro atualmente
        $stmt->execute();
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {
            // Usuário autenticado com sucesso
            $_SESSION['user_id'] = $user['ID_CLIENTE']; // Armazena o ID do usuário na sessão
            header("Location: pagina_logada.php"); // Redireciona para a página logada
            exit();
        } else {
            // Credenciais inválidas
            header("Location: index.php?msgErro=Credenciais inválidas");
            exit();
        }
    } catch (PDOException $e) {
        header("Location: index.php?msgErro=Erro de acesso ao banco de dados");
        exit();
    }
} else {
    header("Location: index.php?msgErro=Preencha todos os campos");
    exit();
}
