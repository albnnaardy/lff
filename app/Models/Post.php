<?php

namespace App\Models;

use Filament\Actions\Concerns\BelongsToLivewire;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Post extends Model
{
    use HasFactory;

    protected $guarded =['id'];


    protected $fillable = [
        'title',
        'slug',
        'thumbnail',
        'body',
        'status',
        'published_at',
        'user_id',
    ];




    public function user(): BelongsTo{
        return $this->belongsTo(User::class);
    }
}


