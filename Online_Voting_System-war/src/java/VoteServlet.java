/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import ContesterPackage.Contester;
import ContesterPackage.ContesterFacade;
import ElectionPackage.ElePos;
import ElectionPackage.ElePosFacade;
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
@WebServlet(urlPatterns = {"/VoteServlet"})
public class VoteServlet extends HttpServlet {

    @EJB
    private ElePosFacade elePosFacade;

    @EJB
    private StudentFacade studentFacade;

    @EJB
    private VoteFacade voteFacade;

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
            String user;
            user = (String)session.getAttribute("un");
            Student st = studentFacade.find(user);
            System.out.print("School ID: "+st.getSchool_id());
            List<Contester> con = contesterFacade.findSchool(st.getSchool_id());
            List<String> ops = new ArrayList<String>();
            List<String> opsid = new ArrayList<String>();
            List<String> opsid1 = new ArrayList<String>();
            if(con.isEmpty())
            { 
                session.setAttribute("empty", "yes");
            }
            else
            {
                session.setAttribute("empty", "no");
                for(Contester con1 : con)
                {
                    if(!opsid1.contains(con1.getPid()))
                        opsid1.add(con1.getPid());
                }
                // opsid has unique PID's / positions
                for(String opss: opsid1)
                {
                    if(!voteFacade.findV(user,opss)) //student SID and Position PID
                        opsid.add(opss); //removing the position if already voted.
                }
                if(opsid.isEmpty())
                    session.setAttribute("empty", "yes");
                else
                {
                    for(String opss: opsid)
                    {
                        for(Contester c1: con)
                        {
                            if(c1.getPid().equals(opss)) //if PID in contester = Unused PID then add; 
                            {
                                String vd = elePosFacade.gVd(c1.getPid());
                                ops.add(c1.getSid()+","+c1.getSname()+","+c1.getPid()+","+c1.getPname()+"'"+vd);
                            }
                        }
                    }
                }                    
                session.setAttribute("opsid", opsid);
                session.setAttribute("ops", ops);
            }
            response.sendRedirect("/Online_Voting_System-war/Student/Vote.jsp");
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
