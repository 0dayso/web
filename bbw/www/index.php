<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<form action="index.php" enctype="multipart/form-data" method="POST">
<input type="hidden" name="max_file_size" value="33554432">
<input type="file" name="file">
<input type="submit" name="submit" value="�ϴ�" />
</form>
<?php
 
    /* �趨�ϴ�Ŀ¼ */
    $dest_dir='uploads';
 
    /* ����ϴ�Ŀ¼�Ƿ���� */
    if( !is_dir($dest_dir) || !is_writeable($dest_dir) )
    {
        die("�ϴ�Ŀ¼ ".$dest_dir." �����ڻ��޷�д��");
    }
 
    /* ���������ϴ��ļ������� */
    $type=array("rar","zip","txt","c","doc","jpeg","jpg");
 
    /* ��ȡ�ϴ��ļ���Ϣ */
    $upfile=&$HTTP_POST_FILES['file'];
 
    /* ��ȡ�ļ���׺������ */
    function fileext($filename)
    {
        return substr(strrchr($filename, '.'), 1);
    }
 
    /* �ж��ϴ��ļ����� */
    if( !in_array( strtolower( fileext($upfile['name'] ) ),$type) )
     {
        $text=implode(",",$type);
        echo "�Բ�����ֻ���ϴ����������ļ�: ",$text,"<br>";
     }
     else
     {
        /* �����ļ���Ϊ"����_�ļ���" */
        $dest=$dest_dir.'/'.date("ymdHis")."_".$upfile['name'];
 
        /* �ƶ��ϴ��ļ���ָ���ļ��� */
        $state=move_uploaded_file($upfile['tmp_name'],$dest);
 
        if ($state)
        {
            print("�ļ��ϴ��ɹ�!<br>");
            print("�ļ�����".$dest."<br>");
            print("�ϴ����ļ���С��".( round($upfile['size'] / 1024,2) )." KB<br>");
        }
        else
        {
            /* ���������Ϣ */
            switch($upfile['error'])
            {
                case 1 : die("�ϴ��ļ���С���� php.ini:upload_max_filesize ����<br>");
                case 2 : die("�ϴ��ļ���С���� MAX_FILE_SIZE ����<br>");
                case 3 : die("�ļ����������ϴ�<br>");
                case 4 : die("û���ļ����ϴ�<br>");
                case 5 : die("�Ҳ�����ʱ�ļ���<br>");
                case 6 : die("�ļ�д��ʧ��<br>");
            }
        }
     }
 
?>