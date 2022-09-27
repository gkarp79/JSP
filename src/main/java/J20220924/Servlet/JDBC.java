package J20220924.Servlet;

import J20220924.Dao.Dao;
import org.json.simple.JSONArray;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Enumeration;
import java.util.HashMap;

@WebServlet(name = "JDBC", value = "/JDBC")
public class JDBC extends Servlet_P {

    @Override
    protected void doDual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HashMap map = getParam(request);

        String query = "insert into tmember2(femail,fname, fpass, fhobby, faddr, fdate) value (?,?,?,?,?,sysdate())";
//        String query = "delete FROM tmember2 where Fidx=(select a.max from (select max(FIDX) max from tmember2) a);";
        try {
            con = dao.getMysqlcon();

            prStat = con.prepareStatement(query);
            prStat.setString(1, map.get("temail").toString());
            prStat.setString(2, map.get("tname").toString());
            prStat.setString(3, map.get("tpwd").toString());
            prStat.setString(4, map.get("thobby").toString());
            prStat.setString(5, map.get("taddr").toString());
            int r = prStat.executeUpdate();
            System.out.println("변경된 row :" + r);
            if(r!=0)
                response.sendRedirect("/JS20220924/HTML/mem_regForm.html");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            dao.DBclose(con, prStat, rs);
        }
    }
}
