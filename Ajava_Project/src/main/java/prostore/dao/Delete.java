package prostore.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import prostore.model.Customer;

public class Delete {
	private static SessionFactory factory = null;

	public boolean deletePro(Integer id) {
		factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

		Session session = factory.openSession();

		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Customer pd = (Customer) session.get(Customer.class, id);
			if(pd!=null) {
				session.delete(pd);
                System.out.println("Customer Deleted.........");
			}
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			factory.close();
			session.close();
		}
		return true;
	}
}
