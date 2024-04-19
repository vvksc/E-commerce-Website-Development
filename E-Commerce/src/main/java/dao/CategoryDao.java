package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import Helper.FactoryProvider;

import entities.Ctaegory;
import entities.User;

public class CategoryDao {
	private EntityManagerFactory emf;

	public CategoryDao(EntityManagerFactory emf) {
		super();
		this.emf = emf;
	}
	public boolean saveCategory(Ctaegory cat) {
		EntityManager em=this.emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(cat);
		boolean flag=em.contains(cat);
		
		
		et.commit();
		return flag;
	}
	public List<Ctaegory> getCategory(){
		EntityManager em=this.emf.createEntityManager();
		Query q=em.createQuery("from Ctaegory");
		List<Ctaegory>list=q.getResultList();
		return list; 
	}
	public Ctaegory getCategoryById(int cid) {
		EntityManager em=this.emf.createEntityManager();
		Ctaegory q=(Ctaegory)em.getReference(Ctaegory.class, cid);
		return q;
	}
	
	
	
	
	
	
}
