<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ketnoi.jsp" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String sql = "Select role from taikhoan where id='"
            +username+"' and pass='"+password+"'";
    ResultSet rs= stm.executeQuery(sql);
    int role = -1;
    if (rs.next()==true){
        role = rs.getInt("role");
    }
    System.out.println(role);
    out.print(role);
%>
