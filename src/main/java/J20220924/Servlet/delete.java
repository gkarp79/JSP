package J20220924.Servlet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

@WebServlet(name = "delete", value = "/delete")
public class delete extends Servlet_P {
    @Override
    protected void doDual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map map = getParam(request);
        String email = "";
        String value ="";
        String pwd ="";

        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/json;charset=UTF-8");

        if(map.get("temail")!=null) email = map.get("temail").toString();
        if(map.get("tpwd")!=null) pwd = map.get("tpwd").toString();
        if(map.get("target")!=null) value = map.get("target").toString();

        con = dao.getMysqlcon();
        json = new JSONObject();
        try {
            query = "select fidx from tmember2 where femail=? and fname=? and fpass = ?;";
            prStat = con.prepareStatement(query);
            prStat.setString(1,email);
            prStat.setString(2,value);
            prStat.setString(3,pwd);
            rs = prStat.executeQuery();
            String idx ="";
            while(rs.next()){
                idx = rs.getString(1);
            }
            json.put("fidx",idx);
            out.println(json);

            query = "delete from tmember2 where femail=? and fname=? and fpass = ?;";

            prStat = con.prepareStatement(query);
            prStat.setString(1,email);
            prStat.setString(2,value);
            prStat.setString(3,pwd);
            int r = prStat.executeUpdate();
            if(r!=0){
                System.out.println(r+"개의 행 삭제");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dao.DBclose(con, prStat, rs);
        }
    }
}
