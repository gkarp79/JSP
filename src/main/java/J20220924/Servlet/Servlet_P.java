package J20220924.Servlet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.HashMap;

public abstract class Servlet_P extends HttpServlet implements Servlet{
    Connection con;
    ResultSet rs;
    PreparedStatement prStat;
    JSONArray jarray;
    JSONObject json;
    String query;
    @Override
    public void destroy() {

    }

    public HashMap getParam(HttpServletRequest request) {
        Enumeration keys = request.getParameterNames();
        HashMap map = new HashMap();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement().toString();
            String value = request.getParameter(key);
            map.put(key, value);
        }
        return map;
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doDual(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doDual(request, response);
    }

    protected abstract void doDual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
