/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ElectionPackage;

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
public class ElePosFacade extends AbstractFacade<ElePos> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ElePosFacade() {
        super(ElePos.class);
    }
    public String gVd(String un){
        String found = null;
        Query a = em.createNamedQuery("ElePos.gVd");
        a.setParameter("x", un);
        List<ElePos> data = a.getResultList();
        System.out.println("size=" + data.size());
        if(data.size()>0){
            found = data.get(0).getPvotedate();
        }
        return found;
    }
}
