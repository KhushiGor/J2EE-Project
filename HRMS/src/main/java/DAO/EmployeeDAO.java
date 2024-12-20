package DAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import model.Employee;
import java.util.List;

import org.hibernate.query.Query;

public class EmployeeDAO {
	 private static SessionFactory factory;

	    static {
	        // Initialize SessionFactory (this should be done once)
	        factory = new Configuration().configure("hibernate.cfg.xml")
	                                      .addAnnotatedClass(Employee.class)
	                                      .buildSessionFactory();
	    }

	    // Utility method for transaction handling
	    private <T> T executeTransaction(HibernateTransaction<T> transaction) {
	        Session session = null;
	        Transaction txn = null;
	        T result = null;

	        try {
	            session = factory.getCurrentSession();
	            txn = session.beginTransaction();
	            result = transaction.execute(session);  // Perform the operation
	            txn.commit(); // Commit if successful
	        } catch (Exception e) {
	            if (txn != null) {
	                txn.rollback(); // Rollback in case of error
	            }
	            e.printStackTrace();
	        } finally {
	            if (session != null && session.isOpen()) {
	                // session.close(); // Uncomment if you're not using getCurrentSession()
	            }
	        }
	        return result;
	    }

	    // Method to add a new employee
	    public boolean addEmployee(Employee employee) {
	        return executeTransaction(session -> {
	            session.save(employee); // Save the employee
	            return true;
	        });
	    }

	    // Method to get all employees
	    public List<Employee> getAllEmployees() {
	        return executeTransaction(session -> {
	            Query<Employee> query = session.createQuery("from Employee", Employee.class);
	            return query.getResultList(); // Return list of employees
	        });
	    }

	    // Method to get an employee by ID
	    public Employee getEmployeeById(String employeeId) {
	        return executeTransaction(session -> {
	            return session.get(Employee.class, employeeId); // Retrieve employee
	        });
	    }

	    // Method to update an employee
	    public boolean updateEmployee(Employee employee) {
	        return executeTransaction(session -> {
	            Employee existingEmployee = session.get(Employee.class, employee.getId());
	            if (existingEmployee != null) {
	                // Update the existing employee details
	                existingEmployee.setName(employee.getName());
	                existingEmployee.setEmail(employee.getEmail());
	                existingEmployee.setPosition(employee.getPosition());
	                return true;
	            }
	            return false; // Employee not found
	        });
	    }

	    // Method to delete an employee by ID
	    public boolean deleteEmployee(String employeeId) {
	        return executeTransaction(session -> {
	            Employee employee = session.get(Employee.class, employeeId);
	            if (employee != null) {
	                session.delete(employee); // Delete employee
	                return true;
	            }
	            return false; // Employee not found
	        });
	    }

	    // Functional interface for transaction execution
	    @FunctionalInterface
	    interface HibernateTransaction<T> {
	        T execute(Session session);
	    }
}
