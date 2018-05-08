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
    
    String[] DSMNV = new String[count];
    for(int i=0 ; i<DSMNV.length ; i++)
    {
        DSMNV[i] = request.getParameter("manv"+i);
    }
      
    for(int i=0 ; i<DSMNV.length ; i++)
    {
        String sql = "delete from nhanvien where manv like '%"+DSMNV[i]+"%'" ;
         String sql2 = "delete from taikhoan where id like '%"+DSMNV[i]+"%'" ;
        int n=stm.executeUpdate(sql);
        int m=stm.executeUpdate(sql2);
    }
    //out.print(String.valueOf(count));
    String thongbao = "Xóa thành công";
   out.print(thongbao);
  
%>
