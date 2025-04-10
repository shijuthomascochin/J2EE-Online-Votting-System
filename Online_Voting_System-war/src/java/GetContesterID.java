/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CommitteePackage.Committee;
import CommitteePackage.CommitteeFacade;
import ContesterPackage.Contester;
import ContesterPackage.ContesterFacade;
import ElectionPackage.ElePos;
import ElectionPackage.ElePosFacade;
import StudentPackage.Student;
import StudentPackage.StudentFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author akhil
 */
@WebServlet(urlPatterns = {"/GetContesterID"})
public class GetContesterID extends HttpServlet {

    @EJB
    private StudentFacade studentFacade;

    @EJB
    private ElePosFacade elePosFacade;

    @EJB
    private ContesterFacade contesterFacade;

    @EJB
    private CommitteeFacade committeeFacade;
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            List<ElePos> elp = elePosFacade.findAll();
            List<Committee> c = committeeFacade.findAll();
            List<Student> s = studentFacade.findAll();
            List<Contester> con = contesterFacade.findAll();
            ArrayList<String> cid = new ArrayList<String>();
            ArrayList<String> sid;
            try{
                if(c.isEmpty()) //committee is empty
                {
                    if(!s.isEmpty()) //student is not empty
                    {
                        for(Student s1 : s){
                            cid.add((String) s1.getSid());
                        }
                        // cid has students ID's of students who are not in committee
                        if(con.isEmpty()) // contester is empty
                        {
                            sid = new ArrayList<String>();
                            for(Student s1 : s)
                            {
                                if(cid.contains(s1.getSid()))
                                    sid.add((String) s1.getSid()+"," + s1.getSname());
                            }
                            session.setAttribute("sid",sid);
                        }
                        else //contester not empty and student not empty and committee is empty
                        {
                            sid = new ArrayList<String>();
                            ArrayList<String> con1 = new ArrayList<String>(); //contester ID's
                            ArrayList<String> con2 = new ArrayList<String>(); //contester ID's with out CID
                            for(Contester co : con)
                                con1.add(co.getSid());
                            for(String s1 : cid)
                            {
                                if(!con1.contains(s1)) // contester ID not in CID
                                    con2.add(s1);
                            }   
                            // Taking SID and Sname
                            for(Student s1 : s)
                            {
                                if(con2.contains(s1.getSid()))
                                    sid.add((String) s1.getSid()+"," + s1.getSname());
                            }
                            session.setAttribute("sid",sid);
                        }
                    }
                    else//contester if student empty and committee is empty
                    {
                        cid.add("No Student,No Student");
                        session.setAttribute("sid",cid);
                    }
                }
                else // committee is not empty
                {
                    sid = new ArrayList<String>();
                    ArrayList<String> com = new ArrayList<String>();
                    for(Committee cc : c) // committee SID's
                        com.add(cc.getSid());
                    ArrayList<String> sid1 = new ArrayList<String>();
                    //Student SID not in committee SID 
                    for(Student s1 : s)
                    {
                        if(!com.contains(s1.getSid())) 
                            sid1.add((String) s1.getSid());
                    }
                    if(con.isEmpty()) // contester if is empty
                    {
                        for(Student s1 : s)
                        {
                            if(sid1.contains(s1.getSid()))
                                sid.add((String) s1.getSid()+"," + s1.getSname());
                        }
                        session.setAttribute("sid",sid);
                    }
                    else
                    {
                        ArrayList<String> con2 = new ArrayList<String>();
                        ArrayList<String> con3 = new ArrayList<String>();
                        //committee -- sid1=> Student SID not in committee SID
                        for(Contester co : con) // Contester SID's
                            con2.add(co.getSid());
                        for(String s1 : sid1)
                        {
                            if(!con2.contains(s1)) //SID whitout committee sid and contester sid
                                con3.add((String) s1);
                        }   
                        for(Student s1 : s)
                        {
                            if(con3.contains(s1.getSid()))
                                sid.add((String) s1.getSid()+"," + s1.getSname());
                        }
                        session.setAttribute("sid",sid);
                    }
                }
            }catch(Exception e){}
            session.setAttribute("elepos",elp);
            response.sendRedirect("/Online_Voting_System-war/Admin/AddContester.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
