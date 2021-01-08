<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
    String DRV = "org.mariadb.jdbc.Driver" ;
    String URL = "jdbc:mariadb://maria-db.coqecfviusin.ap-northeast-2.rds.amazonaws.com:3306/zipcode";
    String USR = "zipcode";
    String PWD = "zipcode";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select distinct dong from zipcode_2013 where SIDO=? and GUGUN=?";
    StringBuilder sb = new StringBuilder();
    request.setCharacterEncoding("UTF-8");
    String sido = request.getParameter("sido");
    String gugun = request.getParameter("gugun");

    try {
        Class.forName(DRV);
        conn = DriverManager.getConnection(URL, USR, PWD);
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,sido);
        pstmt.setString(2,gugun);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            sb.append(rs.getString(1)).append(", ");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }

    out.write(sb.toString());
%>
