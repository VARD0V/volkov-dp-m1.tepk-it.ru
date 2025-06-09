<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class MaterialProduct extends Model
{
    public function product() : BelongsTo{
        return $this->belongsTo(Product::class);
    }
    public function material() : BelongsTo{
        return $this->belongsTo(Material::class);
    }
}


