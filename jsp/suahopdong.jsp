<%-- 
    Document   : nhapdiem
    Created on : Sep 19, 2017, 2:06:36 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>

<%
    String mahopdong = request.getParameter("mahopdong");
    String mahopdongcu = request.getParameter("mahopdongcu");
    String masv = request.getParameter("masv");
    String manv = request.getParameter("manv");
    String sophong = request.getParameter("sophong");
    String ngaybd = request.getParameter("ngaybd");
    String ngaykt = request.getParameter("ngaykt");
    String sql = "update hopdong set mahopdong='"+mahopdong+"', masv='"+masv+"', manv='"+manv+"', sophong='"+sophong+"', ngaybd='"+ngaybd+"', ngaykt='"+ngaykt+"' where mahopdong like '%"+mahopdongcu+"%'";
    String thongbao = "Sửa thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
