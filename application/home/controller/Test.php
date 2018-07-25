<?php

namespace app\home\controller;

use think\Controller;
use think\Request;

class Test extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        //获取请求对象
//        $request = request();
        //接收所有数据
//        $data = $request->param();
//        $id = $request->param('id');
//        var_dump($id, $data);die;
        //助手函数input
        $data = input();
        $id = input('id');
//        var_dump($id, $data);die;
        dump($data);die;
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        //
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        //
//        $request = new \think\Request();
//        $request = request();
//        dump($request);die;
        $data = $request->param();
        dump($data);
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
//        $id = input('id');
//        echo '<pre>';
//        var_dump($id);
        dump($id);
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        //
    }

    public function sendemail()
    {
        //发送邮件
        $email = '416481781@qq.com';
        $subject = '测试PHPMailer';
        $body = 'PHPMailer发送邮件';
        $res = sendmail($email, $subject,$body);
        dump($res);die;
    }
}
