package utils;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/*import javax.sql.DataSource;*/




import oracle.jdbc.pool.OracleDataSource;

public class DBUtil {
	static String driver = null;
	static String url = null;
	static String user = null;
	static String password = null;
	static {
		Properties p = new Properties();
		try {
			p.load(new BufferedInputStream(DBUtil.class.getClassLoader().getResourceAsStream("/dbinfo.properties")));			
			driver = p.getProperty("driver");
			url = p.getProperty("url");
			user = p.getProperty("user");
			password = p.getProperty("password");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConn() {
		Connection conn = null;
		try {
			// 1.������
			Class.forName(driver);
			// 2.��ȡ����
			//conn = DriverManager.getConnection(url, user, password);
			
			//Oracle��ݿ⳧���ṩ�����Դ
			OracleDataSource ds = new OracleDataSource();
			ds.setURL(url);
			ds.setUser(user);
			ds.setPassword(password);
			conn = ds.getConnection();
			
			//tomcat-jdbc�ṩ������?
			/*PoolProperties p = new PoolProperties();
			p.setUrl("jdbc:oracle:thin:@localhost:1521/orcl");
			p.setDriverClassName("oracle.jdbc.OracleDriver");
			p.setUsername("scott");
			p.setPassword("tg2017");
			p.setJmxEnabled(true);
			p.setTestWhileIdle(false);
			p.setTestOnBorrow(true);
			p.setValidationQuery("SELECT 1");
			p.setTestOnReturn(false);
			p.setValidationInterval(30000);
			p.setTimeBetweenEvictionRunsMillis(30000);
			p.setMaxActive(100);
			p.setInitialSize(10);
			p.setMaxWait(10000);
			p.setRemoveAbandonedTimeout(60);
			p.setMinEvictableIdleTimeMillis(30000);
			p.setMinIdle(10);
			p.setLogAbandoned(true);
			p.setRemoveAbandoned(true);
			p.setJdbcInterceptors("org.apache.tomcat.jdbc.pool.interceptor.ConnectionState;"
					+ "org.apache.tomcat.jdbc.pool.interceptor.StatementFinalizer");
			DataSource datasource = new DataSource();
			datasource.setPoolProperties(p);
			conn = datasource.getConnection();*/
	          
	          
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	
	public static void closeResource(Connection conn, Statement stat,
			ResultSet rs) {
		if (null != rs) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (null != stat) {
			try {
				stat.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (null != conn) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
