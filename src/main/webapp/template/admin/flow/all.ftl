<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
    	<link rel="stylesheet" href="${ctx}/resourse/admin/CleverTabs/context/themes/base/style.css" type="text/css" />
    	<link rel="stylesheet" href="${ctx}/resourse/admin/CleverTabs/context/themes/base/jquery-ui.css" type="text/css" />
	    <script src="${ctx}/resourse/admin/CleverTabs/scripts/jquery.js" type="text/javascript"></script>
	    <script src="${ctx}/resourse/admin/CleverTabs/scripts/jquery-ui.js" type="text/javascript"></script>
	    <script src="${ctx}/resourse/admin/CleverTabs/scripts/jquery.contextMenu.js" type="text/javascript"></script>
	    <script src="${ctx}/resourse/admin/CleverTabs/scripts/jquery.cleverTabs.js" type="text/javascript"></script>
	    <script type="text/javascript">
        var tabs;
        var taskName = "${task.taskName}";
        $(function () {
            tabs = $('#tabs').cleverTabs();
            $(window).bind('resize', function () {
                tabs.resizePanelContainer();
            });
            var diagramTab = tabs.add({
            	url: '${ctx}/admin/snaker/process/diagram.do?processId=${processId}&orderId=${orderId}',
            	label: '流程图',
            	locked: true
            });
            diagramTab.activate();
            jQuery.ajax({
				type:'GET',
				url:"${ctx}/admin/snaker/flow/node.do",
				data:"processId=${processId}",
				async: false,
				globle:false,
				error: function(){
					alert('数据处理错误！');
					return false;
				},
				success: function(data) {
					var curTab;
					var iscurrent = false;
					for(var i = 0; i < data.length; i++) {
						var node = data[i];
						var iframeUrl = '${ctx }/admin' + node.form + '.do?processId=${processId}&orderId=${orderId}&taskName=' + node.name;
						if(taskName == node.name || (taskName == '' && i == 0)) {
							iscurrent = true;
							iframeUrl += '&taskId=${taskId}&readonly=1';
						} else {
							iscurrent = false;
							iframeUrl += '&readonly=0';
						}
			            var tab = tabs.add({
			                url: iframeUrl,
			                label: node.displayName,
			                locked: true
			            });
			            tab.activate();
			            if(iscurrent) {
			            	curTab = tab;
			            	tab.mark();
			            }
					}
					if(curTab) curTab.activate();
				}
			});
        });
    	</script>
	</head>
	<body>
		<table border="0" width=100% align="center">
    		<tr>
        		<td align="center" class="snaker_title">${process.displayName }
        			<hr width=100% size=2 color="#71B2CF">
        		</td>
    		</tr>
		</table>
		<c:if test="${order != null }">
		<table border="0" width=98% align="center" style="margin-top:5">
    		<tr>
        		<td align="left">
        			<font color="blue">编号：</font><font color="#800080">${order.orderNo }</font> &nbsp;
        			<font color="blue">派单时间：</font><font color="#800080">${order.createTime }</font>&nbsp;
				</td>
			</tr>
		</table>
		</c:if>
	    <div id="tabs" style="margin: 0px;">
	        <ul>
	        </ul>
	    </div>
	</body>
</html>
