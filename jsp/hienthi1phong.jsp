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
    String sophong = request.getParameter("sophong");
    ResultSet rs = stm.executeQuery("select * from phong where sophong like '%" + sophong + "%'");
    if (!rs.next()) {
        out.print("empty");
        return;
    }
    String s = "[";
    do {
        s += "{\"sophong\":\"" + rs.getString("sophong") + "\","
                + "\"makhunha\":\"" + rs.getString("makhunha") + "\","
                + "\"soluongSV\":\"" + rs.getInt("soluongSV") + "\","
                + "\"hienco\":\"" + rs.getInt("hienco") + "\","
                + "\"ghichu\":\"" + rs.getString("ghichu") + "\"},";

    } while (rs.next());
    s = s.substring(0, s.length() - 1);
    s += "]";
    rs.close();
    out.print(s);//goi cho browser chuoi json
%>