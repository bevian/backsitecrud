<?php



define('HOST','localhost');
define('USUARIO','root');
define('SENHA','q1w2e3r4');
define('DB','db_noticias');

$conexao = mysqli_connect(HOST,USUARIO,SENHA,DB) or die("Erro");
$query_de_insert = "select * from noticia";
$result_insert = mysqli_query($conexao, $query_de_insert) or die(mysqli_error($conexao));
$row= $result_insert->fetch_all(MYSQLI_ASSOC);

$y = count($row) - 3;


if($y==0)
{
   $titulo1 = $row[0]['titulo'];
   $titulo2 = $row[1]['titulo'];
   $titulo3 = $row[2]['titulo'];

   $descricao1 = $row[0]['descricao'];
   $descricao2 = $row[1]['descricao'];
   $descricao3 = $row[2]['descricao'];

   $conteudo1 = $row[0]['conteudo'];
   $conteudo2 = $row[1]['conteudo'];
   $conteudo3 = $row[2]['conteudo'];


    $html= "
   
    <html>
    <head>

    </head>
    <body>
        <style>
            * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 100%;
  padding: 0 10px;
  padding-top: 2%;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: '';
  display: table;
  clear: both;
}

.title 
{
   font-weight: bolder;
   font-size: 28px;
}


/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the 'card' effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
 
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
    padding-top: 5%;
  }
}
        </style>
        <a href='../backsitecrud/home.php'> voltar </a>

        <div class='row'>
          <div class='column' style='text-align:center'>
          <span class='title'> ÚLTIMAS NOTÍCIAS </span>
          </div>
            <div class='column'>
              <div class='card'>
                  <h4>'$titulo1'</h4>
                  <hr>
                  <h5>$descricao1</h5>
                  <br>
                  <p style='text-align: justify;'>$conteudo1</p>
                  
              </div>
            </div>
            <div class='column'>
                  <div class='card'>
                  <h4>'$titulo2'</h4>
                  <hr>
                  <h5>$descricao2</h5>
                  <br>
                  <p style='text-align: justify;'>$conteudo2</p>
               
               </div>
            </div>
            <div class='column'>
               <div class='card'>
               <h4>'$titulo3'</h4>
               <hr>
               <h5>$descricao3</h5>
               <br>
               <p style='text-align: justify;'>$conteudo3</p>
               
               </div>
            </div>
           
          </div>
    </body>
</html>";
     
          echo $html;

}


else
{
   $titulo1 = $row[$y+2]['titulo'];
   $titulo2 = $row[$y+1]['titulo'];
   $titulo3 = $row[$y]['titulo'];

   $descricao1 = $row[$y+2]['descricao'];
   $descricao2 = $row[$y+1]['descricao'];
   $descricao3 = $row[$y]['descricao'];

   $conteudo1 = $row[$y+2]['conteudo'];
   $conteudo2 = $row[$y+1]['conteudo'];
   $conteudo3 = $row[$y]['conteudo'];


    $html= "
   
    <html>
    <head>

    </head>
    <body>
        <style>
            * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 100%;
  padding: 0 10px;
  padding-top: 2%;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: '';
  display: table;
  clear: both;
}

.title 
{
   font-weight: bolder;
   font-size: 28px;
}


/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the 'card' effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
 
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
    padding-top: 5%;
  }
}
        </style>
        <a href='../backsitecrud/home.php'> voltar </a>

        <div class='row'>
          <div class='column' style='text-align:center'>
          <span class='title'> ÚLTIMAS NOTÍCIAS </span>
          </div>
            <div class='column'>
              <div class='card'>
                  <h4>'$titulo1'</h4>
                  <hr>
                  <h5>$descricao1</h5>
                  <br>
                  <p style='text-align: justify;'>$conteudo1</p>
                  
              </div>
            </div>
            <div class='column'>
                  <div class='card'>
                  <h4>'$titulo2'</h4>
                  <hr>
                  <h5>$descricao2</h5>
                  <br>
                  <p style='text-align: justify;'>$conteudo2</p>
               
               </div>
            </div>
            <div class='column'>
               <div class='card'>
               <h4>'$titulo3'</h4>
               <hr>
               <h5>$descricao3</h5>
               <br>
               <p style='text-align: justify;'>$conteudo3</p>
               
               </div>
            </div>
           
          </div>
    </body>
</html>";
     
          echo $html;
}







?>