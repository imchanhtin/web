
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>
<%
    String sophong = request.getParameter("sophong");
    String makhunha = request.getParameter("makhunha");
    String soluongSV = request.getParameter("soluongSV");
    String hienco = request.getParameter("hienco");
    String ghichu = request.getParameter("ghichu");
    String sql = "insert into phong values('"+sophong+"','"+makhunha+"',"+soluongSV+","+hienco+", '"+ghichu+"')";
    String thongbao = "Thêm thành công";
    try{
       stm.executeUpdate(sql); //thuc thi cau lenh sql
    }catch(SQLException ex){
       thongbao = "Fail";
    }
    out.print(thongbao);
%>
