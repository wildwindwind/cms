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
		<table class="field-box">
		      <form id="pForm" action='${ctx }/admin/snaker/flow/process.do' method="post">
		      	  <input type="hidden" name="processId" value="${processId }" />
			      <input type="hidden" name="orderId" value="${orderId }" />
				  <input type="hidden" name="taskId" value="${taskId }" />
		          <tr>
			         <th width="150px"><span class="required">*</span>总经理审批结果：</th>
			         <td>
			         	<input type="radio" name="method" value="0" checked="checked"/>同意
						<input type="radio" name="method" value="-1" />不同意
			         </td>
			      </tr>
		          <tr>
			         <th><span class="required">*</span>总经理审批意见：</th>
			         <td>
			            <textarea rows="3" cols="60" name="approveBoss.suggest"></textarea>
			         </td>
			      </tr>
                  <tr>
                  <td colspan="4" style="text-align: center;">
                      <input type="submit" value="提交" class="btn"/>
                      <input type="button"  onclick="history.go(-1)" value="返回"  class="btn" style='margin-left:20px'/>
                  </td>
                  </tr>		          		            		          		           
		      </form>
		</tbody>
	</table> 	
	</div>
	</body>
</html>
