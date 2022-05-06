<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\Blog;

class BlogController extends Controller
{
  public function create(Request $request)
  {
    $blog = new Blog();
    $blog->name = $request->name;
    $blog->description = $request->description;
    $blog->author_id = Auth::user()->id;

    $image = $request->file('blog_pic');
    $name = time() . '.' . $image->getClientOriginalExtension();
    $destinationPath = public_path('/storage/news');
    $image->move($destinationPath, $name);

    $blog->image = $name;
    $blog->status = 'pending';

    if ($blog->save()) {
      return redirect()->back()->with('success', 'Blog Created Successfully');
    } else {
      return redirect()->back();
    }
  }

  public function index()
  {
    $blogs = Blog::all();

    return view('Frontend.blogs')->with(compact('blogs'));
  }
}
