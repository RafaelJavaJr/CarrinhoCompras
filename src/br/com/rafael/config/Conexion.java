package br.com.rafael.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
	Connection con;

	private static String banco = "jdbc:postgresql://localhost:5432/curso-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";

	public Connection getConnection() {
		try {		

			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(banco, user, password);
			
		} catch (Exception e) {
			throw new RuntimeException("erro ao conectar com o banco de dados.");
		}
		return con;
	}
}