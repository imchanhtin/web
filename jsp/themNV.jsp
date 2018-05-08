
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>
<%
    String manv = request.getParameter("manv");
    String hoten = request.getParameter("hoten");
    String gioitinh = request.getParameter("gioitinh");
    String ngaysinh = request.getParameter("ngaysinh");
    String sdt = request.getParameter("sdt");
    String chucvu = request.getParameter("chucvu");
    String luong = request.getParameter("luong");
    String sql = "insert into nhanvien values('"+manv+"','"+hoten+"','"+gioitinh+"','"+ngaysinh+"','" +sdt+"','"+chucvu+"', "+luong+")";
    String thongbao = "Thêm thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
