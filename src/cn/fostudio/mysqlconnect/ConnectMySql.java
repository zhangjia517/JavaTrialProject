package cn.fostudio.mysqlconnect;

import java.sql.SQLException;
import java.sql.ResultSet;

public class ConnectMySql {
	private String sql = null;
	private MySqlDBHelper db1 = null;
	private ResultSet ret = null;

	public void Connect() {
		sql = "select *from stuinfo";// SQL���
		db1 = new MySqlDBHelper(sql);// ����DBHelper����
		try {
			ret = db1.pst.executeQuery();// ִ����䣬�õ������
			while (ret.next()) {
				String uid = ret.getString(1);
				String ufname = ret.getString(2);
				String ulname = ret.getString(3);
				String udate = ret.getString(4);
				System.out.println(uid + "\t" + ufname + "\t" + ulname + "\t" + udate);
			} // ��ʾ����
			ret.close();
			db1.close();// �ر�����
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
