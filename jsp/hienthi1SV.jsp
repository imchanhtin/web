<%-- 
    Document   : bangdiem
    Created on : Aug 9, 2017, 6:05:39 PM
    Author     : admin
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@include file="../jsp/ketnoi.jsp"%>
<%
    String masv = request.getParameter("masv");
    ResultSet rs = stm.executeQuery("select * from sinhvien where masv like '%"+masv+"%'");
    if(!rs.next()){
        out.print("empty");
        return;
    }
    String s = "[";
    do {
        s += "{\"masv\":\"" + rs.getString("masv") + "\","
                + "\"hoten\":\"" + rs.getString("hoten") + "\","
        + "\"gioitinh\":\"" + rs.getString("gioitinh") + "\","
         + "\"ngaysinh\":\"" + rs.getDate("ngaysinh") + "\","
         + "\"sdt\":\"" + rs.getString("sdt") + "\","
         + "\"lop\":\"" + rs.getString("lop") + "\"},";
                
    }while(rs.next()) ;
    s = s.substring(0, s.length() - 1);
    s += "]";
    rs.close();
    out.print(s);//goi cho browser chuoi json
%>