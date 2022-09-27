package J20220924.Dao;

import java.sql.*;
import java.util.HashMap;

public class Dao {
    Connection con;

    String mysqlurl = "jdbc:mysql://localhost:3307/study?serverTimezone=UTC";
    String id = "root";
    String passwd = "gwang_1";
    public Connection getMysqlcon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(mysqlurl,id,passwd);
            System.out.println("DB가 연결되었습니다");

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }

    public void DBclose(Connection con, PreparedStatement prStat, ResultSet rs){
        if(rs != null){
            try{
                rs.close();
                System.out.println("ResultSet 종료");
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
        if (prStat != null) {
            try {
                prStat.close();
                System.out.println("Prestatement 종료");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }//e:if (prStat != null)
        if (con != null) {
            try {
                con.close();
                System.out.println("Connection 종료");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }//e:if (con != null)
    }
}
