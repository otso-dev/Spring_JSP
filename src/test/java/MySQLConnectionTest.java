import org.junit.Test;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class MySQLConnectionTest {
    private static final String DRIVER ="com.mysql.jdbc.Driver";
    private static final String URL="jdbc:mysql://127.0.0.1:3308/testDB";
    private static final String USER ="jsh";
    private static final String PASSWORD ="1234";

    @Test
    public void testConnection() throws Exception{
        Class.forName(DRIVER);
        try(Connection connection = DriverManager.getConnection(URL,USER,PASSWORD)) {
            System.out.println(connection);
        }catch (Exception e){

            e.printStackTrace();
        }
    }

}
