/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.RoomDao;
import databaseoperation.ConnectionProvider;
import helper.FileOperation;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Mr.NoBoDY
 */
@MultipartConfig
public class addroompic extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Part part=request.getPart("pic-1");
            String pic1=part.getSubmittedFileName();
            Part part1=request.getPart("pic-2");
            String pic2=part1.getSubmittedFileName();
            Part part2=request.getPart("pic-3");
            String pic3=part2.getSubmittedFileName();
            int id=Integer.parseInt(request.getParameter("rid"));
            RoomDao rdo=new RoomDao(ConnectionProvider.getConnection());
            if(rdo.updatepictures(pic1,pic2,pic3,id))
            {
                out.println("done");
                String pic_1=request.getRealPath("/")+"roompic"+File.separator+pic1;
                String pic_2=request.getRealPath("/")+"roompic"+File.separator+pic2;
                String pic_3=request.getRealPath("/")+"roompic"+File.separator+pic3;
                if(FileOperation.moveFile(part.getInputStream(),pic_1)&&FileOperation.moveFile(part1.getInputStream(),pic_2)&&FileOperation.moveFile(part2.getInputStream(),pic_3))
                {
                    out.println("done server upload");
                }
                
            }
            else
            { 
                out.println("Something went wrong");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addroompic.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addroompic.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addroompic.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addroompic.class.getName()).log(Level.SEVERE, null, ex);
        }
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
