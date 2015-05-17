<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>流程状态</title>
		<#include "/admin/include/common.ftl"/>
		<link rel="stylesheet" href="${ctx}/resourse/admin/css/snaker.css" type="text/css" media="all" />
		<script src="${ctx}/resourse/admin/js/raphael-min.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/jquery-ui-1.8.4.custom/js/jquery.min.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/jquery-ui-1.8.4.custom/js/jquery-ui.min.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/dialog.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/snaker.designer.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/snaker.model.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/snaker.editors.js" type="text/javascript"></script>
	<script type="text/javascript">
	    function addTaskActor(taskName) {
	        var url = '${ctx}/admin/snaker/task/actor/add.do?orderId=${order.id}&taskName=' + taskName;
	        var returnValue = window.showModalDialog(url,window,'dialogWidth:1000px;dialogHeight:600px');
	        if(returnValue) {
	            $('#currentActorDIV').append(',' + returnValue);
	        }
	    }
		function display(process, state) {
			/** view*/
			$('#snakerflow').snakerflow($.extend(true,{
				basePath : "${ctx}/resourse/admin/js/snaker/",
	            ctxPath : "${ctx}",
	            orderId : "${order.id}",
				restore : eval("(" + process + ")"),
				editable : false
				},eval("(" + state + ")")
			));
		}
	</script>
</head>
	<body>
		<table class="field-box">
			<tr class="box-title"><th colspan="50"><span class="edit-icon">流程状态</span></th></tr>
	          <tr>
		         <th width="150px">流程名称：</th>
		         <td>
		         	${order.processName }
		         </td>
		      </tr>
	          <tr>
		         <th>流程编号：</th>
		         <td>
		            ${order.orderNo }
		         </td>
		      </tr>
	          <tr>
		         <th>流程创建时间：</th>
		         <td>
		           ${order.createTime }
		         </td>
		      </tr>
		</table> 	
		</br>
		<table class="list-box">
		<tr class="box-title">
			<th colspan="20">
				<span class="list-icon fl">任务列表</span>
	  		</th>
		</tr>	
		<tr>
			<th style="width:50px">任务名称</th>
			<th>任务创建时间</th>
			<th>任务完成时间</th>
			<th>任务处理人</th>
		</tr>
		<#list tasks as item>
		<tr <#if (item_index%2==0)>class='t1'<#else>class='t2'</#if>>
			<td>${item.displayName}</td>
			<td>${item.createTime}</td>
			<td>${item.finishTime}</td>
			<td>${item.operator}</td>
		</tr>
		</#list>
		<table class="properties_all" align="center" border="0" cellpadding="0" cellspacing="0" style="margin-top: 0px">
			<div id="snakerflow" style="border: 0px solid #d2dde2; margin-top:0px; margin-left:0px; width:100%;">
			</div>
		</table>
		<script type="text/javascript">
		$.ajax({
				type:'GET',
				url:"${ctx}/admin/snaker/process/json.do",
				data:"processId=${processId}&orderId=${order.id}",
				async: false,
				globle:false,
				error: function(){
					alert('数据处理错误!!');
					return false;
				},
				success: function(data){
					display(data.process, data.state);
				}
			});
		</script>
	</body>
</html>
