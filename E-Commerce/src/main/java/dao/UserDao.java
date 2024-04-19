package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import entities.Product;
import entities.User;

public class UserDao {
	private EntityManagerFactory emf;

	public UserDao(EntityManagerFactory emf) {
		super();
		this.emf = emf;
	}
	public User getUserByEmailAndPassword(String email,String password) {
		User user=null;
		try {
			String query="from User where userEmail=:e and userPassword=:p";
			EntityManager em=this.emf.createEntityManager();
			Query q=em.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			user=(User) q.getSingleResult();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}public List<User> getUser(){
		EntityManager em=this.emf.createEntityManager();
		Query q=em.createQuery("from User");
		List<User>list=q.getResultList();
		return list; 
	}
}
