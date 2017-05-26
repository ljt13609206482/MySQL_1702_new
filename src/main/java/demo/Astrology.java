package demo;

import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.Hashtable;
import java.util.Map;

/**
 * Created by mingfei.net@gmail.com
 * 5/26/17 16:35
 * https://github.com/thu/MySQL_1702/
 */
public class Astrology {
    private static final String URL = "jdbc:mysql:///?user=root&password=system";
    private static final String SQL =
            "SELECT count(*)" +
                    " FROM db_1702.v_password" +
                    " WHERE substr(password, 5, 4) BETWEEN ? AND ?";
    private static Hashtable<String, String> hashtable;

    public static void main(String[] args) throws SQLException {
        hashtable = new Hashtable<>();
        hashtable.put("0321", "0420");
        hashtable.put("0421", "0521");
        hashtable.put("0522", "0622");
        hashtable.put("0623", "0723");
        hashtable.put("0724", "0823");
        hashtable.put("0824", "0923");
        hashtable.put("0924", "1024");
        hashtable.put("1025", "1123");
        hashtable.put("1124", "1222");
        hashtable.put("1223", "1221");
        hashtable.put("0101", "0121");
        hashtable.put("0122", "0320");

        new Driver();
        Connection connection = DriverManager.getConnection(URL);
        PreparedStatement statement = connection.prepareStatement(SQL);
        for (Map.Entry<String, String> entry : hashtable.entrySet()) {
            statement.setString(1, entry.getKey());
            statement.setString(2, entry.getValue());

            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            System.out.println(resultSet.getInt(1));

            resultSet.close();
        }

        statement.close();
        connection.close();
    }

}
