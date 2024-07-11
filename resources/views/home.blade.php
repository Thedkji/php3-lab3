@extends('layout')

@section('tieuDeTrang', 'Home')

@section('content')
    <div class="row text-center">
        <h2>Bài viết</h2>
        @foreach ($dataTin as $list)
            <div class="col-4 shadow-sm border p-3">
                <h2><a href="{{ route('chiTiet', $list->id) }}" class="text-decoration-none">{{ $list->tieuDe }}</a></h2>
                <h6>{{ $list->tomTat }}</h6>
                <p>{{ $list->ngayDang }}</p>
            </div>
        @endforeach
    </div>
@endsection
