<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobReference extends Model
{
    public function employee()
    {
        return $this->hasMany('App\Employee', 'job_id');
    }
}
