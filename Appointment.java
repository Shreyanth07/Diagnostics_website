package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Appointment")
public class Appointment extends HttpServlet {
	
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=Diagnosis;user=shrey;password=shrey12345";
	public void init(ServletConfig config) throws ServletException {
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String bg=request.getParameter("bg");
		String gender=request.getParameter("gender");
		String test=request.getParameter("test");
		String date=request.getParameter("date"); 
		String time=request.getParameter("time");
		String message=request.getParameter("message");
	
		try(PrintWriter out=response.getWriter())
		{
			out.println("<h1>Hello, "+name+" </h1>");
			out.println("<h2>Your Appointment has been fixed successfully on "+date+" at "+time+" </h2>");
			out.println("<h2>Our expert Medical Team will contact you soon </h2>");
			out.println("<body style='color:black; background:url(https://cdnb.artstation.com/p/assets/images/images/013/494/433/large/mel-florance-conceptart9.jpg?1539848666); padding-top:17%; padding-left:20%; font-family:sans-serif; border:10px solid rgba(0,0,0,0.6); border-radius:5px; opacity:0.8'>");
			out.println("<br><br>");
			out.println("<a href='pro.html' style='color: black; padding-top:17%; padding-left:20%; font-family:sans-serif;'>Click Here to Redirect Back to Home Page</a>");
		try 
			{
			    System.out.println("Successfully registered");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("Successfully updated");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();
				String query="insert into Appointment values('"+name+"','"+age+"','"+email+"','"+contact+"','"+bg+"','"+gender+"','"+test+"','"+date+"','"+time+"','"+message+"');";
				stmt.execute(query);
			System.out.println("Successfully Inserted");
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}
