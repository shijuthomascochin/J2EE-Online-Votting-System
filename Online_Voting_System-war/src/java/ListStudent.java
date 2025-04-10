/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import SchoolPackage.School;
import SchoolPackage.SchoolFacade;
import StudentPackage.Student;
import StudentPackage.StudentFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author akhil
 */
@WebServlet(urlPatterns = {"/ListStudent"})
public class ListStudent extends HttpServlet {

    @EJB
    private SchoolFacade schoolFacade;

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
            List<Student> objs = studentFacade.findAll();
            for(Student s:objs)  {
                School sc = schoolFacade.find(s.getSchool_id());
                if(s.getSchool_id().equals("Default"))
                    out.print("<tr><td>" + s.getSid()+ "</td><td>" + s.getSname()+ "</td><td>" + s.getSemail()+ "</td><td>" + s.getSphone()+ "</td><td>null</td><td>null</td><td>" + s.getSyear()+ "</td><td>" + s.getSpass()+ "</td></tr>");
                else
                    out.print("<tr><td>" + s.getSid()+ "</td><td>" + s.getSname()+ "</td><td>" + s.getSemail()+ "</td><td>" + s.getSphone()+ "</td><td>" + s.getSchool_id()+ "</td><td>" + sc.getSchool_name() + "</td><td>" + s.getSyear()+ "</td><td>" + s.getSpass()+ "</td></tr>");
            }
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
