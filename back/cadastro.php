<?php
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

// Obtém os valores enviados pelo formulário
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$age = $_POST['age'];
$phone_number = $_POST['phone-number'];
$curso = $_POST['curso'];

// Prepara a instrução SQL para inserir os dados no banco de dados
$sql = "INSERT INTO cadastro (username, password, email, age, phone_number, curso)
        VALUES ('$username', '$password', '$email', '$age', '$phone_number', '$curso')";

if ($conn->query($sql) === true) {
    header("Location: ../pages/user.php");
} else {
    header("Location: ../login.php?error=1");
}

// Fecha a conexão com o banco de dados
$conn->close();
