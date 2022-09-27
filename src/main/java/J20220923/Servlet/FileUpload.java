package J20220923.Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

@MultipartConfig(
        maxFileSize = 1024*1024*5, //5mb
        maxRequestSize = 1024*1024*50 //50mb
)
@WebServlet(name = "fu", value = "/fu")
public class FileUpload extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
//        File file = new File("E:\\project\\work\\intelliJProject\\JSP\\src\\main\\java\\files\\arin.jpg");
//        String fileName = file.getName();
//        String parentFolder = file.getParent();
//        String fileAllName = file.getPath();
//        String filePath = file.getAbsolutePath();
//
//        out.write("<p>파일명 : "+fileName+"<br />");
//        out.write("폴더경로 : "+parentFolder+"<br />");
//        out.write("전체경로 : "+fileAllName+"<br />");
//        out.write("절대경로 : "+filePath+"</p>");
//
//        File folder = new File("E:\\project\\work\\intelliJProject\\JSP\\src\\main\\java\\files");
//
//        out.write("<p>파일존재여부 : "+file.exists()+"<br />");
//        out.write("폴더의 존재여부 : "+folder.exists()+"<br />");
//        out.write("디렉토리여부 : "+file.isDirectory()+"</p>");
//
//        File[] files = folder.listFiles();
//        for(int i=0;i<files.length;i++){
//            out.println(files[i].getName()+"<br />");
//        }
        String FileName = "";
        String Folder = "E:\\project\\work\\intelliJProject\\JSP\\src\\main\\java\\files";
        String FilePath = "";
        String regName = "";
        int cnt = 0;


        Collection<Part> parts = request.getParts();
//        Part part = request.getPart("uploadFile");
        for(Part part : request.getParts()) {
            FileName = part.getSubmittedFileName();
            FilePath = Folder+"\\"+FileName;
            File file = new File(FilePath);
            String name = FileName.substring(0,FileName.lastIndexOf("."));
            String format = FileName.substring(FileName.lastIndexOf("."));

            regName = FileName;

            cnt = 1;
            while(file.exists()){
                regName = name + cnt++ + format;
                file = new File(Folder + "\\" + regName);
            }
            part.write(Folder + "\\" + regName);
            out.println("<a href='FileDownload?filename="+ regName + "'>FileDownload("+regName+")</a>");

        }
    }
}
