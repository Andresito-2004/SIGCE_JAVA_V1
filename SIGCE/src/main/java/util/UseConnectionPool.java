package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UseConnectionPool {
    private static Connection getConnection()
            throws SQLException {
        return ConnectionPool.getConnection();
    }
    public static void main(String[] args)
            throws SQLException {
        try (Connection conn = getConnection();
             Statement stmt =
                     conn.createStatement();
             ResultSet rs =
                     stmt.executeQuery("SELECT * FROM sigce2.aprendiz")) {
 while (rs.next()) {

     System.out.print(rs.getString("ide_Apr"));
        System.out.print(" | ");
            System.out.println(rs.getString("nom_Apr"));
     System.out.print(" | ");
     System.out.println(rs.getString("ape_Apr"));
     System.out.print(" | ");
     System.out.println(rs.getString("FK_ide_Fic"));
        }
    }
}
}