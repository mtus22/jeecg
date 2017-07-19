<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>投票设置</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="voteSetController.do?save">
		<input id="id" name="id" type="hidden" value="${voteSetPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">主机地址:</label>
		      <input class="inputxt" id="address" name="address" ignore="ignore"   value="${voteSetPage.address}" />
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">客户端标识:</label>
		      <input class="inputxt" id="clientsign" name="clientsign" ignore="ignore"   value="${voteSetPage.clientsign}" />
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">账号:</label>
		      <input class="inputxt" id="account" name="account" ignore="ignore"   value="${voteSetPage.account}" />
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">密码:</label>
		      <input class="inputxt" id="password" name="password" ignore="ignore"   value="${voteSetPage.password}" />
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		       <label class="Validform_label">是否启用:</label>
		       <t:dictSelect field="enable" type="radio" 
									typeGroupCode="sf_yn" defaultVal="N" hasLabel="false"  title="是否启用" ></t:dictSelect>     
			   <span class="Validform_checktip"></span>
			   <label class="Validform_label" style="display: none;">是否启用</label>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>