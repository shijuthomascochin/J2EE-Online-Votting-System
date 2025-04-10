/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CommitteePackage.Committee;
import CommitteePackage.CommitteeFacade;
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
@WebServlet(urlPatterns = {"/GetCommitteeID"})
public class GetCommitteeID extends HttpServlet {

    @EJB
    private StudentFacade studentFacade;

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
            /* TODO output your page here. You may use following sample code. */
            System.out.println("I am here");
            List<Committee> c = committeeFacade.findAll();
            List<Student> s = studentFacade.findAll();
            ArrayList<String> cid = new ArrayList<String>();
            try{
            if(c.isEmpty())
            {
                if(!s.isEmpty()){
                    for(Student s1 : s){
                        cid.add((String) s1.getSid()+"," + s1.getSname());
                    }
                }
                else
                    cid.add("No Student,No Student");
            }
            else
            {
                ArrayList<String> cidt = new ArrayList<String>();
                for(Committee cc : c)
                    cidt.add(cc.getSid());
                for(Student s1 : s){
                        if(!cidt.contains(s1.getSid()))
                            cid.add((String) s1.getSid()+"," + s1.getSname());
                    }
            }
            }catch(Exception e){}
            HttpSession session = request.getSession();
            session.setAttribute("cid",cid);
            response.sendRedirect("/Online_Voting_System-war/Admin/AddCommittee.jsp");
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
