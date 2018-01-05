@extends('layouts.bootstrap')

@section('content')
   
   <h3>Thread: {{$thread->name}}</h3>

   <table>
      @foreach( $replies as $reply )
      <tr>
      <div class="panel panel-info">
         <div class="panel-heading">
            {{$reply->rn}}. {{$reply->created_at->diffForHumans()}}
         </div>
         <div class="panel-body">
            <div class="row">
               <div class="col-sm-3">
                  {{-- {{$reply->user['name']}} --}}
                  {{$reply->user->name}}
               </div>
               <div class="col-sm-9">
                  <div class="row">{{$reply->body}}</div>
               </div>
            </div>
         </div>
         <div class="panel-footer">
            <div class="row">
               <div class="col-sm-12" text-right>
                  <div class="pull-right">
                     <button type="button" class="btn btn-default btn-sm">
                        <a href="/replies/{{$reply->id}}/like"<span class="glyphicon glyphicon-thumbs-up"></span> {{$reply->likes}}</a>
                     </button>
                     <button type="button" class="btn btn-default btn-sm">
                        <a href="/replies/{{$reply->id}}/dislike"<span class="glyphicon glyphicon-thumbs-down"></span> {{$reply->dislikes}}</a>
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </tr>
      @endforeach
   </table>

   {{-- Bla Bla Bla --}}
   <div class="pull-center">
      {{$replies->links()}}
   </div>

   <a href="/replies/create/{{$thread->id}}" class="btn btn-primary" role="button">Reply</a>
   
   

   

@endsection