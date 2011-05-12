<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title>网上咨询</title>
        <link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/default/easyui.css"/>'>
        <link rel="stylesheet" type="text/css" href='<s:url value="/source/theme/icon.css"/>'>
        <script type="text/javascript" src='<s:url value="/source/js/jquery-1.4.2.min.js"/>'></script>
        <script type="text/javascript" src='<s:url value="/source/js/jquery.easyui.min.js"/>'></script>
        <script type="text/javascript" src='<s:url value="/source/js/easyui-lang-zh_CN.js"/>'></script>
        <link rel="stylesheet" type="text/css" href="<s:url value="/source/css/ewcms.css"/>"/>
        <script type="text/javascript" src='<s:url value="/source/js/ewcms.js"/>'></script>
        <script>
            $(function(){
                //基本变量初始
                setGlobaVariable({
                    inputURL:'none',
                    queryURL:'<s:url action="query"/>',
                    deleteURL:'none',
                    editwidth:400,
                    editheight:150
                });
                //数据表格定义
                openDataGrid({
                    singleSelect:true,
                    frozenColumns:[[]],
                    columns:[[
                            {field:'id',title:'序号',width:40},
                            {field:'username',title:'用户名',width:100},
                            {field:'name',title:'昵名',width:100},
                            {field:'title',title:'标题',width:300},
                            {field:'state',title:'状态',width:60,
                                formatter:function(val,rec){
                                    if (val == 0){return '待处理';}
                                    if (val == 1){return '回复';}
                                }
                            },
                             {field:'checked',title:'审核',width:60,
                                formatter:function(val,rec){
                                    if (val){
                                        return '通过';
                                    }else{
                                        return '';
                                    }
                                }
                            },
                            {field:'date',title:'日期',width:100}
                        ]],
                    toolbar:[
                        {text:'查询',iconCls:'icon-search', handler:queryOperateBack},'-',
                        {text:'缺省查询',iconCls:'icon-back', handler:initOperateQueryBack}
                    ]
                });

                $('#tt').datagrid({
                  onDblClickRow:function(rowIndex, rowData){
                      var url = '<s:url action="edit"/>?id='+rowData.id;
                      $("#editifr").attr('src',url);
                      openWindow('#edit-window',{height:380,width:600});
                  }
                });
            });
            function queryAdvisorSearch(options){
                if(typeof(options) == 'undefined')options = {};
                var tableid = (options.tableid ? options.tableid : globaoptions.tableid);
                var windowid = (options.windowid ? options.windowid : globaoptions.querywindowid);
                var url = (options.url ? options.url : globaoptions.queryURL);
                var formid = (options.formid ? options.formid : globaoptions.queryformid);

                var value = $(formid).serialize();
                var index = url.indexOf("?");
                if (index == -1){
                    url = url + '?' + value;
                }else{
                    url = url + '&' + value;
                }
                $(tableid).datagrid({
                    pageNumber:1,
                    url:url
                });
                $(windowid).window('close');
            }


        </script>
    </head>
    <body class="easyui-layout">
        <div region="center" style="padding:2px;" border="false">
            <table id="tt" fit="true"></table>
        </div>
        <div id="edit-window" class="easyui-window" closed="true" icon="icon-winedit" title="&nbsp;" style="display:none;">
            <div class="easyui-layout" fit="true">
                <div region="center" border="false">
                    <iframe id="editifr"  name="editifr" class="editifr" frameborder="0" onload="iframeFitHeight(this);" scrolling="no"></iframe>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                    <a class="easyui-linkbutton" icon="icon-save" href="javascript:void(0)" onclick="saveOperator();$('#edit-window').window('close');return false;">保存</a>
                    <a class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)" onclick="$('#edit-window').window('close');">取消</a>
                </div>
            </div>
        </div>

        <div id="query-window" class="easyui-window" closed="true" icon='icon-search' title="查询"  style="display:none;">
            <div class="easyui-layout" fit="true">
                <div region="center" border="false">
                    <form id="queryform">
                        <table class="formtable">
                            <tr>
                                <td class="tdtitle">标题：</td>
                                <td class="tdinput">
                                    <input type="text" id="title_id" name="title" class="inputtext"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdtitle">类容：</td>
                                <td class="tdinput">
                                    <input type="text" id="content_id" name="content" class="inputtext"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdtitle">回复：</td>
                                <td class="tdinput">
                                    <input type="radio" id="checked_id" name="replay" value="0"/>所有&nbsp;&nbsp;
                                    <input type="radio" id="checked_id" name="replay" value="1"/>回复&nbsp;&nbsp;
                                    <input type="radio" id="checked_id" name="replay" value="2"/>未回复
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div region="south" border="false" style="text-align:center;height:28px;line-height:28px;background-color:#f6f6f6">
                    <a class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" onclick="queryAdvisorSearch('');">查询</a>
                </div>
            </div>
        </div>
    </body>
</html>