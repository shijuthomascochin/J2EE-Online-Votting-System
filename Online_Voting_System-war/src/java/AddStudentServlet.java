/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@WebServlet(urlPatterns = {"/Online_Voting_System-war/AddStudentServlet"})
public class AddStudentServlet extends HttpServlet {

    @EJB
    private StudentFacade studentFacade;

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
            int x = Integer.parseInt(request.getParameter("type"));
            String sid = request.getParameter("sid");
            String sname = request.getParameter("sname");
            String semail = request.getParameter("semail");
            String sphone = request.getParameter("sphone");
            String school_id = request.getParameter("schid");
            String syear = request.getParameter("syear");
            String spass = request.getParameter("spass");
            Student s = new Student();
            s.setSid(sid);
            s.setSname(sname);
            s.setSemail(semail);
            s.setSphone(sphone);
            s.setSchool_id(school_id);
            s.setSyear(syear);
            s.setSpass(spass);
            studentFacade.create(s);
            HttpSession session =  request.getSession();
            session.removeAttribute("sid");
            session.removeAttribute("school");
            if(x == 0)
                response.sendRedirect("/Online_Voting_System-war/Admin/ViewStudent.jsp");
            else    
                response.sendRedirect("/Online_Voting_System-war/index.jsp");
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
