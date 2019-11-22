<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{

    protected $fillable = ['nama', 'alamat', 'email', 'website', 'logo'];

    public function employee(){
        return $this->hasMany('App\Employee', 'company_id');
    }
}
