package prostore.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import prostore.model.Customer;

public class Update {
	private static SessionFactory factory = null;

	public boolean updatetPro(Integer id,String name,String email,String address) {

		factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

		Session session = factory.openSession();

		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			Customer pd = (Customer) session.get(Customer.class, id);
			if (pd != null) {
				pd.setName(name);
				pd.setEmail(email);
				pd.setAddress(address);
				session.update(pd);
				System.out.println("Customer updated........");
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
