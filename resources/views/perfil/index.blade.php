@extends('layout')
@section('conteudo')

<table>
  <tr>
  @foreach($users as $user)
    <tr>
    <td style="color:white;">---------------------</td>
    <td>{{$user->name}} </td>
    <td style="color:white;">---------------------</td>
    <td><a href="{{route('perfil.show',['name'=>$user->name])}}"> Ver Perfil</a></td>
    </tr>
  @endforeach
    </tr>
  </tbody>
</table>

@endsection