<?php

session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "educanet";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica se a conexão foi estabelecida corretamente
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

if (isset($_SESSION['username'])) {
    $username = $_SESSION['username'];
} else {
    header("Location: ../sign/login.php");
}

$nome_aluno = $_POST['nome_aluno'];
$data_nascimento = $_POST['data_nascimento'];
$nome_pai = $_POST['nome_pai'];
$nome_mae = $_POST['nome_mae'];
$sexo = $_POST['sexo'];
$rg = $_POST['rg'];
$cpf = $_POST['cpf'];
$telefone_residencial = $_POST['telefone_residencial'];
$telefone_celular = $_POST['telefone_celular'];
$email = $_POST['email'];
$tipo_sanguineo = $_POST['tipo_sanguineo'];
$estado_civil = $_POST['estado_civil'];
$username = $_POST['username'];
$serie_escolar = $_POST['serie_escolar'];
$cod_escola = $_POST['cod_escola'];
$cod_escolaridade = $_POST['cod_escolaridade'];
$manequim = $_POST['manequim'];
$username = $_POST['username'];
$numero_calcado = $_POST['numero_calcado'];
$endereco = $_POST['endereco'];
$cod_bairro = $_POST['cod_bairro'];
$possui_alergia = $_POST['possui_alergia'];
$qual_alergia = $_POST['qual_alergia'];
$portador_pne = $_POST['portador_pne'];
$qual_pne = $_POST['qual_pne'];
$medicacao_controlada = $_POST['medicacao_controlada'];
$qual_medicacao = $_POST['qual_medicacao'];
$possui_bolsa_familia = $_POST['possui_bolsa_familia'];
$numero_bolsa_familia = $_POST['numero_bolsa_familia'];
$numero_cnis = $_POST['numero_cnis'];
$renda_familiar = $_POST['renda_familiar'];
