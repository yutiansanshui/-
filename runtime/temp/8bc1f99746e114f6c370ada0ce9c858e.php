<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:66:"D:\www\mvc\code\public/../application/admin\view\role\setauth.html";i:1530062606;s:50:"D:\www\mvc\code\application\admin\view\layout.html";i:1529830216;}*/ ?>
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

    <!-- 右 -->
    <div class="content">
        <div class="header">
            <h1 class="page-title">分派权限</h1>
        </div>

        <div class="well">
        正在给【<?php echo $role['role_name']; ?>】分派权限
        <form action="<?php echo url('saveauth'); ?>" method="post">
            <input type="hidden" name="role_id" value="<?php echo $role['id']; ?>">
            <!-- table -->
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                    <tr>
                        <th>权限分类(一级权限)</th>
                        <th>权限（二级权限）</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($top_all as $top_v): ?>
                    <tr class="success">
                        <td><input type="checkbox" name="id[]" value="<?php echo $top_v['id']; ?>" <?php if(in_array(($top_v['id']), is_array($role['role_auth_ids'])?$role['role_auth_ids']:explode(',',$role['role_auth_ids']))): ?> checked="checked"<?php endif; ?>><?php echo $top_v['auth_name']; ?></td>
                        <td>
                            <?php foreach($second_all as $second_v): if(($second_v['pid'] == $top_v['id'])): ?>
                            <input type="checkbox" name="id[]" value="<?php echo $second_v['id']; ?>" <?php if(in_array(($second_v['id']), is_array($role['role_auth_ids'])?$role['role_auth_ids']:explode(',',$role['role_auth_ids']))): ?> checked="checked"<?php endif; ?>><?php echo $second_v['auth_name']; endif; endforeach; ?>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <button class="btn btn-primary" type="submit">保存</button>
        </form>
        </div>
        <!-- footer -->
        <footer>
            <hr>
            <p>© 2017 <a href="javascript:void(0);" target="_blank">ADMIN</a></p>
        </footer>
    </div>


</body>
</html>