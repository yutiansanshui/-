<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:66:"D:\www\mvc\code\public/../application/admin\view\goods\create.html";i:1529830300;s:50:"D:\www\mvc\code\application\admin\view\layout.html";i:1529830216;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/static/admin/css/main.css" rel="stylesheet" type="text/css"/>
    <link href="/static/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/admin/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <script src="/static/admin/js/jquery-1.8.1.min.js"></script>
    <script src="/static/admin/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 上 -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-right">
                <li id="fat-menu" class="dropdown">
                    <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-user icon-white"></i> admin
                        <i class="icon-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="javascript:void(0);">修改密码</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="<?php echo url('admin/login/logout'); ?>">安全退出</a></li>
                    </ul>
                </li>
            </ul>
            <a class="brand" href="index.html"><span class="first">后台管理系统</span></a>
            <ul class="nav">
                <li class="active"><a href="javascript:void(0);">首页</a></li>
                <li><a href="javascript:void(0);">系统管理</a></li>
                <li><a href="javascript:void(0);">权限管理</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- 左 -->
<div class="sidebar-nav">
    <?php foreach($top as $k=>$top_v): ?>
    <a href="#error-menu<?php echo $k; ?>" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i><?php echo $top_v['auth_name']; ?></a>
    <ul id="error-menu<?php echo $k; ?>" class="nav nav-list collapse in">
        <?php foreach($second as $second_v): if(($second_v['pid'] == $top_v['id'])): ?>
        <li><a href="<?php echo url($second_v['auth_c'] . '/' . $second_v['auth_a']); ?>"><?php echo $second_v['auth_name']; ?></a></li>
        <?php endif; endforeach; ?>
    </ul>
    <?php endforeach; ?>
</div>
<!-- 右 -->
<script type="text/javascript" charset="utf-8" src="/plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/plugins/ueditor/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- 右 -->
    <div class="content">
        <div class="header">
            <h1 class="page-title">商品新增</h1>
        </div>

        <!-- add form -->
        <form action="<?php echo url('save'); ?>" method="post" id="tab" enctype="multipart/form-data">
            <ul class="nav nav-tabs">
              <li role="presentation" class="active"><a href="#basic" data-toggle="tab">基本信息</a></li>
              <li role="presentation"><a href="#desc" data-toggle="tab">商品描述</a></li>
              <li role="presentation"><a href="#attr" data-toggle="tab">商品属性</a></li>
              <li role="presentation"><a href="#pics" data-toggle="tab">商品相册</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="basic">
                    <div class="well">
                        <label>商品名称：</label>
                        <input type="text" name="goods_name" value="" class="input-xlarge">
                        <label>商品价格：</label>
                        <input type="text" name="goods_price" value="" class="input-xlarge">
                        <label>商品数量：</label>
                        <input type="text" name="goods_number" value="" class="input-xlarge">
                        <label>商品logo：</label>
                        <input type="file" name="logo" value="" class="input-xlarge">
                        <label>商品分类：</label>
                        <select name="" class="input-xlarge" id="cate_one">
                            <option value="">请选择一级分类</option>
                            <?php foreach($cate as $v): ?>
                            <option value="<?php echo $v['id']; ?>"><?php echo $v['cate_name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <select name="" class="input-xlarge" id="cate_two">
                            <option value="">请选择二级分类</option>
                        </select>
                        <select name="cate_id" class="input-xlarge" id="cate_three">
                            <option value="">请选择三级分类</option>
                        </select>
                    </div>
                </div>
                <div class="tab-pane fade in" id="desc">
                    <div class="well">
                        <label>商品简介：</label>
                        <textarea id="editor" name="goods_introduce" class="input-xlarge" style="width:1000px;height: 500px;"></textarea>
                    </div>
                </div>
                <div class="tab-pane fade in" id="attr">
                    <div class="well">
                        <label>商品类型：</label>
                        <select name="type_id" class="input-xlarge">
                            <option value="">==请选择==</option>
                            <?php foreach($type as $v): ?>
                            <option value="<?php echo $v['id']; ?>"><?php echo $v['type_name']; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <div id="attrs">
                            <!--<label>商品品牌：</label>-->
                            <!--<input type="text" name="" value="" class="input-xlarge">-->
                            <!--<label>商品型号：</label>-->
                            <!--<input type="text" name="" value="" class="input-xlarge">-->
                            <!--<label>商品重量：</label>-->
                            <!--<input type="text" name="" value="" class="input-xlarge">-->
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade in" id="pics">
                    <div class="well">
                        <div>[<a href="javascript:void(0);" class="add">+</a>]商品图片：<input type="file" name="goods_pics[]" value="" class="input-xlarge"></div>
                    </div>
                </div>
                <button class="btn btn-primary" type="submit">保存</button>
            </div>
        </form>
        <!-- footer -->
        <footer>
            <hr>
            <p>© 2017 <a href="javascript:void(0);" target="_blank">ADMIN</a></p>
        </footer>
    </div>
    <script type="text/javascript">
        $(function(){

            //实例化编辑器
            UE.getEditor('editor');

            $('.add').click(function(){
                var add_div = '<div>[<a href="javascript:void(0);" class="sub">-</a>]商品图片：<input type="file" name="goods_pics[]" value="" class="input-xlarge"></div>';
                $(this).parent().after(add_div);
            });
            $('.sub').live('click',function(){
                $(this).parent().remove();
            });

            //使用jquery 的ajax 实现三级联动效果
            //给一级分类绑定onchange事件
            $('#cate_one').change(function(){
                //将二级、三级分类下拉列表 选项 清空
                $('#cate_two').html("<option value=''>请选择二级分类</option>");
                $('#cate_three').html("<option value=''>请选择三级分类</option>");
                //获取到当前选中的一级分类id
                var id = $(this).val();
                if(id == ""){
                    return;
                }
                //组装请求参数
                // var data = "id=" + id;
                var data = {"id":id};
                //发送ajax请求
                $.ajax({
                    "url":"<?php echo url('admin/goods/getsubcate'); ?>",
                    "type":"post",
                    "data":data,
                    "dataType":"json",
                    "success":function(res){
                        // console.log(res);
                        //数据的处理
                        if(res.code != 10000){
                            alert(res.msg);
                            return;
                        }else{
                            //取到最终的数据  数组，包含多条数据
                            var data = res.data;
                            //拼接字符串，定义一个初始变量
                            var str = "<option value=''>请选择二级分类</option>";
                            //遍历数组
                            $.each(data, function(i, v){
                                // v 就是一条数据 是一个json对象
                                str += "<option value='" + v.id + "'>" + v.cate_name + "</option>";
                            });
                            //将拼接好的字符串 放到二级分类的下拉列表中
                            $('#cate_two').html(str);
                        }
                    }
                });
            });

            //给二级分类绑定onchange事件
            $('#cate_two').change(function(){
                //将三级分类 下拉列表选项清空
                $('#cate_three').html("<option value=''>请选择三级分类</option>");
                //获取选中的三级分类的id值 (select标签的value值---选中的option的value值)
                var id = $(this).val();
                if(id == ""){
                    return;
                }
                //组装请求参数
                // var data = "id=" + id;
                var data = {"id":id};
                //发送ajax请求
                $.ajax({
                    "url":"<?php echo url('admin/goods/getsubcate'); ?>",
                    "type":"post",
                    "data":data,
                    "dataType":"json",
                    "success":function(res){
                        if(res.code != 10000){
                            alert(res.msg);
                            return;
                        }else{
                            //获取最终的数据 数组，包含多条数据
                            var data = res.data;
                            //拼接html代码  option标签
                            var str = "<option value=''>请选择三级分类</option>";
                            //遍历数组，拼接字符串
                            $.each(data, function(i, v){
                                //v 就是一条数据 是一个json对象
                                // v.id  v.cate_name
                                str += "<option value='" + v.id + "'>" + v.cate_name + "</option>";
                            });
                            //将拼接好的字符串 放到 三级分类的下拉列表中
                            $('#cate_three').html(str);
                        }

                    }
                });
            });

            //给商品类型下拉列表绑定onchange事件
            $('select[name=type_id]').change(function(){
                //发送ajax请求，根据选中类型id，获取对应的属性信息
                var type_id = $(this).val();
                var data = {"id":type_id};
                //发送ajax
                $.ajax({
                    "url":"<?php echo url('admin/attribute/getattr'); ?>",
                    "type":"post",
                    "data":data,
                    "dataType":"json",
                    "success":function(res){
//                        console.log(res);
                        if(res.code != 10000){
                            alert(res.msg);return;
                        }else{
                            //需要将获取到的属性信息，展示到页面
                            var attrs = res.data;
                            //遍历数组，拼接html代码
                            var str = "";
                            $.each(attrs, function(i,v){
                                //v 是一条数据，json对象
                                str += "<label>" + v.attr_name + "：</label>";
                                //判断 拼接录入方式 标签
                                if(v.attr_input_type == 'input输入框'){
                                    str += '<input type="text" name="attr_value[' + v.id + '][]" value="" class="input-xlarge">';
                                }else if(v.attr_input_type == '下拉列表'){
                                    str += '<select name="attr_value[' + v.id + '][]">';
                                    // v.attr_values 是一个可选值的数组
                                    $.each(v.attr_values, function(index, value){
                                        str += '<option value="' + value + '">'+ value +'</option>';
                                    });
                                    str += '</select>';
                                }else{
                                    //多选框
                                    $.each(v.attr_values, function(index, value) {
                                        str += '<input type="checkbox" name="attr_value[' + v.id + '][]" value="' + value + '" class="input-xlarge">' + value;
                                    });
                                }
                            });
                            //将拼接好的字符串 显示到页面
                            $('#attrs').html(str);
                        }
                    }
                });
            });
        });
    </script>


</body>
</html>