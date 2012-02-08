<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>站点设置</title>
	    <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/easyui/themes/dark-hive/easyui.css"/>' rel="stylesheet" title="dark-hive"/>
	    <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/easyui/themes/cupertino/easyui.css"/>' rel="stylesheet" title="cupertino"/>
	    <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/easyui/themes/pepper-grinder/easyui.css"/>' rel="stylesheet" title="pepper-grinder"/>
	    <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/easyui/themes/sunny/easyui.css"/>' rel="stylesheet" title="sunny"/>
        <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/easyui/themes/icon.css"/>'>
        <link rel="stylesheet" type="text/css" href='<s:url value="/ewcmssource/css/ewcms.css"/>'>
        <script type="text/javascript" src='<s:url value="/ewcmssource/js/jquery.min.js"/>'></script>
        <script type="text/javascript" src='<s:url value="/ewcmssource/js/skin.js"/>'></script>
        <script type="text/javascript" src='<s:url value="/ewcmssource/easyui/jquery.easyui.min.js"/>'></script>          
		<script type="text/javascript"> 
			function tipMessage(){
			    <s:if test="hasActionMessages()">  
			        <s:iterator value="actionMessages">  
							$.messager.alert('提示','<s:property escape="false"/>');
			        </s:iterator>  
		     	</s:if>  
			}
		</script>
	</head>
	<body onload="tipMessage();">
		<s:form action="saveConfig" namespace="/site/organ">				
			<table class="formtable" align="center">
				<tr>
					<td>站点名称：</td>
					<td width="80%" class="formFieldError">
						<s:textfield name="siteVo.siteName" readonly="true" cssClass="inputdisabled" size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">(内部编号：<s:property value="siteVo.id"/>)</span></li></ul>
					</td>
				</tr>				
				<tr>
					<td>站点目录：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteRoot" cssClass="inputtext"/>
						<ul class="errorMessage"><li><span style="color:gray;">只能由数字、字符、下划线组成</span></li></ul>
						<s:fielderror ><s:param value="%{'siteVo.siteRoot'}" /></s:fielderror>
					</td>				
				</tr>
				<tr>
					<td >访问地址URL：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.siteURL" cssClass="inputtext" size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">例如：http://www.bbb.cn</span></li></ul>
						<s:fielderror><s:param value="%{'siteVo.siteURL'}" /></s:fielderror>
					</td>
				</tr>
				<tr>
					<td>描述：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.describe" cssClass="inputtext"/>
						<s:fielderror ><s:param value="%{'siteVo.describe'}" /></s:fielderror>
					</td>				
				</tr>	
				<tr>
					<td>meta关键字：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.metaKey" cssClass="inputtext" size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">页面中使用关键字，便于SEO</span></li></ul>
						<s:fielderror><s:param value="%{'siteVo.metaKey'}" /></s:fielderror>
					</td>
				</tr>
				<tr>
					<td >meta说明：</td>
					<td class="formFieldError">
						<s:textarea name="siteVo.metaDescripe" style="width:222px;height:60px" cssClass="inputtext"/>
						<s:fielderror ><s:param value="%{'siteVo.metaDescripe'}" /></s:fielderror>
					</td>				
				</tr>
				<tr>
					<td>生成文件的扩展名：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.extraFile" cssClass="inputtext"/>
						<ul class="errorMessage"><li><span style="color:gray;">允许htm,html,shtml,jsp，默认shtml</span></li></ul>
						<s:fielderror ><s:param value="%{'siteVo.extraFile'}" /></s:fielderror>
					</td>				
				</tr>
				<tr>
					<td>资源发布目录：</td>
					<td class="formFieldError">
						<s:textfield name="siteVo.resourceDir" cssClass="inputtext"  size="40"/>
						<ul class="errorMessage"><li><span style="color:gray;">比如：e:/resource</span></li></ul>
						<s:fielderror ><s:param value="%{'siteVo.resourceDir'}" /></s:fielderror>
					</td>				
				</tr>	
				<tr>
					<td >是否允许发布：</td>
					<td >
						<s:checkbox name="siteVo.publicenable"></s:checkbox>
					</td>				
				</tr>																												
			</table>	
			<s:hidden name="siteVo.id"/>
		</s:form>							
	</body>
</html>