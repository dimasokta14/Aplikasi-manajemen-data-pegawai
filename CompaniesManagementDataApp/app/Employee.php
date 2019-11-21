<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public function company()
    {
        return $this->belongsTo('App\Company', 'company_id');
    }

    public function job()
    {
        return $this->belongsTo('App\JobReference', 'job_id');
    }
}
