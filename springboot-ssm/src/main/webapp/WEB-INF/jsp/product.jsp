<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="/static/css/style.css" />
	<script type="text/javascript" src="/static/js/jquery.min.js"></script>
	<script>
		jQuery(function ($) {
			$("#addBtn").click(function () {
				//location = "/WEB-INF/jsp/add.jsp"; //直接访问一个jsp页面(页面不在WEB-INF下才可以使用)
				location = "goToAddProduct.do";//需要发送请求，为了进入新增页面
			})

			// 包含edit属性的img元素
			$("img[edit]").click(function () {
				var id = $(this).attr("edit"); // 获取edit属性的值
				// 先请求servlet，将指定id的商品信息查询出来，然后再跳转到编辑页面显示修改前的信息（数据回显）
				location = "/edit.do?id="+id; // get请求
			})

			// 包含del属性的img元素
			$("img[del]").click(function () {
				if (confirm("确定删除吗？") ) {
					var id = $(this).attr("del"); // 获取del属性的值
					location = "/del.do?id="+id; // get请求
				}
			})

			$("#delSelectedBtn").click(function () {
				// 获取所有 选中的、name属性为chk的 复选框
				var $cks = $(":checkbox:checked[name=chk]");

				if ( $cks.size() == 0 ) {
					alert("请选择删除项！");
					return ;
				}

				if ( !confirm("确定删除吗？") ) return ;

				var ids = ""; // 目标格式： ”1,2,3“
				$cks.each(function () {
					ids += "," + this.value;
				});
				// ids: ",1,2,3" ===> "1,2,3"
				ids = ids.substring(1);
				// 如何将多个id传递到后台
				location = "/del.do?id=" + ids;
			})

			$("#selectAll").click(function () {
				$(":checkbox[name=chk]").prop("checked", this.checked);
			})

			$(":checkbox[name=chk]").click(function () {
				$("#selectAll").prop("checked", $(":checkbox[name=chk]").size() == $(":checkbox:checked[name=chk]").size());
			})
		})
	</script>
</head>
<body>
<div style="padding: 10px;">
	<div class="option">
		<input id="addBtn" type="button" value="添加" />
		<input id="delSelectedBtn" type="button" value="删除选中" /><br>

		<a href="/goToindex_ajax.ajax">进入ajax操作页面</a><br>
		<a href="/goToindex_ajax_rest.rest">进入ajax_rest操作页面</a><br>
	</div>
	<table cellspacing="0" cellpadding="0" bordercolor="gray" border="1" width="100%">
		<tr style="font-weight: bold; font-size: 12pt; height: 25px; background-color: #afd1f3">
			<td width="40px" align="center">
				<input type="checkbox" id="selectAll" />
			</td>
			<td width="80px" align="center">序号</td>
			<td width="" align="center">商品名称</td>
			<td width="100px" align="center">商品价格</td>
			<td width="100px" align="center">剩余数量</td>
			<td width="500px" align="center">商品描述</td>
			<td width="120px" align="center">编辑</td>
		</tr>
		<c:forEach items="${products}" var="p" varStatus="sta">
		<tr>
			<td align="center">
				<input type="checkbox" name="chk" value="${p.id}" />
			</td>
			<td style="height: 22px" align="center">${sta.count}</td>
			<td style="height: 22px" align="left">${p.name}</td>
			<td style="height: 22px" align="center">${p.price}</td>
			<td style="height: 22px" align="center">${p.num}</td>
			<td style="height: 22px" align="left"><div>${p.description}</div></td>
			<td align="center">
				<img edit="${p.id}" src="/static/images/i_edit.gif" border="0" style="cursor: hand">&nbsp;&nbsp;
				<img del="${p.id}" src="/static/images/i_del.gif" border="0" style="cursor: hand">
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>