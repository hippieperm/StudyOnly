package java.hrdkorea;

public class Main2 {

	public static void main(String[] args) {
		StringBuffer sql=new StringBuffer();
		sql.append("select a.custno custno, a.custname custname");
		sql.append(",a.grade grade, sum(b.price) price");
		sql.append(" from MEMBER_TBL_02 a, money_tbl_02 b"); 
		sql.append(" where a.custno=b.custno");
		sql.append(" group by (a.custno, a.custname, a.grade)");
		sql.append(" order by price desc");
		System.out.println(sql.toString());
		System.out.println(sql.substring(0));

	}

}
