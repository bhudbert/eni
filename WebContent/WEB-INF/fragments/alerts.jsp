<%@page import="fr.hudbert.bruno.eni.encheres.alerts.Reader"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<%
	List<Integer> listeCodesErreur = (List<Integer>) request.getAttribute("listeCodesErreur");
	if (listeCodesErreur != null) {
%>

<div class="alert alert-danger" role="alert">


	<%
		for (int codeErreur : listeCodesErreur) {
	%>
	<p><%=Reader.getMessageErreur(codeErreur)%></p>
	<%
		}
	%>

</div>
<%
	}
%>
