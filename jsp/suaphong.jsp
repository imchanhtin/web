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
    String sophong = request.getParameter("sophong");
    String sophongcu = request.getParameter("sophongcu");
    String makhunha = request.getParameter("makhunha");
    String soluongSV = request.getParameter("soluongSV");
    String hienco = request.getParameter("hienco");
    String ghichu = request.getParameter("ghichu");
    String sql = "update phong set sophong='"+sophong+"', makhunha='"+makhunha+"', soluongSV="+soluongSV+", hienco="+hienco+", ghichu='"+ghichu+"' where sophong like '%"+sophongcu+"%'";
    String thongbao = "Sửa thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
