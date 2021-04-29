@extends('layout')
@section('header')
Adicionar Livro
@endsection
@section('conteudo')
<form action="{{route('musica.store')}}" method="post" enctype="multipart/form-data">
@csrf
<table class="table table-light">
<tr>
<th>Musica</th>
<td><input type="file" name="musica" value="{{old('musica')}}"></td>
</tr>
<tr>
<th>Nome</th>
<td><input type="text" name="nome" value="{{old('nome')}}"></td>
</tr>
<tr>
<td><input type="submit" value="Enviar" class="btn btn-light"></td>
</tr>
</table>
</form>
@if($errors->has('musica'))
<table class="table table-dark table-striped">
<tr>
<td class="alert alert-danger">Muisca mal</td>
</tr>
</table>
@endif
@endsection