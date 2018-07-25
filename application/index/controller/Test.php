<?php
//声明命名空间
namespace app\index\controller;
//引入控制器基类
use think\Controller;
//定义当前控制器类
class Test extends Controller
{
    //定义一些方法
    public function index()
    {
//        $info = \app\index\model\Role::find(2);
//        dump($info);
//        dump($info->manager);die;
        $info = \app\index\model\Manager::find(2);
        dump($info);
        dump($info->role);die;
    }
}