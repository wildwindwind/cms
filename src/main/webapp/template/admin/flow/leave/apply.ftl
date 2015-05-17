<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Author" content="kudychen@gmail.com" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>网站后台登陆</title>
    <#include "/admin/include/common.ftl"/>
    
</head>
<body>
<div style="margin:10px">
	<table class="field-box">
			<tr class="box-title"><th colspan="50"><span class="edit-icon">请假申请</span></th></tr>
		      <form id="pForm" action='${ctx}/admin/snaker/flow/process.do' method="post">
		      	<input type="hidden" name="processId" value="${processId }" />
				<input type="hidden" name="orderId" value="${orderId }" />
				<input type="hidden" name="taskId" value="${taskId }" />
		          <tr>
			         <th width="150px"><span class="required">*</span>请假人名称：</th>
			         <td>
			            <input type="text" name="S_apply.operator" value="${operator}"
			            	valid="{required:true,regex:'username',rangelength:[4,20]}"/>
			         </td>
			      </tr>
		          <tr>
			         <th><span class="required">*</span>请假理由：</th>
			         <td>
			            <input type="text" name="S_reason" valid="{required:true,regex:'cn_en',rangelength:[2,10]}"/>
			         </td>
			      </tr>
		          <tr>
			         <th><span class="required">*</span>请假天数：</th>
			         <td>
			            <input type="text" name="I_day" valid="{required:true,maxlength:50}"/>
			         </td>
			      </tr>
			       <tr>
			         <th><span class="required">*</span>部门经理：</th>
			         <td>
			            <input type="text" name="S_approveDept.operator" value="${operator }" valid="{required:true,maxlength:50}"/>
			         </td>
			      </tr>
			       <tr>
			         <th><span class="required">*</span>总经理：</th>
			         <td>
			            <input type="text" name="S_approveBoss.operator" value="${operator }" valid="{required:true,maxlength:50}"/>
			         </td>
			      </tr>
                  <tr>
                  <td colspan="4" style="text-align: center;">
                      <input type="submit" value="提交申请" class="btn"/>
                  </td>
                  </tr>		          		            		          		           
		      </form>
		</tbody>
	</table> 	
</div>
</body>
</html>