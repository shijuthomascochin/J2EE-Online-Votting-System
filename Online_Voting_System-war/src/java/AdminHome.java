/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CommitteePackage.CommitteeFacade;
import ContesterPackage.ContesterFacade;
import ElectionPackage.ElePos;
import ElectionPackage.ElePosFacade;
import SchoolPackage.School;
import SchoolPackage.SchoolFacade;
import StudentPackage.Student;
import StudentPackage.StudentFacade;
import VotePackage.Vote;
import VotePackage.VoteFacade;
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
@WebServlet(urlPatterns = {"/AdminHome"})
public class AdminHome extends HttpServlet {

    @EJB
    private VoteFacade voteFacade;
    
    @EJB
    private SchoolFacade schoolFacade;
    
    @EJB
    private ContesterFacade contesterFacade;
    
    @EJB
    private ElePosFacade elePosFacade;

    @EJB
    private CommitteeFacade committeeFacade;

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
            int stno = studentFacade.findAll().size();
            List<School> sc = schoolFacade.findAll();
            int scno = sc.size();
            ArrayList<String> scnol = new ArrayList<String>();
            for(School scc : sc)
                scnol.add(scc.getSchool_name()+","+studentFacade.fNoStd(scc.getSchool_id()));
            List<ElePos> ep = elePosFacade.findAll();
            int epno = ep.size();
            ArrayList<String> epnames = new ArrayList<String>();
            ep.forEach((ep1) -> {
                epnames.add(ep1.getPname());
            });
            int cono = contesterFacade.findAll().size();
            int comno = committeeFacade.findAll().size();
            String sval = stno+","+scno+","+epno+","+comno+","+cono;
            HttpSession session = request.getSession(); 
            session.setAttribute("sval", sval);
            session.setAttribute("scnol", scnol);
            session.setAttribute("epnames", epnames);
            if(((String)session.getAttribute("un")).equals("admin"))
                response.sendRedirect("/Online_Voting_System-war/Admin/Home.jsp");
            else
            {
                List<Vote> vo = voteFacade.findAll();
                ArrayList<String> vn = new ArrayList<String>();
                for(Vote v: vo)
                {
                    if(!vn.contains(v.getSid()))
                        vn.add(v.getSid());
                }
                session.setAttribute("vno", ""+vn.size());
                response.sendRedirect("/Online_Voting_System-war/Committee/Home.jsp");
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
