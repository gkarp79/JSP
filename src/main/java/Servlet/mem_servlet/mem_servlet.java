package Servlet.mem_servlet;

import com.mysql.cj.xdevapi.JsonArray;
import org.json.simple.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet(name = "mem_servlet", value = "/mem_servlet")
public class mem_servlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("서블릿 시작");
    }

    @Override
    public void destroy() {
        System.out.println("서블릿 종료");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doDual(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doDual(request, response);
    }
    protected void doDual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        JSONObject json = new JSONObject();
        String email = request.getParameter("temail");
        String name = request.getParameter("tname");
        String pwd = request.getParameter("tpwd");
        String pwd2 = request.getParameter("tpwd2");
        String hobby = request.getParameter("thobby");
        String addr = request.getParameter("taddr");
        System.out.println(hobby);
        json.put("temail",email);
        json.put("tname",name);
        json.put("tpwd",pwd);
        json.put("tpwd2",pwd2);
        json.put("thobby",hobby);
        json.put("taddr",addr);
        //System.out.println(json);
        response.setContentType("text/json;charset=UTF-8");
        response.getWriter().write(json.toJSONString());









    }

}
