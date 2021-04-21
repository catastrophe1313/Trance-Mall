package anxing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import entity.Ins_info;
import entity.Insured_info;
import entity.Order_detail;
import entity.Order_info;
import entity.TUser;

public class Service {
	
	public static Connection getConnect() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "JDBC:mysql://localhost:3306/travel_ins?useUnicode=true&characterEncoding=UTF-8";
		String user = "root";
		String pass = "123456";
		Connection conn = DriverManager.getConnection(url, user, pass);
		return conn;
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static void reg(String username, String tel, String password) throws SQLException {
		Connection conn = Service.getConnect();
		QueryRunner runner = new QueryRunner();
		String sql = "insert into users (username,tel,password) values(?,?,?)";
		runner.execute(conn, sql, username, tel, password);
		DbUtils.closeQuietly(conn);
	}

	public static TUser login(String username, String password){
		Connection conn = Service.getConnect();
		QueryRunner runner = new QueryRunner();
		String sql = "select * from users where username=? and password=?";
		List<TUser> users;
		try {
			users = runner.query(conn, sql, new BeanListHandler<TUser>(TUser.class), username, password);
			
			if(users.size()>0) {
				return users.get(0);
			}
			else {
				return null;
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbUtils.closeQuietly(conn);
		return null;	
	}

	public static List<TUser> queryUsers(String username){
		Connection conn = Service.getConnect();
		QueryRunner runner = new QueryRunner();
		
		String sql = "select * from users where username=?";
		List<TUser> users=new ArrayList<>();
		try {
			users = runner.query(conn, sql, new BeanListHandler<TUser>(TUser.class), username);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return users;
	};
	public static void update(String realname, String idtype, String idnum,String city, String sex,String username){
		Connection conn = Service.getConnect();
		QueryRunner runner = new QueryRunner();
		String sql = "update users set realname=?,idtype=?,idnum=?,city=?,sex=? where username=?";
		System.out.print(sql);
		try {
			runner.execute(conn, sql, realname, idtype,idnum,city,sex,username);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

public static void insertOrderin(String ordername, int insuredid, int userid, double price, String date, String status) throws SQLException {
	Connection conn = Service.getConnect();
	QueryRunner runner = new QueryRunner();
	String sql = "insert into order_info (ordername,insuredid,userid,price,date,status) values(?,?,?,?,?,?)";
	runner.execute(conn, sql, ordername,insuredid,userid,price,date,status);
	DbUtils.closeQuietly(conn);
}

public static void insertOrderde(String country, String city, String type,String fromdate, String todate) throws SQLException {
	Connection conn = Service.getConnect();
	QueryRunner runner = new QueryRunner();
	String sql = "insert into order_detail (country,city,type,fromdate,todate) values(?,?,?,?,?)";
	runner.execute(conn, sql, country,city,type,fromdate,todate);
	DbUtils.closeQuietly(conn);
}

public static void insertInsured(int userid, String name, String pingyin, String idcard, String idtype, String tel, String relation) throws SQLException {
	Connection conn = Service.getConnect();
	QueryRunner runner = new QueryRunner();
	String sql = "insert into insured_info (userid,name,pingyin,idcard,idtype,tel,relation) values(?,?,?,?,?,?,?)";
	runner.execute(conn, sql, userid,name,pingyin,idcard,idtype,tel,relation);
	DbUtils.closeQuietly(conn);
}

public static List<Order_info> queryOI(int id){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select * from order_info where userid=?";
List<Order_info> ois=new ArrayList<>();
try {
	ois = runner.query(conn, sql, new BeanListHandler<Order_info>(Order_info.class),id);
	DbUtils.closeQuietly(conn);
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return ois;
}

public static List<Order_info> queryOI2(int id){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select * from order_info where orderid=?";
List<Order_info> ois=new ArrayList<>();
try {
	ois = runner.query(conn, sql, new BeanListHandler<Order_info>(Order_info.class),id);
	DbUtils.closeQuietly(conn);
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return ois;
}

public static List<Order_detail> queryOD(int id){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select * from order_detail where orderid=?";
List<Order_detail> ods=new ArrayList<>();
try {
	ods = runner.query(conn, sql, new BeanListHandler<Order_detail>(Order_detail.class),id);
	DbUtils.closeQuietly(conn);
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return ods;
}

public static List<Insured_info> queryII(int id){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select * from insured_info where insuredid=?";
List<Insured_info> iis=new ArrayList<>();
try {
	iis = runner.query(conn, sql, new BeanListHandler<Insured_info>(Insured_info.class),id);
	DbUtils.closeQuietly(conn);
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return iis;
}

public static List<Ins_info> queryIns(String name){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select * from ins_info where insname=?";
List<Ins_info> ins=new ArrayList<>();
try {
	ins = runner.query(conn, sql, new BeanListHandler<Ins_info>(Ins_info.class),name);
	DbUtils.closeQuietly(conn);
	
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return ins;
}


public static int queryLatestOID(){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select orderid from order_detail order by orderid desc limit 1";
try {
	return ((int)runner.query(conn,sql,new ScalarHandler()));
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

return 0;
}

public static int queryLatestIID(){
Connection conn = Service.getConnect();
QueryRunner runner = new QueryRunner();
String sql = "select insuredid from insured_info order by insuredid desc limit 1";
try {
	return ((int)runner.query(conn,sql,new ScalarHandler()));
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

return 0;
}
}
