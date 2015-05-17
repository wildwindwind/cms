<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>流程部署</title>
		<#include "/admin/include/common.ftl"/>
		<script type="text/javascript" >
		$(document).ready(function(){
			$('#pForm').valid();
		});
		
		function saveInfo(){
		       var options = { success: function(data) {
		            if(data == "ok"){
		            	frameElement.api.opener.deployCallback();
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
	<table class="field-box">
			<tr class="box-title"><th colspan="50"><span class="edit-icon">流程部署</span></th></tr>
		     <form id="inputForm" action="${ctx }/admin/snaker/process/deploy.do" method="post" enctype="multipart/form-data">
		      	<input type="hidden" name="id"/>
		          <tr>
			         <th width="150px"><span class="required">*</span>上传流程定义文件：</th>
			         <td>
			            <input type="file" class="input_file" id="snakerFile" name="snakerFile"/>
			         </td>
			      </tr>
                  <tr>
                  <td colspan="4" style="text-align: center;">
                      <input type="button" value="部署" class="btn" onclick="saveInfo()"/>
                      <input type="button"  onclick="frameElement.api.close();" value="返回"  class="btn" style='margin-left:20px'/>
                  </td>
                  </tr>		          		            		          		           
		      </form>
		</table> 	
	</body>
</html>
