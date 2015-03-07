<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<form action="index.php" enctype="multipart/form-data" method="POST">
<input type="hidden" name="max_file_size" value="33554432">
<input type="file" name="file">
<input type="submit" name="submit" value="上传" />
</form>
<?php
 
    /* 设定上传目录 */
    $dest_dir='uploads';
 
    /* 检测上传目录是否存在 */
    if( !is_dir($dest_dir) || !is_writeable($dest_dir) )
    {
        die("上传目录 ".$dest_dir." 不存在或无法写入");
    }
 
    /* 设置允许上传文件的类型 */
    $type=array("rar","zip","txt","c","doc","jpeg","jpg");
 
    /* 获取上传文件信息 */
    $upfile=&$HTTP_POST_FILES['file'];
 
    /* 获取文件后缀名函数 */
    function fileext($filename)
    {
        return substr(strrchr($filename, '.'), 1);
    }
 
    /* 判断上传文件类型 */
    if( !in_array( strtolower( fileext($upfile['name'] ) ),$type) )
     {
        $text=implode(",",$type);
        echo "对不起，您只能上传以下类型文件: ",$text,"<br>";
     }
     else
     {
        /* 设置文件名为"日期_文件名" */
        $dest=$dest_dir.'/'.date("ymdHis")."_".$upfile['name'];
 
        /* 移动上传文件到指定文件夹 */
        $state=move_uploaded_file($upfile['tmp_name'],$dest);
 
        if ($state)
        {
            print("文件上传成功!<br>");
            print("文件名：".$dest."<br>");
            print("上传的文件大小：".( round($upfile['size'] / 1024,2) )." KB<br>");
        }
        else
        {
            /* 处理错误信息 */
            switch($upfile['error'])
            {
                case 1 : die("上传文件大小超出 php.ini:upload_max_filesize 限制<br>");
                case 2 : die("上传文件大小超出 MAX_FILE_SIZE 限制<br>");
                case 3 : die("文件仅被部分上传<br>");
                case 4 : die("没有文件被上传<br>");
                case 5 : die("找不到临时文件夹<br>");
                case 6 : die("文件写入失败<br>");
            }
        }
     }
 
?>