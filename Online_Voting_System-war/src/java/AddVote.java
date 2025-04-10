/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ContesterPackage.Contester;
import ContesterPackage.ContesterFacade;
import VotePackage.Vote;
import VotePackage.VoteFacade;
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
@WebServlet(urlPatterns = {"/AddVote"})
public class AddVote extends HttpServlet {

    @EJB
    private ContesterFacade contesterFacade;

    @EJB
    private VoteFacade voteFacade;

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
            HttpSession session =  request.getSession();
            String sid = request.getParameter("sid");
            String pid = request.getParameter("pid");            
            Contester con = contesterFacade.find(sid);
            Integer i = con.getVcount();
            Contester c = new Contester();
            c.setSid(con.getSid());
            c.setSname(con.getSname());
            c.setUname(con.getUname());
            c.setPass(con.getPass());
            c.setPid(con.getPid());
            c.setPname(con.getPname());
            c.setSchool_id(con.getSchool_id());
            c.setSchool_name(con.getSchool_name());
            c.setVcount(++i);
            contesterFacade.edit(c);
            Vote v = new Vote();
            v.setPid(pid);
            v.setSid((String)session.getAttribute("un"));
            voteFacade.create(v);            
            session.removeAttribute("empty");
            session.removeAttribute("ops");
            session.removeAttribute("opsid");
            response.sendRedirect("/Online_Voting_System-war/Student/Home.jsp");
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
