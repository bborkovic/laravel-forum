<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

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
      return view('Category.index', ['categories' => $categories, 'category' => $category ]);
   }

   
}
