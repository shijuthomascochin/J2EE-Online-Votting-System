/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ContesterPackage.Contester;
import ContesterPackage.ContesterFacade;
import ElectionPackage.ElePos;
import ElectionPackage.ElePosFacade;
import SchoolPackage.School;
import SchoolPackage.SchoolFacade;
import StudentPackage.Student;
import StudentPackage.StudentFacade;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/UpdateContesterS"})
public class UpdateContesterServlet extends HttpServlet {

    @EJB
    private ContesterFacade contesterFacade1;
@EJB
    private SchoolFacade schoolFacade;
 @EJB
    private StudentFacade studentFacade;

    @EJB
    private ElePosFacade elePosFacade;

    @EJB
    private ContesterFacade contesterFacade;
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
            Student s = studentFacade.find(request.getParameter("sid"));
            Contester sco = contesterFacade.find(request.getParameter("sid"));
            School sc = schoolFacade.find((String)s.getSchool_id());
            ElePos ep = elePosFacade.find(request.getParameter("pid"));
            Integer i = sco.getVcount(); 
            Contester c = new Contester();
            c.setSid(s.getSid());
            c.setSname(s.getSname());
            c.setUname(request.getParameter("uname"));
            c.setPass(request.getParameter("pass"));
            c.setPid(ep.getPid());
            c.setPname(ep.getPname());
            c.setSchool_id(sc.getSchool_id());
            c.setSchool_name(sc.getSchool_name());
            c.setVcount(i);
            contesterFacade.edit(c);
            HttpSession session =  request.getSession();
            session.removeAttribute("con");
            response.sendRedirect("/Online_Voting_System-war/Admin/ViewContester.jsp");
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
