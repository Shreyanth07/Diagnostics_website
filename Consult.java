package consult;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletConfig;

@WebServlet("/Consult")
public class Consult extends HttpServlet {
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=Diagnosis;user=shrey;password=shrey12345";
       
    public Consult() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String bg=request.getParameter("bg"); 
		String gender=request.getParameter("gender"); 
		String date=request.getParameter("date");
		String message=request.getParameter("message");
	
		try(PrintWriter out=response.getWriter())
		{
			out.println("<h1>Warm Greetings from Bala Diagnostics to "+name+"</h1>");
			out.println("<h2>Your Consultation request has been successfully updated. </h2>");
			out.println("<h2>You can take the diagnosis test at any suitable time preferred on "+date+" before 19:00</h2>");
			out.println("<body style='color:white; background:url(https://www.wallpapertip.com/wmimgs/11-119968_computer-aided-diagnosis-ai.jpg); padding-top:17%; padding-left:13%; font-family:sans-serif; border:10px solid rgba(0,0,0,0.6); border-radius:5px; opacity:0.8'>");
			out.println("<br><br>");
			out.println("<a href='pro.html' style='font-weight:500; color: white; padding-top:17%; padding-left:25%; font-family:sans-serif;'>Click Here to Redirect Back to Home Page</a>");

		try 
			{
			System.out.println("Successfully registered");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("Successfully updated");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();
				String query="insert into Consult values('"+name+"','"+age+"','"+email+"','"+contact+"','"+bg+"','"+gender+"','"+date+"','"+message+"');";
				stmt.execute(query);
			System.out.println("Successfully Inserted");
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
