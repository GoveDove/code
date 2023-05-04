<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/4/11 0011
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
    <%--
        请求方式必须是post
        上传的组件为type="file"
        enctype="multipart/form-data"
    --%>
    <form action="upload.do" method="post" enctype="multipart/form-data">

        上传:<input type="file" name="file" /><br>
        上传:<input type="file" name="file" /><br>
        上传:<input type="file" name="file" /><br>
        上传:<input type="file" name="file" /><br>

        <input type="submit" value="上传"><br>
    </form>

</body>
</html>
