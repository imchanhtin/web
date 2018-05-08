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
    
    String[] DSP = new String[count];
    for(int i=0 ; i<DSP.length ; i++)
    {
        DSP[i] = request.getParameter("sophong"+i);
    }
      
    for(int i=0 ; i<DSP.length ; i++)
    {
        String sql = "delete from phong where sophong like '%"+DSP[i]+"%'" ;
        int n=stm.executeUpdate(sql);
        
    }
    //out.print(String.valueOf(count));
    String thongbao = "Xóa thành công";
   out.print(thongbao);
  
%>
