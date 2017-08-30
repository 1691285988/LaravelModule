<?php

namespace App;

class Article extends Model
{
    public function scopeTrending($query, $limit = 3)
    {
        return $query->orderBy('reads', 'desc')->limit($limit)->get();
    }
}
