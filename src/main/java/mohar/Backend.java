package mohar;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Backend extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String name= req.getParameter("name");
		String email= req.getParameter("email");
		String password= req.getParameter("passwd");
		PrintWriter out= res.getWriter();
	
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String connectionURL = "jdbc:mysql://localhost:3306/details?useSSL=false";
        try (Connection connection = DriverManager.getConnection(connectionURL, "root", "");
            PreparedStatement pst = connection.prepareStatement("INSERT INTO register (name,email,password) VALUES (?,?,?)")) {
         
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, password);
            int i = pst.executeUpdate();
            if (i != 0) {
                out.println("Record has been inserted");
                res.sendRedirect("http://localhost:8080/mohar/showdata.jsp");
            } else {
                out.println("failed to insert the data");
            }
        } catch (SQLException e) {
            out.println(e);
        }
		
	}
	
	
	

	

}
