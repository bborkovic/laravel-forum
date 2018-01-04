<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thread extends Model
{

   protected $fillable = [ 'name','user_id','category_id','replies' ];

   public function category() {
      return $this->belongsTo('App\Category');
   }

   public function user() {
      return $this->belongsTo('App\User');
   }

   public function replies() {
      return $this->hasMany('App\Reply');
   }


}
