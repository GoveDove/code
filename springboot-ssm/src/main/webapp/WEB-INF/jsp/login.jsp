<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
    ${requestScope.msg}<br>
    <form action="login.login" method="post" >
        账号:<input type="text" placeholder="请输入账号" name="username" /><br />
        密码:<input type="password" placeholder="请输入密码" name="password"  /><br />
        <input type="submit" value="登录"/>
        <input type="reset" value="重置"/>
    </form>

</body>
</html>
