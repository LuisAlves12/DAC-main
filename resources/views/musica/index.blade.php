@extends('layout')
@section('conteudo')
<table class="table table-light table-striped">
<thead>
    <tr>
      <th scope="col">Nome da Musica</th>
      <th scope="col">Musica</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($musicas as $musica)
    <tr>
    <td>{{$musica->nome}}</td>
    <td>
        <audio controls>
          <source src="../musica/{{$musica->musica}}" type="audio/mpeg">
        </audio>
    </td>
    </tr>
  @endforeach
    </tr>
  </tbody>
</table>
@if(Auth::user()->tipo_user == "admin")
  <a class="dropdown-item text-dark" href="{{route('musica.create')}}">Adicionar Musica</a>
@endif 

@endsection