<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>流程定义</title>
		<#include "/admin/include/common.ftl"/>
		<link rel="stylesheet" href="${ctx}/resourse/admin/css/style.css" type="text/css" media="all" />
		<script src="${ctx}/resourse/admin/js/jquery-1.8.0.min.js" type="text/javascript"></script>
		<script type="text/javascript" >
			$(document).ready(function(){
				$('#pForm').valid();
			});
			
			function saveInfo(){
			       var options = { success: function(data) {
			            if(data == "ok"){
			            	location.href='${ctx}/admin/snaker/process/list.do';
			            }
			            else
			            {
			                Pop.error(data);
			            }
			        }};
			        
			        $('#pForm').check(function(){
			        	$('#pForm').ajaxSubmit(options);
			        });
			}
		</script>
	</head>

	<body>
		<form id="pForm" action="${ctx }/admin/snaker/process/deploy.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${process.id }">
		<table width="100%" border="0" align="center" cellpadding="0"
				class="table_all_border" cellspacing="0" style="margin-bottom: 0px;border-bottom: 0px">
			<tr class="td_table_1">
				<td align="center">
					流程定义
				</td>
			</tr>
		</table>
		<table class="table_all" align="center" border="0" cellpadding="0"
			cellspacing="0" style="margin-top: 0px">
				<tr>
					<td class="td_table_1">
						<span>流程名称：</span>
					</td>
					<td class="td_table_2" colspan="3">
						&nbsp;${process.name }
					</td>
				</tr>
				<tr>
					<td class="td_table_1">
						<span>显示名称：</span>
					</td>
					<td class="td_table_2" colspan="3">
						&nbsp;${process.displayName }
					</td>
				</tr>
				<tr>
					<td class="td_table_1">
						<span>状态：</span>
					</td>
					<td class="td_table_2" colspan="3">
					    ${(process.state == 1)?string('启用','禁用')}
					</td>
				</tr>
				<tr>
					<td class="td_table_1">
						<span>上传流程定义文件：</span>
					</td>
					<td class="td_table_2" colspan="3">
						<input type="file" class="input_file" id="snakerFile" name="snakerFile"/>
					</td>
				</tr>
				<tr>
					<td class="td_table_1">
						<span>流程定义：</span>
					</td>
					<td class="td_table_2" colspan="3">
						${content}
					</td>
				</tr>
				<tr>
					<td class="td_table_1" colspan="20" style="text-align: center;">
						<input type="button" class="btn" value="提交" onclick="saveInfo()">
						<input type="button" class="btn" name="reback" value="返回" onclick="history.back()">
					</td>
				</tr>
			</table>
			</form>
	</body>
</html>
