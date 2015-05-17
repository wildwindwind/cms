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
		<form id="pForm" method="post" action="${ctx}/admin/snaker/process/list.do">	
		<input type="hidden" name="pageNo" value="1"/>
		<tr>
			<td colspan="20"  class="query" style="text-align: center;">
			    <span>流程名称：</span>
			    <input type="text" size="12" name="displayName" value="" class="mr20"/>
				<input type="submit" value="查询" class="btn mr10"/>
				<input type="button" value="清空" class="btn" onclick="resetForm(this.form.id);"/>
	  		</td>
		</tr>
		<tr>
			<td colspan="20"  class="query" style="text-align: center;">
				<a href="${ctx}/admin/snaker/process/designer.do"><input type="button" value="设计" class="btn mr10"/></a>
				<a href="javascript:deploy();"><input type="button" value="部署" class="btn mr10"/></a>
				<a href="${ctx}/admin/snaker/process/init.do"><input type="button" value="初始化" class="btn mr10"/></a>
	  		</td>
		</tr>
		<tr class="box-title">
			<th colspan="20">
				<span class="list-icon fl">流程列表</span>
	  		</th>
		</tr>	
		<tr>
			<th>名称</th>
			<th>流程显示名称</th>
			<th>状态</th>
			<th style="width:80px">版本号</th>
			<th style="width:300px">操作</th>
		</tr>
		<#if (pageBean.result.size() > 0)>
		<#list pageBean.result as process>
		<tr <#if (process_index%2==0)>class='t1'<#else>class='t2'</#if>>
			<td>${process.name}</td>
			<td>${process.displayName}</td>
			<td><#if (process.state == 1)>启用</#if><#if (process.state == 0)>禁用</#if></td>
			<td>${process.version}</td>
			<td>
				<a href="${ctx}/admin/${process.instanceUrl}.do?processId=${process.id}&processName=${process.name}">【启动流程】</a>
				<a href="${ctx}/admin/snaker/process/edit/${process.id}.do">【编辑】</a>
				<a href="${ctx}/admin/snaker/process/designer.do?processId=${process.id}">【设计】</a>
				<a href="javascript:del('${process.id}');">【删除】</a>
			</td>
		</tr>
		</#list>
		<#else>
		<tr>
			<td colspan="20">
				no data!
			</td>
		</tr>
		</#if>
	</table><!-- end table -->
	</form>
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
	
		
	function startProcessCallback(){
		parent.showMsg("ok", "流程启动成功！");
		queryList();
	}
	
	function deployCallback()
	{
		parent.showMsg("ok", "部署成功！");
		queryList();
	}
	
   function startProcess(instanceUrl, id, name){
   		Pop.window("${ctx}/admin/"+instanceUrl+".do?processId="+id+"&processName="+name, 700, 420, "启动流程", 3000);
   }

   function deploy()
   {
   	Pop.window("${ctx}/admin/snaker/process/deploy.do", 500, 220, "部署", 3000);
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
			var url = "${ctx}/admin/snaker/process/delete/"+id+".do";
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