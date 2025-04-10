/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminPackage;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author akhil
 */
@Stateless
public class AdminFacade extends AbstractFacade<Admin> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminFacade() {
        super(Admin.class);
    }
     public Admin checkLogin(String un,String pwd){
        Admin found = null;
        Query a = em.createNamedQuery("Admin.searchByName");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Admin> data = a.getResultList();
        System.out.println("size=" + data.size());
        if(data.size()>0){
            found = data.get(0);
        }
        return found;
    }
}
