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
    String masv = request.getParameter("masv");
    String masvcu = request.getParameter("masvcu");
    String hoten = request.getParameter("hoten");
    String gioitinh = request.getParameter("gioitinh");
    String ngaysinh = request.getParameter("ngaysinh");
    String sdt = request.getParameter("sdt");
    String lop = request.getParameter("lop");
    String sql = "update sinhvien set masv='"+masv+"', hoten='"+hoten+"',gioitinh='"+gioitinh+"', ngaysinh='"+ngaysinh+"', sdt='"+sdt+"', lop='"+lop+"' where masv like '%"+masvcu+"%'";
    String thongbao = "Sửa thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
