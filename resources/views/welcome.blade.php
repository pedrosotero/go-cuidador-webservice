<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- CSS -->
    <link href="/css/app.css" rel="stylesheet">
</head>
<form>
    <div class="form-group">
        <label for="exampleInputFile">Imagem</label>
        <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
        <small id="fileHelp" class="form-text text-muted">Está será sua foto no aplicativo.
        </small>
    </div>
    <div class="form-group">
        <label for="first_name">Nome</label>
        <input type="text" class="form-control" placeholder="nome">
    </div>
    <div class="form-group">
        <label for="last_name">Sobrenome</label>
        <input type="text" class="form-control" placeholder="sobrenome">
    </div>
    <div class="form-group">
        <label for="cpf">CPF</label>
        <input type="text" class="form-control" placeholder="cpf">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
               placeholder="Enter email">
        <small id="emailHelp" class="form-text text-muted">Este email vamos compartilhar com nossos usuários.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
        <label for="uf">UF</label>
        <input type="text" class="form-control" placeholder="uf">
    </div>
    <div class="form-group">
        <label for="city">Cidade</label>
        <input type="text" class="form-control" placeholder="cidade">
    </div>
    <div class="form-group">
        <label for="neighborhood">Bairro</label>
        <input type="text" class="form-control" placeholder="bairro">
    </div>
    <div class="form-group">
        <label for="address">Endereço</label>
        <input type="text" class="form-control" placeholder="address">
    </div>
    <div class="form-group">
        <label for="zipcode">CEP</label>
        <input type="text" class="form-control" placeholder="cep">
    </div>
    <div class="form-group">
        <label for="phone">Telefone</label>
        <input type="text" class="form-control" placeholder="phone">
    </div>
    <div class="form-group">
        <label for="description">Experiência</label>
        <textarea class="form-control" rows="10"></textarea>
    </div>
    <div class="form-group">
        <label for="exampleSelect2">A qual público você atende ?</label>

        <div class="form-check">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value="">
                Crianças
            </label>
        </div>
        <div class="form-check disabled">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value="">
                Idosos
            </label>
        </div>
        <div class="form-check disabled">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox" value="">
                Poradores de necessidades especiais
            </label>
        </div>
    </div>


    <div class="form-group">
        <label for="exampleInputFile">File input</label>
        <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
        <small id="fileHelp" class="form-text text-muted">Caso você seja um cuidador de idosos ou de portadores de
            deficiência exigimos o certificado para aprovação.
        </small>
    </div>
    <div class="form-check">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input">
            Esta de acordo com nossos termos ?
        </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</html>