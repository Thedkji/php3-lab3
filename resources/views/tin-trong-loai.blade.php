@extends('layout')
@section('tieuDeTrang', 'loai-tin')


@section('content')
    <div class="row gap-3">
        @foreach ($dataTinTrongLoai as $list)
            <div class="col-5 border">
                <h2><a href="{{ route('chiTiet', $list->id) }}" class="text-decoration-none">{{ $list->tieuDe }}</a></h2>
                <h4>{{ $list->tomTat }}</h4>
                <p>{{ $list->ngayDang }}</p>
            </div>
        @endforeach
    </div>
@endsection
