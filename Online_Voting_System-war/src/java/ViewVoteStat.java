/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ContesterPackage.Contester;
import ContesterPackage.ContesterFacade;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/ViewVoteStat"})
public class ViewVoteStat extends HttpServlet {

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
            HttpSession session =  request.getSession();
            Contester c = contesterFacade.find((String)session.getAttribute("un"));
            String pos = c.getPname();
            Integer nv = c.getVcount();
            List<Contester> lc = contesterFacade.fSchPid(c.getSchool_id(),c.getPid());
            Integer vmax=0;
            Integer svmax=0;
            Integer tsv=0;
            for(Contester cc : lc)
            {
                tsv+=cc.getVcount();//total student votes
                if(vmax < cc.getVcount())
                {
                    svmax = vmax;
                    vmax = cc.getVcount();
                }
                if(vmax > cc.getVcount() && cc.getVcount() > svmax)
                    svmax=cc.getVcount();
            }
            Integer per;
            if(vmax == 0)
                per=50;
            else
                per=(nv*100)/tsv;              
            String status="";
            if(vmax == nv && svmax == nv) 
                status="Tie";
            else if(vmax > nv)
                status="Below by " +(vmax-nv) + " votes.";
            else 
                status="Lead by " +(vmax - svmax) + " votes.";
            System.out.print(vmax +" " + svmax); 
            session.setAttribute("value", (pos+","+nv+","+per+"'"+status));
            response.sendRedirect("/Online_Voting_System-war/Contester/ViewVoteStatus.jsp");
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
