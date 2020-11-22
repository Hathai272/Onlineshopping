/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author hatai
 */
public class CartTable {
    
    public static List<Cart> findYourCart() {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("OnlineShoppingPU");
     EntityManager em = emf.createEntityManager();
     List<Cart> empList = null;
     try {
            empList = (List<Cart>) em.createNamedQuery("Cart.findAll").getResultList();         
        } catch (Exception e) {
            throw new RuntimeException(e);
            
        }
        finally {
            em.close();
            emf.close();
        }
        return empList;
             
}

    

//    public void persist(Object object) {
//        EntityManager em = emf.createEntityManager();
//        try {
//            em.getTransaction().begin();
//            em.persist(object);
//            em.getTransaction().commit();
//        } catch (Exception e) {
//            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
//            em.getTransaction().rollback();
//        } finally {
//            em.close();
//        }
//    }
    
}
