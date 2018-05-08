
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>

<%
    String manv = request.getParameter("manv");
   
    String sdt = request.getParameter("sdt");

    String sql = "insert into taikhoan values('"+manv+"','"+sdt+"',"+0+")";
    String thongbao = "Thêm thành công"; 
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
