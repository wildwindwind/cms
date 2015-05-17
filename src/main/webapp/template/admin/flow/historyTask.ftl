<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台登陆</title>
    
    <#include "/admin/include/common.ftl"/>
</head>
<body>
<div class="swap">
	<table class="list-box">
		<form id="pForm" method="post" action="${ctx}/admin/user_list.do">	
		<input type="hidden" name="pageNo" value="1"/>
		<tr class="box-title">
			<th colspan="20">
				<span class="list-icon fl">历史完成任务</span>
	  		</th>
		</tr>	
		<tr>
			<th>流程名称</th>
			<th>实例编号</th>
			<th>流程启动时间</th>
			<th>任务名称</th>
			<th>任务创建时间</th>
		</tr>
		<#list page.result as item>
		<tr <#if (item_index%2==0)>class='t1'<#else>class='t2'</#if>>
			<td>${item.processName}</td>
			<td>${item.orderNo}</td>
			<td>${item.orderCreateTime}</td>
			<td>${item.taskName}</td>
			<td>${item.taskCreateTime}</td>
		</tr>
		</#list>
	</table><!-- end table -->

</div>
</body>

<script type="text/javascript">
	$(function(){
		$(".list-box th[name]").click(function(){
			$('input[name="orderProperty"]').val($(this).attr('name'));
			var order;
			if($(this).attr('class')=='asc')
			{
				order='desc';
			}
			else
			{
				order='asc';
			}
			$('input[name="orderDirection"]').val(order);
			$("#pForm").submit();
		});
		/*
		$(".list-box th[name]").click(function() {
			var $this = $(this);
			var offset = $this.offset();
			//var $menuWrap = $this.closest("div.menuWrap");
			//var $popupMenu = $menuWrap.children("div.popupMenu");
			var $popupMenu = $this.children("div.popupMenu");
			$popupMenu.css({left: offset.left+$this.width()-$popupMenu.width()+10, top: offset.top + $this.height() + 2}).show();
			$this.mouseleave(function() {
				$popupMenu.hide();
			});
		});*/
	});
	
	function queryList(){
		$("#pForm").submit();
	}
	
		
	function addCallback()
	{
		parent.showMsg("ok", "新增成功！");
		queryList();
	}
	
	function editCallback()
	{
		parent.showMsg("ok", "修改成功！");
		queryList();
	}
	
   function toAdd()
   {
   	Pop.window("${ctx}/admin/user_add.do", 700, 420, "新增用户", 3000);
   }

   function user_edit(id)
   {
   	Pop.window("${ctx}/admin/user_edit.do?id="+id, 700, 420, "修改用户", 3000);
   }
   
   function user_selectRole(id)
   {
   	Pop.window("${ctx}/admin/user_allocRole.do?userId="+id, 700, 420, "角色设置", 3000);
   }
   
   function user_resetPwd(id)
   {
   		Pop.confirm("确定要重置该用户的密码吗?", function() {
			var url = "${ctx}/admin/user_resetPwd.do";
			$.ajax( {
				type : 'get',
				dataType : 'text',
				async : false,
				url : url,
				data : {id: id, ran: Math.random()},
				success : function(data) {
					if (data == 'ok') {
						parent.showMsg("ok", "删除用户成功！");
						queryList();
					} else {
						Pop.alert('error', '删除失败！');
					}
				}
			});
		
			}, function() {
	
		});
   }
   
   function del(id)
   {
	   	Pop.confirm("确定要删除这些记录吗?", function() {
			var url = "${ctx}/admin/user_delete.do";
			$.ajax( {
				type : 'get',
				dataType : 'text',
				async : false,
				url : url,
				data : {id: id, ran: Math.random()},
				success : function(data) {
					if (data == 'ok') {
						parent.showMsg("ok", "删除用户成功！");
						queryList();
					} else {
						Pop.alert('error', '删除失败！');
					}
				}
			});
		
			}, function() {
		});
   } 
</script>
</html>