<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>

<body>
    <header>
        <nav>
            <div class="logo"> <img src="images/logo.webp" alt=""></div>
            <ul class="paginas">
                <li><a href="">Home</a></li>
                <li><a href="">Produtos</a></li>
                <li><a href="">Contato</a></li>
                <li><a href="">Login</a></li>
            </ul>
        </nav>
    </header>

    <div class="container" id="container">
        <div class="container">
            <?php if (!empty($_GET['msgErro'])) { ?>
                <div class="alert alert-warning" role="alert">
                    <?php echo $_GET['msgErro']; ?>
                </div>
            <?php } ?>
            <?php if (!empty($_GET['msgSucesso'])) { ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $_GET['msgSucesso']; ?>
                </div>
            <?php } ?>
        </div>
        <div class="form-container sign-up">
        <form action="processa_usuario.php" method="post">
                <h1>Crie sua Conta</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>ou use seu email para se registrar</span>
                <input type="text" name="nome" placeholder="nome" required>
                <input type="text" name="cpf" placeholder="cpf" required>
                <input type="email" name="email" placeholder="email" required>
                <input type="password" name="senha" placeholder="senha" required>
                <button name="enviarDados">Cadastrar</button>
            </form>
        </div>
        <div class="form-container sign-in">
        <form action="processa_login.php" method="post">
                <h1>Faça seu Login</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>ou use seu email para se registrar</span>
                <input type="email" name="email" placeholder="email" required>
                <input type="password" name="senha" placeholder="senha" required>
                <a href="">Esqueceu sua senha</a>
                <button>Login</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
            <div class="toggle-panel toggle-left">
                    <h1>Bem-vindo(a) de volta!</h1>
                    <p>Entre com suas informações de usuário para usar todas as ferramentas do nosso site</p>
                    <button class="hidden" id="login">Entrar</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Olá, amigo(a)!</h1>
                    <p>Registre-se em nosso site para ficar por dentro das novidades da nossa pizzaria</p>
                    <button class="hidden" id="register">Cadastrar</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Rodapé do site -->
    <footer>
        <div id="footer_content">
            <div id="footer_contacts">
                <h2>Fatia Fina</h2>
                <p>A melhor pizzaria da cidade!</p>

                <div id="footer_social_media">
                    <a href="https://www.instagram.com" class="footer-link" id="instagram">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="https://twitter.com" class="footer-link" id="twitter">
                        <i class="fa-brands fa-twitter"></i>
                    </a>

                    <a href="https://facebook.com" class="footer-link" id="facebook">
                        <i class="fa-brands fa-facebook"></i>
                    </a>
                </div>


            </div>

            <ul class="footer-list">
                <li>
                    <h3>Fale Conosco</h3>
                </li>

                <li>
                    <a href="" class="footer-link">SAC</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Suporte</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Contatos</a>
                </li>
            </ul>

            <ul class="footer-list">
                <li>
                    <h3>Produtos</h3>
                </li>

                <li>
                    <a href="#" class="footer-link">Pizzas</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Mais Vendidos</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Promoções</a>
                </li>
            </ul>

            <div id="footer_subscribe">
                <h3>Inscreva-se</h3>
                <p>Coloque o seu email para ser notificado sobre nossas novidades</p>

                <div id="input_group">
                    <input type="email" id="email">
                    <button><i class="fa-regular fa-envelope"></i></button>
                </div>
            </div>

        </div>

        <div id="footer_copyright">
            Fatia Fina &#169
            2024 all rights reserved
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>

</html>