<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{

    protected $fillable= ['nama', 'email', 'company_id', 'job_id'];

    public function company()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }

    public function job()
    {
        return $this->belongsTo('App\JobReference', 'job_id');
    }
}
