<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	
	<%@include file="/jsp/head.jsp"%>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
		<STYLE type="text/css">
		
			.div-error 
			{
				background-color: #ea9184;
				border: 2px solid #ea523b;
				font-weight: bold;
				padding: 6px 6px 6px 6px;
				text-align: left;
				font-size: 1em;
				width: 99%;	
				margin-top: 10px;		
				display:none;
			}
			
			.div-error li 
			{
				list-style-type: none;
			}
			
			.div-message 
			{
				background-color: #aae28b;
				border: 2px solid #6db943;
				font-weight: bold;
				padding: 6px 6px 6px 6px;
				text-align: left;
				width: 99%;
				font-size: 1em;
				margin-top: 10px;
				display:none;
			}
			
			.div-message li 
			{
				list-style-type: none;
			}
			
		</STYLE>
		
		<script type="text/javascript">
			<s:if test="hasActionMessages()">
				$(document).ready(function() {
							$(".div-message").slideDown(500);
						});			
			</s:if>		
			<s:if test="hasActionErrors()">
				$(document).ready(function() {
							$(".div-error").slideDown(500);
						});
			</s:if>
		</script>
	
	</head>
	
	<body>
		</br>
	
		<s:actionmessage cssClass="div-message"/>
		<s:actionerror cssClass="div-error"/>
	
	
		<!--"Envolvemos" los mensajes en un div para darle estilo. También podríamos
		ejecutar algún javascript para mostrar el mensaje en una ventana modal o realizar
		acciones similares -->
		<s:if test="hasActionMessages()">
			<div class="div-message">
				<s:actionmessage />
			</div>
		</s:if>
	
		<s:if test="hasActionErrors()">
			<div class="div-error">
				<s:actionerror />
			</div>
		</s:if>
	
		<%@include file="/jsp/footer.jsp"%>
		
	</body>
</html>