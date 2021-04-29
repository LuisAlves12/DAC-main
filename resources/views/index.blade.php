@extends('layout')
@section('conteudo')
<table class="table table-light table-striped">
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
<table style="position:absolute; left: 350px; top: 80%;">
  <tr>
    <tr>
    <td><img src="{{asset('img/Logo-AEDAH.jpg')}}" style="width:100%"></td>
    <td style="color:white;"> ----------------------------------------</td>
    <td><img src="{{asset('img/logocurso.png')}}" style="width:50%"></td>
    </tr>
    </tr>
  </tbody>
</table>
@endsection