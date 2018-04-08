package cn.fostudio.mysqlconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MySqlDBHelper {
	public final String url = "jdbc:mysql://127.0.0.1:3306/student?characterEncoding=utf8&useSSL=true?serverTimezone=UTC";
	public final String name = "com.mysql.cj.jdbc.Driver";
	public final String user = "�˻�";
	public final String password = "����";
	public Connection conn = null;
	public PreparedStatement pst = null;

	public MySqlDBHelper(String sql) {
		try {
			Class.forName(name);// ָ����������
			conn = DriverManager.getConnection(url, user, password);// ��ȡ����
			pst = conn.prepareStatement(sql);// ׼��ִ�����
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			this.conn.close();
			this.pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}