<?php

namespace App\Http\Controllers;

use App\Article;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Articles extends Controller
{
    public function getArticle(Request $request)
    {
        $id = $request->input('id');
        $article = Article::find($id);
        return response()->json($article);
    }

    public function getArticles($page, $limit, $keyword = '')
    {

        $articles['result'] = Article::limit($limit)
            ->offset(($page - 1) * $limit)
            ->where('title', 'like', '%' . $keyword . '%')
            ->get();
        $articles['length'] = count(Article::where('title', 'like', '%' . $keyword . '%')->get());
        return response()->json($articles);

    }

    public function postArticle(Request $request)
    {

        $article = Article::create($request->all());
        return response()->json($article);
    }

    public function putArticle(Request $request)
    {
        $id = $request->input('id');
        $article = Article::find($id);
        $article->title = $request->input('title');
        $article->content = $request->input('content');
        $article->publishedAt = $request->input('publishedAt');
        $article->image = $request->input('image');
        $article->save();
        return response()->json($article);
    }

    public function deleteArticle($id)
    {
        $article = Article::find($id);
        $article->delete();
        return response()->json('Deleted successfully');
    }


}
