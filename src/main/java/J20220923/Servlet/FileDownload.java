package J20220923.Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "FileDownload", value = "/FileDownload")
public class FileDownload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = request.getParameter("filename");
        String folder = "E:\\project\\work\\intelliJProject\\JSP\\src\\main\\java\\files\\";
        String filePath = folder + fileName;

        request.setCharacterEncoding("utf-8");


        byte[] b = new byte[4096];
        FileInputStream fileInputStream = new FileInputStream(filePath);
        String Encoding = new String(fileName.getBytes(),"8859_1");


        String sMimeType = getServletContext().getMimeType(filePath);
        System.out.println(sMimeType);
        if(sMimeType == null){
           sMimeType = "application/octet-stream";
        }
        response.setContentType(sMimeType);
        response.setHeader("Content-Disposition", "attachment; fileName= " + Encoding); // 다운 받을수 있는 이유

        ServletOutputStream stream = response.getOutputStream();
        int read;
        while((read = fileInputStream.read(b,0,b.length))!=-1){
            stream.write(b,0,read);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
