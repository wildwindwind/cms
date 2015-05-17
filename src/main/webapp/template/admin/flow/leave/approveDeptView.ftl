<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<#include "/admin/include/common.ftl"/>
		<script src="${ctx}/resourse/admin/js/jquery-1.8.0.min.js" type="text/javascript"></script>
		<script src="${ctx}/resourse/admin/js/snaker/dialog.js" type="text/javascript"></script>
	</head>

	<body>
	<div style="margin:10px">
	<#list vars as item>
		<table class="field-box">
	          <tr>
		         <th width="150px"><span class="required">*</span>部门经理审批结果：</th>
		         <td>
		            ${(item.get('method') == '0') ? string('同意', '不同意')}
		         </td>
		      </tr>
	          <tr>
		         <th><span class="required">*</span>部门经理审批意见：</th>
		         <td>
		         	${item.get('approveDept.suggest')}
		         </td>
		      </tr>
		</table> 	
	</#list>
	</div>
	</body>
</html>
