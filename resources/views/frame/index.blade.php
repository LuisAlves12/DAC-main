@extends('layout')
@section('conteudo')
<table class="table table-light table-striped">
<thead>
    <tr>
      <th scope="col">Nome do frame</th>
      <th scope="col">Foto</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($frames as $frame)
    <tr>
    <td>{{$frame->nome}}</td>
    <td><img src="{{asset('img/'.$frame->img_frame)}}"></td>
    </tr>
  @endforeach
    </tr>
  </tbody>
</table>
@if(Auth::user()->tipo_user == "admin")
  <a class="dropdown-item text-dark" href="{{route('frame.create')}}">Adicionar Frame</a>
@endif 

@endsection