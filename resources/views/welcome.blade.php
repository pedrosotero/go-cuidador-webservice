<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- CSS -->
    <link href="/css/app.css" rel="stylesheet">
    <script src="{{asset('js/jquery-3.1.1.js') }} "></script>
    <script src="{{asset('js/min/inputmask/inputmask.min.js') }} "></script>
    <script src="{{asset('js/min/inputmask/jquery.inputmask.min.js') }} "></script>
</head>

<body style="background-color:#FB94C9">
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <img src="/images/logonovo.png">
        </div>
        <div class="col-md-12">
            <form method="POST" action="{{ route('caregivers.store') }}" enctype="multipart/form-data">
                {!! csrf_field() !!}
                <div class="form-group">
                    <label for="exampleInputFile">Imagem</label>
                    <input type="file" class="form-control-file" aria-describedby="fileHelp" name="avatar">
                    <small id="fileHelp" class="form-text text-muted">Está será sua foto no aplicativo.
                    </small>
                    <span class="text-danger small"> {!! $errors->first('avatar') !!} </span>
                </div>
                <div class="form-group">
                    <label for="first_name">Nome</label>
                    <input type="text" class="form-control letter" name="first_name"
                           value="{{old('first_name')}}">
                    <span class="text-danger small"> {!! $errors->first('first_name') !!} </span>
                </div>
                <div class="form-group">
                    <label for="last_name">Sobrenome</label>
                    <input type="text" class="form-control letter" name="last_name"
                           value="{{old('last_name')}}"><span
                            class="text-danger small"> {!! $errors->first('last_name') !!} </span>
                </div>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control numeric" id="cpf" name="cpf" value="{{old('cpf')}}"><span
                            class="text-danger small"> {!! $errors->first('cpf') !!} </span>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" aria-describedby="emailHelp"
                           name="email" value="{{old('email')}}">
                    <span class="text-danger small"> {!! $errors->first('email') !!} </span>
                    <small id="emailHelp" class="form-text text-muted">Este email vamos compartilhar com nossos
                        usuários.
                    </small>

                </div>
                <div class="form-group">
                    <label for="password" name="password">Senha</label>
                    <input type="password" class="form-control" id="password"><span
                            class="text-danger small"> {!! $errors->first('password') !!} </span>
                </div>
                <div class="form-group">
                    <label for="uf">UF</label>
                    <input type="text" class="form-control letter" name="uf"
                           value="{{old('uf')}}"><span
                            class="text-danger small"> {!! $errors->first('uf') !!} </span>
                </div>
                <div class="form-group">
                    <label for="city">Cidade</label>
                    <input type="text" class="form-control letter" name="city"
                           value="{{old('city')}}"><span
                            class="text-danger small"> {!! $errors->first('city') !!} </span>
                </div>
                <div class="form-group">
                    <label for="neighborhood">Bairro</label>
                    <input type="text" class="form-control" name="neighborhood"
                           value="{{old('neighborhood')}}"><span
                            class="text-danger small"> {!! $errors->first('neighborhood') !!} </span>
                </div>
                <div class="form-group">
                    <label for="address">Endereço</label>
                    <input type="text" class="form-control" name="address"
                           value="{{old('address')}}"><span
                            class="text-danger small"> {!! $errors->first('address') !!} </span>
                </div>
                <div class="form-group">
                    <label for="zipcode">CEP</label>
                    <input type="text" class="form-control" name="zipcode" id="zip_code"
                           value="{{old('zipcode')}}"><span
                            class="text-danger small"> {!! $errors->first('zipcode') !!} </span>
                </div>
                <div class="form-group">
                    <label for="phone">Telefone</label>
                    <input type="text" class="form-control numeric" name="phone"
                           value="{{old('phone')}}" id="cell_phone"><span
                            class="text-danger small"> {!! $errors->first('phone') !!} </span>
                </div>
                <div class="form-group">
                    <label for="description">Experiência</label>
                    <textarea class="form-control" rows="10" name="description">{{old('description')}}</textarea><span
                            class="text-danger small"> {!! $errors->first('description') !!} </span>
                </div>
                <div class="form-group">
                    <label for="exampleSelect2">A qual público você atende ?</label>

                    <div class="form-check">
                        <label class="checkbox-inline"><input type="checkbox" name=types[] value="4">Crianças</label>
                        <label class="checkbox-inline"><input type="checkbox" name=types[] value="1">Idosos</label>
                        <label class="checkbox-inline"><input type="checkbox" name=types[] value="3">Portadores de
                            deficiência</label>
                    </div>
                    <span class="text-danger small"> {!! $errors->first('types') !!} </span>
                </div>


                <div class="form-group">
                    <label for="exampleInputFile">File input</label>
                    <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp"
                           name="doc">
                    <small id="fileHelp" class="form-text text-muted">Caso você seja um cuidador de idosos ou de
                        portadores de
                        deficiência exigimos o certificado para aprovação.
                    </small>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

        </div>
    </div>
</div>
<script>
    $(function () {
        function isEmpty(el) {
            return !$.trim(el.html())
        }

        $('.alert').each(function () {
            if (isEmpty($('.alert'))) {
                $(this).hide();
            }
        });
        $('.numeric').on('input', function (event) {
            this.value = this.value.replace(/[^0-9]/g, '');
        });
        $(".letter").on('input', function (event) {
            this.value = this.value.replace(/[^a-zA-Z ]/, '');
        });
        $('#cell_phone').inputmask('99 99999 9999');
        $('#cpf').inputmask('999.999.999-99');
        $('#zip_code').inputmask('99999-999');
    });
</script>
</body>
</html>