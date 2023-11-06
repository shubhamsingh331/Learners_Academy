package multipletables;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class TestDAO {
	public static final String DRIVER_CLASS="com.mysql.jdbc.Driver";
	public static final String DB_URL="jdbc:mysql://localhost:3306/db9";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "123456";
	public boolean create(Test t) throws ClassNotFoundException, SQLException {
		
		Class.forName(DRIVER_CLASS);
		
		Connection con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		String tablename = t.getTable();
		String sql = "create table "+tablename+"(id int, name varchar(20))";
		PreparedStatement ps = con.prepareStatement(sql);
		return ps.execute();
	}

}
