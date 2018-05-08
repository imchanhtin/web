
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>

<%
    String masv = request.getParameter("masv");
    String hoten = request.getParameter("hoten");
    String gioitinh = request.getParameter("gioitinh");
    String ngaysinh = request.getParameter("ngaysinh");
    String sdt = request.getParameter("sdt");
    String lop = request.getParameter("lop");
    String sql = "insert into sinhvien values('"+masv+ "','"+hoten+"','"+gioitinh+ "','"+ngaysinh+"','"+sdt+"','"+lop+"')";
    String thongbao = "Thêm thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
