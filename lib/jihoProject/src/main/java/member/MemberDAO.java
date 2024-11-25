package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	Connection conn;
	
	public MemberDAO() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn
		=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<MemberVO> list(){
		try {
		String sql="select * from member_tbl_02";
		PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		List<MemberVO> list=new ArrayList<MemberVO>();
		while(rs.next()){ 
			int custno=rs.getInt("custno");
			String custname=rs.getString("custname");
			String phone=rs.getString("phone");
			String address=rs.getString("address");
			String joindate=rs.getString("joindate");
			String grade=rs.getString("grade");
			String city=rs.getString("city");
			
			joindate=new SimpleDateFormat("yyyy-MM-dd").format(
					new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(
							joindate));
			grade=grade.equals("A") ? "VIP": grade.equals("B")?"직원":"일반";
			
			list.add(
			new MemberVO(custno, custname, phone, address
					, joindate,grade,city));
		}
		rs.close();
		ps.close();
		return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
