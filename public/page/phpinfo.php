<?php
phpinfo();die;
//检测静态文件的有效期
if(file_exists('./static.html') && time() - filemtime('./static.html') < 60){
    //跳转到static.html
    header('location:http://www.mvc.com/page/static.html');
}
//开启ob缓存
ob_start();
//做一些输出
phpinfo();
//获取缓存内容
//$content = ob_get_contents();
$content = ob_get_clean();
//ob_clean();
//echo $content;
//echo 'hello';
//将输出的内容，写入一个静态文件
file_put_contents('./static.html', $content);
//跳转到static.html
header('location:http://www.mvc.com/page/static.html');