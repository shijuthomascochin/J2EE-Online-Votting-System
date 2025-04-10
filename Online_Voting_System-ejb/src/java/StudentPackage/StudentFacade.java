/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentPackage;

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
public class StudentFacade extends AbstractFacade<Student> {

    @PersistenceContext(unitName = "Online_Voting_System-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }
    public Student checkLogin(String un,String pwd){
        Student found = null;
        Query a = em.createNamedQuery("Student.searchByName");
        a.setParameter("x", un);
        a.setParameter("y",pwd);
        List<Student> data = a.getResultList();
        System.out.println("size=" + data.size());
        if(data.size()>0){
            found = data.get(0);
        }
        return found;
    }
    public int fNoStd(String un){
        Student found = null;
        Query a = em.createNamedQuery("Student.fNoStd");
        a.setParameter("x", un);
        List<Student> data = a.getResultList();
        System.out.println("size=" + data.size());
        return data.size();
    }
    
}
