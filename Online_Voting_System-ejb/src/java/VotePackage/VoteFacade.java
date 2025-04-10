/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package VotePackage;

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
public class VoteFacade extends AbstractFacade<Vote> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VoteFacade() {
        super(Vote.class);
    }
    public boolean findV(String un,String pwd){
        Query a = em.createNamedQuery("Vote.findV");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Vote> data = a.getResultList();
        System.out.println("Votesize=" + data.size());
        if(data.isEmpty()){
            return false;
        }
        return true;
    }

}
