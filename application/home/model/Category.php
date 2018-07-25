<?php

namespace app\home\model;

use think\Model;

class Category extends Model
{
    public static function getCateAll()
    {
    	$cateOne = self::where('pid', 0)->select();
    	$cateOther = self::where('pid', '>', 0)->select();

    }
}
