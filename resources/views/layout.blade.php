<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> @yield('tieuDeTrang') </title>
    <link rel="stylesheet" href="{{ config('app.url') }}/resources/bootstrap/bootstrap.min.css">
    <script src="{{ config('app.url') }}/resources/bootstrap/bootstrap.bundle.min.js"></script>
</head>

<style>
    header {
        height: 80px;
    }

    nav {
        height: 50px;
    }

    .bg-orange {
        background-color: rgb(255, 165, 0);
    }
    a:hover{
        color: rgb(151, 151, 237) !important; 
    }
</style>

<body>
    <header class=" text-center align-content-center text-white p-2 bg-orange">
        <img src="{{ config('app.url') }}/public/img/FPT_Polytechnic.png" alt="" width="15%" height="100%">
    </header>

    <nav class="navbar navbar-expand-lg bg-black ">
        @include('nav')
    </nav>

    <section class="row">
        <article class="col-8">
            @yield('content')
        </article>

        <aside class="col-4 shadow-lg pt-5 ps-5">
            <h2>Loại tin</h2>
            @foreach ($dataLoaiTin as $list)
                <ul class="list-unstyle">
                    <li class="list-unstyled "><a href="{{ route('tinTrongLoai', $list->id) }}"
                            class="text-decoration-none fs-5 text-black "> {{ $list->name }}</a></li>
                </ul>
            @endforeach
        </aside>
    </section>
</body>

<footer class="bg-black text-white p-3 text-center">
    <p>Nguyễn Minh Quang - PH37198</p>
</footer>

</html>
