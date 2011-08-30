<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>站点发布设置</title>	
		<link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/default/easyui.css"/>'>
		<link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/icon.css"/>'>
		<link rel="stylesheet" type="text/css" href='<s:url value="/source/css/ewcms.css"/>'>	
		<script type="text/javascript" src='<s:url value="/source/js/jquery-1.4.2.min.js"/>'></script>
		<script type="text/javascript" src='<s:url value="/source/js/jquery.easyui.min.js"/>'></script>	
		<script type="text/javascript" src='<s:url value="/source/js/ewcms.js"/>'></script>	
		<script type="text/javascript"> 
			function tipMessage(){
			    <s:if test="hasActionMessages()">  
			        <s:iterator value="actionMessages">  
							$.messager.alert('提示','<s:property escape="false"/>');
			        </s:iterator>  
		     	</s:if> 
		     	outputTypeChange('<s:property value="siteVo.siteServer.outputType"/>'); 
			}

			function outputTypeChange(valuestr){
				$('#serverInfo1').hide();
				$('#serverInfo2').hide();
				$('#serverInfo3').hide();
				$('#serverInfo4').hide();
				$('#serverInfo5').hide();
				if(valuestr=="LOCAL"){
					$('#serverInfo5').show();
					return;
				}
				if(valuestr=="SFTP" || valuestr=="FTP"){
					$('#serverInfo1').show();
					$('#serverInfo2').show();
					$('#serverInfo3').show();
					$('#serverInfo4').show();
					$('#serverInfo5').show();
					return;
				}
				if(valuestr=="SMB"){
					$('#serverInfo1').show();
				}				
			}
		</script>
	</head>
	<body onload="tipMessage();">
		<s:form action="saveServer" namespace="/site/organ">				
			<table class="formtable" align="center">
				<tr>
					<td>站点名称：</td>
					<td width="80%" class="formFieldError">
						<s:textfield name="siteVo.siteName" readonly="true" cssClass="inputdisabled" size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">(内部编号：<s:property value="siteVo.id"/>)</span></li></ul>
					</td>
				</tr>				
				<tr>
					<td>发布类型：</td>
					<td class="formFieldError">
						<s:select list="outputTypeList" name="siteVo.siteServer.outputType" cssClass="inputtext"  listKey="name()" listValue="description"  onchange="outputTypeChange(this.value);" headerKey="" headerValue="------请选择------"/>
					</td>				
				</tr>
				<tr id="serverInfo1" style="display:none;">
					<td >服务器IP：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteServer.hostName" cssClass="inputtext" size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">例如：http://www.bbb.cn</span></li></ul>
						<s:fielderror><s:param value="%{'siteVo.siteURL'}" /></s:fielderror>
					</td>
				</tr>
				<tr id="serverInfo2" style="display:none;">
					<td>端口：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteServer.port" cssClass="inputtext"/>
					</td>				
				</tr>	
				<tr id="serverInfo3" style="display:none;">
					<td>用户名：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteServer.userName" cssClass="inputtext" size="40"/>
					</td>
				</tr>
				<tr id="serverInfo4" style="display:none;">
					<td >密码：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteServer.password" cssClass="inputtext" size="40"/>
					</td>				
				</tr>
				<tr id="serverInfo5" style="display:none;">
					<td>发布路径：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteServer.path" cssClass="inputtext"  size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">比如：e:/resource</span></li></ul>
						<s:fielderror ><s:param value="%{'siteVo.resourceDir'}" /></s:fielderror>
					</td>				
				</tr>																												
			</table>	
			<s:hidden name="siteVo.siteServer.id"/>
			<s:hidden name="siteVo.id"/>
		</s:form>							
	</body>
</html>