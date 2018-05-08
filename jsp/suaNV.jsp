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
    String manv = request.getParameter("manv");
    String manvcu = request.getParameter("manvcu");
    String hoten = request.getParameter("hoten");
    String gioitinh = request.getParameter("gioitinh");
    String ngaysinh = request.getParameter("ngaysinh");
    String sdt = request.getParameter("sdt");
    String chucvu = request.getParameter("chucvu");
    String luong = request.getParameter("luong");
    String sql = "update nhanvien set manv='"+manv+"', hoten='"+hoten+"', gioitinh='"+gioitinh+"',ngaysinh='"+ngaysinh+"', sdt='"+sdt+"', chucvu='"+chucvu+"', luong="+luong+" where manv like '%"+manvcu+"%'";
    String thongbao = "Sửa thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
