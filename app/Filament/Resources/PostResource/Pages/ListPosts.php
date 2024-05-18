<?php

namespace App\Filament\Resources\PostResource\Pages;

use App\Filament\Resources\PostResource;
use App\Models\Post;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPosts extends ListRecords
{
    protected static string $resource = PostResource::class;


    public function index()
    {
        $posts = Post::latest()->paginate(10);

        return view('posts.index', compact('posts'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }
    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];


    }
}
