/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContesterPackage;

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
public class ContesterFacade extends AbstractFacade<Contester> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ContesterFacade() {
        super(Contester.class);
    }
    public Contester checkLogin(String un,String pwd){
        Contester found = null;
        Query a = em.createNamedQuery("Contester.searchByName");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Contester> data = a.getResultList();
        System.out.println("size=" + data.size());
        if(data.size()>0){
            found = data.get(0);
        }
        return found;
    }
    public List<Contester> fSchPid(String un,String pwd){
        Query a = em.createNamedQuery("Contester.fSchPid");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Contester> data = a.getResultList();
        return data;
    }
    public List<Contester> findSchool(String un){
        Contester found = null;
        Query a = em.createNamedQuery("Contester.findSchool");
        a.setParameter("x", un);
        List<Contester> data = a.getResultList();
        System.out.println("size=" + data.size());
        return data;
    }
}
