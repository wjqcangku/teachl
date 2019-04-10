<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../../css/sys.css" type="text/css"/>
    <title>班级管理</title>
    <script src="../../js/jquery-1.3.1.js" type="text/javascript"></script>
    <script type="text/javascript">

        // function found(){
        //     var  fom=document.getElementById("createForm");
        //     fom.action="sclass.do";
        //     fom.submit();
        // }
        // function dpage(page) {
        //     document.getElementById("page").value=page;
        //     document.getElementById("createForm").submit();
        // }
        function deleteSc(id) {
            var id =$(id).attr("id");
            // alert(scid);
            $.ajax({
                type: "GET",
                url: "studentinfoDeleteById.do",
                // async: false,
                // cache: false,
                dataType: "json",
                contentType : 'application/json;charset=utf-8',
                data: {
                    "id": id,
                },
                success: function (data) {
                    if (data.message===true) {
                        alert("删除成功");
                        location.replace(location);//删除成功后刷新页面
                    } else {
                        alert("删除失败");
                        location.replace(location);//删除失败后刷新页面
                    }
                }
            });

        }



    </script>

</head>

<body>
<!--距离页面顶端5px-->
<table border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td class="topg"></td>
    </tr>
</table>
<form name="createForm" action="" method="post" id="createForm">
    <table border="0" cellspacing="0" cellpadding="0" class="wukuang">
        <tr>
            <td width="1%"><img src="../../images/tleft.gif"/></td>
            <td width="100%" align="left"><h3 style="background-color: deepskyblue">[学生信息管理]</h3></td>
            <td width="42%"align="center">&nbsp;</td>
            <td width="36%"align="right">

            </td>
            <td width="1%"><img src="../../images/tright.gif"/></td>
        </tr>
    </table>
</form>
<table border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td class="topg"></td>
    </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td ><img src="../../images/result.gif"/></td>
    </tr>
</table>
<table width="97%" border="1" id="sclass">
    <thead>
    <tr class="henglan" style="font-weight:bold;">
        <th width="8%" align="center">学生姓名</th>
        <th width="8%" align="center">学号</th>
        <th width="8%" align="center">所属年级</th>
        <th width="8%" align="center">所属班级</th>
        <th width="8%" align="center">生源地</th>
        <th width="8%" align="center">联系方式</th>
        <th width="8%" align="center">学生状态</th>
        <th width="8%" align="center">入学日期</th>
        <th width="8%" align="center">最后操作时间</th>
        <th width="5%" align="center">新增</th>
        <th width="5%" align="center">编辑</th>
        <th width="5%" align="center">删除</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${content }" var="content">

    <tr class="tabtd1">
        <td align="center">${content.sname}</td>
        <td align="center">${content.sno}</td>
        <td align="center">${content.stugrade}</td>
        <td align="center">${content.stuclass}</td>
        <td align="center">${content.biogenicland}</td>
        <td align="center">${content.sphone}</td>
        <td align="center">
            <c:if test="${content.stustatus =='0'}">大一新生</c:if>
            <c:if test="${content.stustatus =='1'}">大二学生</c:if>
            <c:if test="${content.stustatus =='2'}">大三学生</c:if>
            <c:if test="${content.stustatus =='3'}">大四学生</c:if>
            <c:if test="${content.stustatus =='4'}">已就业</c:if>
        </td>
        <td align="center">${content.sdate}</td>
        <td align="center">${content.slastdate}</td>
        <td align="center"><a href="/html/student/addstudentinfo.jsp">
            <h4 style="color: black;font-weight:bold;">新增</h4></a></td>
        <td align="center">
            <a href="studentinfoById.do?id=${content.id}">
                <h4 style="color: black;font-weight:bold;">修改</h4></a></td>
        <td align="center"><a href="javascript:void(0)
       "onclick="deleteSc(this)" id="${content.id}">
            <h4 style="color: red">删除</h4></a></td>
    </tr>
    </c:forEach>
</table>
<div style=" border:0px solid #F00; width:600px; height:300px;margin:0 auto">
    <table>
        <tr>
            <td align="center">
                <h2 style="color: black;font-size: 16px">第 ${pageInfo.pageNum} 页 </h2>
            <td>
            <td>
                <a href="studentinfo.do?pageNo=${pageInfo.firstPage}"><h3 style="color: black;font-size: 16px">首页</h3></a>
            </td>
            <c:if test="${pageInfo.hasPreviousPage}">
                <td>
                    <a href="studentinfo.do?pageNo=${pageInfo.pageNum-1}"><h3 style="color: black;font-size: 16px"> 上一页 </h3></a>
                </td>
            </c:if>
            <c:if test="${pageInfo.hasNextPage}">
                <td>
                    <a href="studentinfo.do?pageNo=${pageInfo.pageNum+1}"><h3 style="color: black;font-size: 16px"> 下一页 </h3></a>
                </td>
            </c:if>
            <td>
                <a href="studentinfo.do?pageNo=${pageInfo.lastPage}"><h3 style="color: black;font-size: 16px">尾页</h3></a>
            </td>
        </tr>
    </table>
</div>

</body>

</html>
