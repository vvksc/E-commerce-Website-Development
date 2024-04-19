package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import entities.Ctaegory;
import entities.Product;

public class ProductDao {
	private EntityManagerFactory emf;

	public ProductDao(EntityManagerFactory emf) {
		super();
		this.emf = emf;
	}
	public boolean saveProduct(Product name) {
		EntityManager em=this.emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(name);
		boolean flag=em.contains(name);
		
		
		et.commit();
		return flag;
	}public List<Product> getProduct(){
		EntityManager em=this.emf.createEntityManager();
		Query q=em.createQuery("from Product");
		List<Product>list=q.getResultList();
		return list; 
	}
}
