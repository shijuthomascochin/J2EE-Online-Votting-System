/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CommitteePackage;

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
public class CommitteeFacade extends AbstractFacade<Committee> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CommitteeFacade() {
        super(Committee.class);
    }
     public Committee checkLogin(String un,String pwd){
        Committee found = null;
        Query a = em.createNamedQuery("Committee.searchByName");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Committee> data = a.getResultList();
        System.out.println("size=" + data.size());
        if(data.size()>0){
            found = data.get(0);
        }
        return found;
    }
}
