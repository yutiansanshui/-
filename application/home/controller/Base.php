<?php

namespace app\home\controller;

use think\Controller;
use think\Request;

class Base extends Controller
{
    public function __construct(Request $request)
    {
        parent::__construct($request);
        //查询商品分类信息
        $category = \app\home\model\Category::select();
        $this->assign('category', $category);
    }


}
