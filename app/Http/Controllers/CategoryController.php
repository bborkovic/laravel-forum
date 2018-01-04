<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Thread;

class CategoryController extends Controller
{
   public function index() {
      $categories = Category::where('level','forum')->get();
      return view('Category.index', ['categories' => $categories, 'category' => false ]);
      // dd($categories);
   }

   public function categorydrill($parent_id) {

      $category = Category::find($parent_id);
      $categories = Category::where('parent_id',$parent_id)->get();
      $threads = Thread::where('category_id', $parent_id)->orderBy('updated_at','desc')->get();
      return view('Category.index', ['categories' => $categories, 'category' => $category, 'threads' => $threads]);


   }

   
}
