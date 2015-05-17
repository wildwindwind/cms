<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Author" content="kudychen@gmail.com" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>网站后台登陆</title>
    <#include "/admin/include/common.ftl"/>
    
<script type="text/javascript" >
	function transfer(flag) {
		if(flag == '2') {
			document.all['transferDIV'].style.display = "block";
		} else {
			document.all['transferDIV'].style.display = "none";
		}
	}
</script>
</head>
<body>
<div style="margin:10px">
	<table class="field-box">
			<tr class="box-title"><th colspan="50"><span class="edit-icon">部门经理审批</span></th></tr>
		      <form id="pForm" action='${ctx }/admin/snaker/flow/process.do' method="post">
		      	  <input type="hidden" name="processId" value="${processId }" />
			      <input type="hidden" name="orderId" value="${orderId }" />
				  <input type="hidden" name="taskId" value="${taskId }" />
		          <tr>
			         <th width="150px"><span class="required">*</span>部门经理审批结果：</th>
			         <td>
			         	<input type="radio" name="method" value="0" checked="checked" onclick="transfer('1')"/>同意
						<input type="radio" name="method" value="-1" onclick="transfer('-1')"/>不同意
						<input type="radio" name="method" value="1" onclick="transfer('2')"/>转派
			         </td>
			      </tr>
		          <tr>
			         <th><span class="required">*</span>部门经理审批意见：</th>
			         <td>
			         	<textarea rows="3" cols="60" name="approveDept.suggest"></textarea>
			         </td>
			      </tr>
			      <tr id="transferDIV" style="display: none">
					<th>
						<span>转派给：</span>
					</th>
					<td colspan="9">
						<input type="hidden" id="nextOperator" name="nextOperator" value="">
						<input type="text" id="nextOperatorName" readonly="readonly" name="nextOperatorName" class="input_520" value="">
						<input type='button' class='button_70px' value='选择部门' id="selectOrgBtn" onclick="selectOrg('${ctx}', 'nextOperator', 'nextOperatorName')"/>
						<!-- <input type="text" class="input_240" id="nextOperator" name="nextOperator" value="${variable_approveDept['nextOperator'] }"/> -->
					</td>
				  </tr>
				  <tr>
					<th><span>抄送给：</span></th>
					<td colspan="3">
						<input type="hidden" id="ccOperator" name="ccOperator" value="">
						<input type="text" id="ccOperatorName" readonly="readonly" name="ccOperatorName" class="input_520" value="">
						<input type='button' class='button_70px' value='选择部门' onclick="selectOrg('${ctx}', 'ccOperator', 'ccOperatorName')"/>
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