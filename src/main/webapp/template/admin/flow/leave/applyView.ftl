<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>请假流程</title>
		<#include "/admin/include/common.ftl"/>
		<script src="${ctx}/resourse/admin/js/jquery-1.8.0.min.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/snaker.util.js" type="text/javascript"></script>
	</head>

	<body>
	<div style="margin:10px">
	<#list vars as item>
		<table class="field-box">
	          <tr>
		         <th width="150px"><span class="required">*</span>请假人名称：</th>
		         <td>
		            ${item.get('apply.operator')}
		         </td>
		      </tr>
	          <tr>
		         <th><span class="required">*</span>请假理由：</th>
		         <td>
		         	${item.get('reason')}
		         </td>
		      </tr>
	          <tr>
		         <th><span class="required">*</span>请假天数：</th>
		         <td>
		         	${item.get('day')}天
		         </td>
		      </tr>
		       <tr>
		         <th><span class="required">*</span>部门经理：</th>
		         <td>
		         	${item.get('approveDept.operator')}
		         </td>
		      </tr>
		       <tr>
		         <th><span class="required">*</span>总经理：</th>
		         <td>
		         	${item.get('approveBoss.operator')}
		         </td>
		      </tr>
		</table> 	
	</#list>
	</div>
</body>
</html>
