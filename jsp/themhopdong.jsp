
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>
<%
    String mahopdong = request.getParameter("mahopdong");
    String masv = request.getParameter("masv");
    String manv = request.getParameter("manv");
    String sophong = request.getParameter("sophong");
    String ngaybd = request.getParameter("ngaybd");
    String ngaykt = request.getParameter("ngaykt");

    String sql = "insert into hopdong values('"+mahopdong+"','"+masv+"','"+manv+"','"+sophong+"','" +ngaybd+"','"+ngaykt+"')";
    String thongbao = "Thêm thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
