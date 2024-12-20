package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;

import java.io.FileWriter;
import java.io.IOException;

public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       public UpdateEmployee() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve the employee ID from the query parameter
        String employeeId = request.getParameter("id");

        // Simulate fetching employee data from the database
        // Replace this with actual database fetching logic
        Employee employee = new Employee();

        // Set the employee data as request attributes
        request.setAttribute("id", employee.getId());
        request.setAttribute("name", employee.getName());
        request.setAttribute("email", employee.getEmail());
        request.setAttribute("position", employee.getPosition());
        request.getRequestDispatcher("/view/update-Employee.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve form data
        String employeeId = request.getParameter("id");
        String employeeName = request.getParameter("name");
        String employeeEmail = request.getParameter("email");
        String employeePosition = request.getParameter("position");
        // Forward to a success page with the updated data
        request.setAttribute("id", employeeId);
        request.setAttribute("name", employeeName);
        request.setAttribute("email", employeeEmail);
        request.setAttribute("position", employeePosition);
        // Process the data as needed (e.g., update database, log changes, etc.)
        // For demonstration, let's just log the data to the console
        System.out.println("Updating Employee:");
        System.out.println("ID: " + employeeId);
        System.out.println("Name: " + employeeName);
        System.out.println("Email: " + employeeEmail);
        System.out.println("Position: " + employeePosition);

       
        request.getRequestDispatcher("/view/update-success.jsp").forward(request, response);
		
	}
	
}
