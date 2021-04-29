<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Musicas;

class MusicaController extends Controller
{
    //
    public function index(){
        $musicas= Musicas::all();
        return view('musica.index',[
            'musicas'=>$musicas
        ]);
    }

    public function create(){
        return view('musica.create');
    }

    public function store(Request $r){
        $novaMusica = $r->validate([
            'musica'=>['nullable','max:6000'],
            'nome'=>['nullable','min:1','max:255'],
        ]);
        $frame = Musicas::create($novaMusica);
        return redirect()->route('musica.index');
    }
}
