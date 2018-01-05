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
      $this->middleware('auth');
   }
   
   public function like($reply_id) {
      $user_id = Auth::user()->getId();
      // return if already liked
      if( Like::where('user_id',$user_id)->where('reply_id',$reply_id)->get()->count() > 0) { 
         return back(); 
      }
      $like = new Like([
         "user_id" => $user_id,
         "reply_id" => $reply_id,
         "like_or_dislike" => 'like'
      ]);
      $like->save();
      $like->reply->likes = $like->reply->likes + 1;
      $like->reply->save();
      return back();
   }

   public function dislike($reply_id) {
      $user_id = Auth::user()->getId();
      // return if already liked
      if( Like::where('user_id',$user_id)->where('reply_id',$reply_id)->get()->count() > 0) { 
         return back(); 
      }
      $like = new Like([
         "user_id" => $user_id,
         "reply_id" => $reply_id,
         "like_or_dislike" => 'dislike'
      ]);
      $like->save();
      $like->reply->dislikes = $like->reply->dislikes + 1;
      $like->reply->save();
      return back();
   }


}
