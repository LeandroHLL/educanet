<?php
session_start();
// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "educanet";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica se a conexão foi estabelecida corretamente
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}
//SESSÂO 
if(isset($_SESSION['username'])) {
    $username = $_SESSION['username'];
} else {
    header("Location: ../sign/login.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>EducaNet | Cadastro</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../pages/assets/css/fontawesome.css">
    <link rel="stylesheet" href="../assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <link rel="stylesheet" href="../assets/css/lightbox.css">
</head>

<body>


    <!--header-->
    <header class="main-header clearfix" role="header">
        <div class="logo">
            <a href="index.html"><em>Educa</em> Net</a>
        </div>
        <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
        <nav id="menu" class="main-nav" role="navigation">
            <ul class="main-menu">
            <style>
                    .ola {
                        color: white
                    }
                </style>
                <?php if (isset($username)) : ?>
                    <a>
                        <li class="username">
                            <span class="ola">Olá </span>
                            <?php echo $username; ?>
                        </li>
                    </a>
                <?php endif; ?>
                <li><a href="index.html">Home</a></li>
                <li class="has-submenu"><a href="index.html#section2">Sobre Nós</a>
                    <ul class="sub-menu">
                        <li><a href="index.html#section2">Quem Somos?</a></li>
                        <li><a href="index.html#section3">Cadastre-se</a></li>
                    </ul>
                </li>
                <li><a href="index.html/#section4">Cursos</a></li>
                <li><a href="#section3">Logar</a></li>
            </ul>
        </nav>
    </header>

    <section class="section coming-soon" data-section="section3">
        <div class="container">
            <div class="row justify-content-center">
                <!-- LOGAR -->
                <!-- CADASTRO -->
                <div class="col-md-6">
                    <div class="right-content">
                        <div class="top-content">
                            <h6>Crie sua conta para ter acesso gratuito aos cursos</h6>
                        </div>
                        <form action="" method="POST">
                            <label for="nome">Nome:</label>
                            <input type="text" id="nome" name="nome" required>
                            <br>

                            <label for="data_nascimento">Data de Nascimento:</label>
                            <input type="date" id="data_nascimento" name="data_nascimento" required>
                            <br>

                            <label for="nome_pai">Nome do Pai:</label>
                            <input type="text" id="nome_pai" name="nome_pai">
                            <br>

                            <label for="nome_mae">Nome da Mãe:</label>
                            <input type="text" id="nome_mae" name="nome_mae">
                            <br>

                            <label for="sexo">Sexo:</label>
                            <select id="sexo" name="sexo">
                                <option value="Masculino">Masculino</option>
                                <option value="Feminino">Feminino</option>
                            </select>
                            <br>

                            <label for="rg">RG:</label>
                            <input type="text" id="rg" name="rg">
                            <br>

                            <label for="cpf">CPF:</label>
                            <input type="text" id="cpf" name="cpf">
                            <br>

                            <label for="telefone_residencial">Telefone Residencial:</label>
                            <input type="text" id="telefone_residencial" name="telefone_residencial">
                            <br>

                            <label for="telefone_celular">Telefone Celular:</label>
                            <input type="text" id="telefone_celular" name="telefone_celular">
                            <br>

                            <label for="email">E-mail:</label>
                            <input type="email" id="email" name="email">
                            <br>

                            <label for="endereco">Endereço:</label>
                            <input type="text" id="endereco" name="endereco">
                            <br>

                            <label for="numero_endereco">Número:</label>
                            <input type="text" id="numero_endereco" name="numero_endereco">
                            <br>

                            <label for="possui_alergia">Possui Alergia:</label>
                            <input type="text" id="possui_alergia" name="possui_alergia">
                            <br>

                            <label for="qual_alergia">Qual Alergia:</label>
                            <input type="text" id="qual_alergia" name="qual_alergia">
                            <br>

                            <label for="portador_pne">Portador de Necessidades Especiais:</label>
                            <input type="text" id="portador_pne" name="portador_pne">
                            <br>

                            <label for="qual_pne">Qual Necessidade Especial:</label>
                            <input type="text" id="qual_pne" name="qual_pne">
                            <br>

                            <label for="medicao_controlada">Medicação Controlada:</label>
                            <input type="text" id="medicao_controlada" name="medicao_controlada">
                            <br>

                            <label for="qual_medicao">Qual Medicação:</label>
                            <input type="text" id="qual_medicao" name="qual_medicao">
                            <br>

                            <label for="possui_bolsa_familia">Possui Bolsa Família:</label>
                            <input type="text" id="possui_bolsa_familia" name="possui_bolsa_familia">
                            <br>

                            <label for="numero_bolsa_familia">Número do Bolsa Família:</label>
                            <input type="text" id="numero_bolsa_familia" name="numero_bolsa_familia">
                            <br>

                            <label for="numero_cnis">Número do CNIS:</label>
                            <input type="text" id="numero_cnis" name="numero_cnis">
                            <br>

                            <label for="renda_familiar">Renda Familiar:</label>
                            <input type="text" id="renda_familiar" name="renda_familiar">
                            <br>

                            <label for="ex_aluno">Ex-Aluno:</label>
                            <input type="text" id="ex_aluno" name="ex_aluno">
                            <br>

                            <label for="seduc">SEDUC:</label>
                            <input type="text" id="seduc" name="seduc">
                            <br>

                            <label for="qual_curso_fez">Qual Curso Fez:</label>
                            <input type="text" id="qual_curso_fez" name="qual_curso_fez">
                            <br>

                            <label for="obs">Observações:</label>
                            <textarea id="obs" name="obs"></textarea>
                            <br>

                            <input type="submit" value="Cadastrar">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p><i class="fa fa-copyright"></i> EducaNet 2023
                        <!-- N é um Easter Egg tbm -->
                        | Design: <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" rel="sponsored" target="_parent">Hill</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="../assets/js/isotope.min.js"></script>
    <script src="../assets/js/owl-carousel.js"></script>
    <script src="../assets/js/lightbox.js"></script>
    <script src="../assets/js/tabs.js"></script>
    <script src="../assets/js/video.js"></script>
    <script src="../assets/js/slick-slider.js"></script>
    <script src="../assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
            var
                direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;

            if (isAnimate) {
                $('body, html').animate({
                        scrollTop: reqSectionPos
                    },
                    800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }

        };

        var checkSection = function checkSection() {
            $('.section').each(function() {
                var
                    $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var
                        currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                    siblings().removeClass('active');
                }
            });
        };

        $('.main-menu, .scroll-to-section').on('click', 'a', function(e) {
            if ($(e.target).hasClass('external')) {
                return;
            }
            e.preventDefault();
            $('#menu').removeClass('active');
            showSection($(this).attr('href'), true);
        });

        $(window).scroll(function() {
            checkSection();
        });
    </script>
</body>

</html>