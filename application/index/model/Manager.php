<?php

namespace app\index\model;

use think\Model;

class Manager extends Model
{
    public function role()
    {
        return $this->belongsToMany('Role');
    }
}
