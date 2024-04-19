package Helper;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class FactoryProvider {
	
	private static EntityManagerFactory entityManagerFactory;
	
	public static EntityManagerFactory getFactory() {
		if(entityManagerFactory==null) {
			entityManagerFactory=Persistence.createEntityManagerFactory("vivek");
		}return entityManagerFactory;
	}
//	=Persistence.createEntityManagerFactory("vivek");
//	EntityManager entityManager=entityManagerFactory.createEntityManager();
//	EntityTransaction entityTransaction=entityManager.getTransaction();
//	entityTransaction.begin();
//	entityManager.persist(a1);
//	entityManager.persist(a2);
//	entityManager.persist(a3);
//	entityManager.persist(p);

}
