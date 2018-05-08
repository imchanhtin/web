<%-- 
    Document   : nhapdiem
    Created on : Sep 19, 2017, 2:06:36 PM
    Author     : admin
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>
<%
    int count = Integer.parseInt(request.getParameter("dem"));
    
    String[] DSHD = new String[count];
    for(int i=0 ; i<DSHD.length ; i++)
    {
        DSHD[i] = request.getParameter("mahopdong"+i);
    }
      
    for(int i=0 ; i<DSHD.length ; i++)
    {
        String sql = "delete from hopdong where mahopdong like '%"+DSHD[i]+"%'" ;
        int n=stm.executeUpdate(sql);
        
    }
    //out.print(String.valueOf(count));
    String thongbao = "Xóa thành công";
   out.print(thongbao);
  
%>
