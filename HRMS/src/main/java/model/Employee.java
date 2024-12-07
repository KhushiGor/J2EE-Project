package model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "employees")
public class Employee {
	 @Id
    @Column(name = "employee_id")
	private String id;
	
	@Column(name = "employee_email")
	 private String email;
	
	@Column(name = "employee_name")
    private String name;
   
	@Column(name = "employee_position")
    private String position;
//    private double salary;

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public double getSalary() {
//        return salary;
//    }
//
//    public void setSalary(double salary) {
//        this.salary = salary;
//    }

	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
}
