package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;
import model.HibernateUtil;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/add-employee.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //Retrieve updated customer information from the form
        String id = request.getParameter("employee_id");
        String name = request.getParameter("employee_name");
        String email = request.getParameter("employee_email");
        String position = request.getParameter("employee_position");
        
        request.setAttribute("employee_id", id);
        request.setAttribute("employee_name", name);
        request.setAttribute("employee_email", email);
        request.setAttribute("employee_position", position);
        // Create a new Employee object
        Employee employee = new Employee();
        employee.setId(id);
        employee.setName(name);
        employee.setEmail(email);
        employee.setPosition(position);

        // Initialize Hibernate session and transaction
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            // Start a transaction
            transaction = session.beginTransaction();

            // Save the employee object
            session.save(employee);

            // Commit the transaction
            transaction.commit();

            // Redirect to success page
            request.getRequestDispatcher("/view/add-success.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle any exceptions
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("/view/error.jsp").forward(request, response);
        } finally {
            // Close the session
            session.close();
        }
        
//        request.getRequestDispatcher("/view/add-success.jsp").forward(request, response);
	}

}
