
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Form de Registro com validações em JS</title>
  <link rel="stylesheet" href="css/crud.css">
</head>
<body>
  <div id="main-container">
    <h1>Bem vindo</h1><h1>Cadastre sua notícia (SEM ASPAS)</h1>
    <form id="register-form" method="POST" action="criar.php">
      <div class="full-box">
        <label >Conteúdo</label>
        <input type="text" name="conteudo" id="conteudo" placeholder="Cole aqui o conteúdo da matéria" data-min-length="2" data-email-validate>
      </div>
      <div class="half-box spacing">
          <label>Título</label>
          <input type="text" name="titulo" id="titulo" placeholder="Aqui vai o título" data-required data-min-length="3" data-max-length="16">
      </div>
      <div class="half-box">
        <label>Palavras-Chave</label>
        <input type="text" name="palavras" id="palavras" placeholder="Digite palavras-chave separadas por vírgula" data-password-validate data-required>
      </div>
      <div class="half-box spacing">
          <label>Descrição</label>
          <input type="text" name="descricao" id="descricao" placeholder="Aqui vai a descrição" data-required data-only-letters>
      </div>
      <div class="half-box">
          <label>Slug Notícia</label>
          <input type="text" name="slug" id="slug" placeholder="Slug" data-required data-only-letters>
      </div>
     
     
      <div class="full-box">
        <input id="btn-submit" type="submit" value="Criar Notícia">
      </div>
      <div class="full-box">
        <input id="btn-submit" type="submit" onclick="window.open('../backsitecrud/consulta.php')" name="enviar" value="Visualizar Notícias">
      </div>
    </form>
  </div>
  <p class="error-validation template"></p>

</body>
</html>