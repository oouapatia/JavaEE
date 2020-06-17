package com;

import java.io.PrintWriter;
import java.sql.*;

public class DBean {

    PrintWriter out;
//    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://127.0.0.1; DatabaseName=ShoppingCart";
    String dataBaseName = "pwc"; // 数据库用户名
    String dataBasePwd = "7023"; // 数据库密码

    static Connection conn = null;
    static Statement sqlState = null;   // 语句对象
    static ResultSet sqlRes = null;     // 结果集对象

//    public DBean() {
//        try {
//            Class.forName(driver);   // jdk6之前版本需要调用
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DBean.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    
    public Connection getconn() {
        try {
            conn = DriverManager.getConnection(dbURL, dataBaseName, dataBasePwd);
        } catch (Exception e) {
            out.println(e.toString());
        }
        return conn;
    }
    
    //产生单个结果集的语句：查询：SELSECT
    public ResultSet Query(String sql) {
	try {
            DBean db = new DBean();
            conn = db.getconn();
            sqlState = conn.createStatement();
            sqlRes = sqlState.executeQuery(sql);
        } catch (SQLException e) {
            out.println(e.toString());
        } 
        return sqlRes;
    }
    
    //INSERT、UPDATE、DELETE及数据定义
    public int Update(String sql) {
	int result = 0;
	try {
            result = sqlState.executeUpdate(sql);
        } catch (SQLException e) {
            out.println(e.toString());
	}
	return result;
    }
    
    public void closeDB(ResultSet sqlRes) {
        if (sqlRes != null) {
            try {
                if (sqlRes != null) {
                    sqlRes.close();
                }
                if (sqlState != null) {
                    sqlState.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                out.println(e.toString());
            }
        }
    }
}
