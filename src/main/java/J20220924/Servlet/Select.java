package J20220924.Servlet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Select", value = "/Select")
public class Select extends Servlet_P {

    @Override
    protected void doDual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        String list[] = {"fidx","femail","fname","fpass","fhobby","faddr","fdate"};
        String sql = "select * from tmember2 order by fidx desc;";
        con =dao.getMysqlcon();

        jarray = new JSONArray();

        try {
            prStat =  con.prepareStatement(sql);
            rs = prStat.executeQuery();
            while(rs.next()){
                json = new JSONObject();
                for(String listValue : list) {
                    json.put(listValue, rs.getString(listValue));
                }
                jarray.add(json);

            }
            System.out.println(jarray);
            out.println(jarray);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            dao.DBclose(con, prStat, rs);
            jarray.clear();
            json.clear();
        }
    }
}
