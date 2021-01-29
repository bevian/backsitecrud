<?php

$titulo = $_POST['titulo'];
$conteudo = $_POST['conteudo'];
$descricao = $_POST['descricao'];
$palavras = $_POST['palavras'];
$slug = $_POST['slug'];
$data = date('Y/m/d');

define('HOST','localhost');
define('USUARIO','root');
define('SENHA','q1w2e3r4');
define('DB','db_noticias');

$conexao = mysqli_connect(HOST,USUARIO,SENHA,DB) or die("Erro");
$query_de_insert = "INSERT into noticia(titulo,descricao,palavras_chave,conteudo,slug,data_not) 
VALUES ('$titulo','$descricao','$palavras','$conteudo','$slug','$data')";
$result_insert = mysqli_query($conexao, $query_de_insert) or die(mysqli_error($conexao));

echo "<script> window.location.href='../backsitecrud/consulta.php' </script>";



?>