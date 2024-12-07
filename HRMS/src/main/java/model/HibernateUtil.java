package model;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
public class HibernateUtil {
	private static final SessionFactory sessionFactory;

	static {
		try {
			// Create the SessionFactory from hibernate.cfg.xml
			sessionFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class)
					.buildSessionFactory();
		} catch (Exception e) {
			// Log and rethrow the error to ensure Hibernate is initialized correctly
			throw new ExceptionInInitializerError("Initial SessionFactory creation failed." + e);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
