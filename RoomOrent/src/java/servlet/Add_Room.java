/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.RoomDao;
import databaseoperation.ConnectionProvider;
import dataset.User;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Mr.NoBoDY
 */
@MultipartConfig
public class Add_Room extends HttpServlet {

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
            
            RoomDao rdao=new RoomDao(ConnectionProvider.getConnection());
            String addresline1=request.getParameter("addressline_1");
            String addresline2=request.getParameter("addressline_2");
            String state=request.getParameter("state");
            String district=request.getParameter("district");
            String pincode=request.getParameter("pincode");
            String dimensionw=request.getParameter("dimension-w");
            String dimensionh=request.getParameter("dimension-h");
            String bathroom=request.getParameter("bathroom");
            String fan=request.getParameter("fan");
            String bed=request.getParameter("bed");
            String rentdemand=request.getParameter("rentdemand");
            String image1=request.getParameter("image_1");
            String image2=request.getParameter("image_2");
            String image3=request.getParameter("image_3");
            
            HttpSession s=request.getSession();
            User u=(User)s.getAttribute("currentUser");
            int ownerid=u.getUid();
//            out.println(addresline1); 
//            out.println(addresline2);
//            out.println(state);
//            out.println(district); 
//            out.println(pincode);
//            out.println(dimensionw); 
//            out.println(dimensionh);
//            out.println(bathroom);
//            out.println(fan);
//            out.println(bed);
//            out.println(rentdemand);
//            out.println(image1);
//            out.println(image2);
//            out.println(image3);
//            out.println(ownerid);
            if(rdao.saveRoom(addresline1, addresline2, state, district, pincode, dimensionw, dimensionh, bathroom, fan, bed, rentdemand, image1, image2, image3,ownerid))
            {
                out.println("done");
                
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
            Logger.getLogger(Add_Room.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Add_Room.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Add_Room.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Add_Room.class.getName()).log(Level.SEVERE, null, ex);
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
