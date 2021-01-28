package world.ucode;

import java.sql.*;

public class DBConnection {
    public static Connection conn;
    public static Statement statmt;
//    public static ResultSet resSet;

    public static void conn() throws ClassNotFoundException, SQLException {
        conn = null;
        Class.forName("org.sqlite.JDBC");
        conn = DriverManager.getConnection("jdbc:sqlite:pixelizator.db");
        System.out.println("подключение к базе данных:: ок");
    }

    public static void create() throws ClassNotFoundException, SQLException {
        statmt = conn.createStatement();
        statmt.execute("CREATE TABLE if not exists requests (id INTEGER PRIMARY KEY AUTOINCREMENT, " +
                " pix_n INT, pix_type INT, filter_type INT, type_img TEXT);");
    }

    public static void write( int pix_n, int pix_type, int filter_type, String type_img) throws SQLException {
        statmt.execute("INSERT INTO  requests (pix_n,pix_type,filter_type,type_img) " +
                "VALUES (" + pix_n + "," +pix_type + "," +filter_type + "," + '"'+ type_img + '"' + ");");
    }
}
