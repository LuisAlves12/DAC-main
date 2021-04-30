@extends('layout')
@section('conteudo')

<table class="table ">
<thead>
    <tr>
      <th scope="col">Nome</th>
      <th scope="col">Perfil</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($users as $user)
    <tr>
    <td>{{$user->name}} </td>
    <td><a href="{{route('perfil.show',['name'=>$user->name])}}">Visitar Perfil</a></td>
    </tr>
  @endforeach
    </tr>
  </tbody>
</table>

@endsection