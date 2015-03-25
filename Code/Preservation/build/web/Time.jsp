<%@ page import="java.util.Date"%>

<%
Date d=new Date();
int hrs=d.getHours();
int mins=d.getMinutes();
out.println("hrs="+hrs);
out.println(mins);
%>