<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="erjieduan.jsp">缓存</a>

<script src="../../static/js/data_wz.js"></script>
<script>
  sessionStorage.setItem("grade_info",JSON.stringify(Grade));//将对象"序列化"为JSON数据(字符串格式)   //以字符串格式存储信息
    //以字符串格式存储信息
</script>
</body>
</html>
