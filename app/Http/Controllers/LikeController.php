<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Reply;
use App\Like;

class LikeController extends Controller
{

   public function __construct() {
      // comment
      // $this->middleware('auth', ['except' => ['likes']]);
      $this->middleware('auth', ['only' => ['likes']]);
   }

   public function getLikes( $reply_id ) {
      return response()->json([
         'likes' => Reply::find($reply_id)->likes,
      ]);
      // $user_id = Auth::user()->getId();
      // $likes = Reply::where('id',$reply_id)->likes;
      // return response()->json([
      //    'likes' => Reply::where('id',$reply_id)->likes,
      // ]);
   }

   public function likes() {
      return response()->json([
         'user' => Auth::user()->name,
         'name' => 'Abigail',
         'state' => 'CA'
      ]);
   }
   
   public function like($reply_id) {
      $user_id = Auth::user()->getId();
      // return current likes if already liked by this user
      // if( Like::where('user_id',$user_id)->where('reply_id',$reply_id)->get()->count() > 0) { 
      //    return response()->json([
      //       'likes' => Reply::find($reply_id)->likes,
      //    ]);
      // }
      // else increment likes ...
      $like = new Like([
         "user_id" => $user_id,
         "reply_id" => $reply_id,
         "like_or_dislike" => 'like'
      ]);
      $nr_of_likes = $like->reply->likes + 1;
      $like->save();
      $like->reply->likes = $nr_of_likes;
      $like->reply->save();
      return response()->json([
         'likes' => $nr_of_likes,
      ]);
   }

   public function dislike($reply_id) {
      $user_id = Auth::user()->getId();
      // return current likes if already liked by this user
      // if( Like::where('user_id',$user_id)->where('reply_id',$reply_id)->get()->count() > 0) { 
      //    return response()->json([
      //       'dislikes' => Reply::find($reply_id)->dislikes,
      //    ]);
      // }
      // else increment likes ...
      $like = new Like([
         "user_id" => $user_id,
         "reply_id" => $reply_id,
         "like_or_dislike" => 'dislike'
      ]);
      $nr_of_likes = $like->reply->dislikes + 1;
      $like->save();
      $like->reply->dislikes = $nr_of_likes;
      $like->reply->save();
      return response()->json([
         'dislikes' => $nr_of_likes,
      ]);
   }


}
