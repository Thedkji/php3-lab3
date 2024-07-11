@extends('layout')

@section('tieuDeTrang', 'Chi tiết')

@section('content')
    <h2>{{ $dataTin->tieuDe }}</h2>
    <h4>{{ $dataTin->tomTat }}</h4>
    <p>{{ $dataTin->noiDung }}</p>
    <p>{{ $dataTin->ngayDang }}</p>
@endsection
