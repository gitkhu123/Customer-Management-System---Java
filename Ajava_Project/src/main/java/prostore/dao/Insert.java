package prostore.dao;
import org.hibernate.cfg.Configuration;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import prostore.model.Customer;

public class Insert {
	

	public void addPro(String name,String email,String address)
	{
	Configuration cfg = new Configuration();
	cfg.configure();
	SessionFactory factory = cfg.buildSessionFactory();
	Customer pd = new Customer(name,email,address);
	Session session = factory.openSession();
	Transaction tx = session.beginTransaction();
	session.save(pd);
	tx.commit();
	System.out.println("Customer Saved");
	session.close();	
	}
}
