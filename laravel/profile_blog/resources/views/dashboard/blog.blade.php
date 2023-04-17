@extends('../layouts.mainlayout')

@section('title', 'Blog')

@section('content')
    <h1 class="text-body text-center mt-3">Raihan Shelby's Blogs</h1>
    @foreach ($blogList as $item)
        <div class="col-sm-10 mx-auto my-3">
            <div class="card">
                <div class="card-body bg-dark text-light">
                    <h5 class="card-title">{{ $item->title }}</h5>
                    <p class="text-truncate card-text">{{ $item->content }}</p>
                    <a href="#" class="btn btn-sm btn-secondary">Read more</a>
                </div>  
            </div>
        </div>
    @endforeach
@endsection
