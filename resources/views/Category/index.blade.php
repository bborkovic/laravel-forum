@extends('layouts.bootstrap')

@section('content')
   
   @if($category)
      <h3>Category: {{$category->name}}</h3>
   @endif

   <ul></ul>
   @foreach($categories as $cat)
      <li><a href="/categories/{{$cat->id}}">{{ $cat->name }}</a></li>
   @endforeach

   <br/><br/>
   @if($category)
      <a class="btn btn-primary" href="/threads/create/{{$category->id}}" role="button">Create New Thread</a>
   @endif

   {{-- <a href="/threads/{{$ticket->id}}" class="btn btn-primary" role="button">History</a> --}}

@endsection