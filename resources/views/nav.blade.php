<div class="container-fluid ">
    <a class="navbar-brand text-white" href="{{ route('home') }}">Home</a>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            @foreach ($dataLoaiTin as $data)
                <li class="nav-item ">
                    <a class="nav-link active text-white" aria-current="page" href="{{ route('tinTrongLoai',$data->id) }}">{{ $data->name }}</a>
                </li>
            @endforeach
        </ul>
    </div>
</div>
