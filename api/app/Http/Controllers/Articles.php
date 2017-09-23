<?php

namespace App\Http\Controllers;

use App\Article;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Articles extends Controller
{

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
        $article->content = $request->input('title');
        $article->publishedAt = $request->input('publishedAt');
        $article->save();
        return response()->json($article);
    }

    public function deleteArticle($id)
    {

        $article = Article::find($id);
        $article->delete();
        return response()->json('Deleted successfully');
    }

    public function getArticle(Request $request)
    {
        $id = $request->input('id');
        $article = Article::find($id);
        return response()->json($article);
    }

    public function getArticles($page, $limit, $keyword)
    {
        if ($keyword == '0') {
            $keyword = '';
        }
        $articles['result'] = Article::limit($limit)
            ->offset(($page - 1) * $limit)
            ->where('title', 'like', '%' . $keyword . '%')
            ->get();

        $all = Article::all();
        $articles['length'] = count($all);
        return response()->json($articles);

        /*return $articles = DB::select("SELECT * FROM articles WHERE ");*/
    }

}
