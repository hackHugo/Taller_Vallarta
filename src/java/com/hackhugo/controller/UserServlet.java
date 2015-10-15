/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hackhugo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.hackhugo.Dao.UserDao;
import com.hackhugo.model.tanque;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hackhugo
 */
public class UserServlet extends HttpServlet {

    private UserDao dao;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public UserServlet() {
        super();
        dao = new UserDao();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String forward = "";
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("listar")) {
            forward = "/tanque/index.jsp";
            request.setAttribute("tanque", dao.getAllTanque());
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        } else if (action.equalsIgnoreCase("create")) {
            forward = "/tanque/crear.jsp";
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        } else if (action.equalsIgnoreCase("edit")) {
            String userId = request.getParameter("userId");
            tanque objtanque = dao.getUserById(userId);
            request.setAttribute("tanque", objtanque);
            forward = "/tanque/editar.jsp";
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        } else if (action.equalsIgnoreCase("delete")) {
            Integer userId = Integer.parseInt(request.getParameter("tanqueId"));
            dao.deleteTanque(userId);
            HttpSession session = request.getSession();
            session.setAttribute("exito", "Tus datos se Eliminaron correctamente");
            forward = "/tanque/index.jsp";
            request.setAttribute("tanque", dao.getAllTanque());
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
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
        String forward = "";
        String action = request.getParameter("action");
        tanque tanque = new tanque();
        if (action.equalsIgnoreCase("create")) {
            tanque.setNombre_tanque(request.getParameter("nombre_tanque"));
            tanque.setColor(request.getParameter("color"));
            tanque.setVolumen(Double.parseDouble(request.getParameter("volumen")));
            dao.addTanque(tanque);
            HttpSession session = request.getSession();
            session.setAttribute("exito", "Tus datos se registraron correctamente");
            forward = "/tanque/index.jsp";
            request.setAttribute("tanque", dao.getAllTanque());
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        } else if (action.equalsIgnoreCase("update")) {
            tanque.setId_tanque(Integer.parseInt(request.getParameter("id")));
            tanque.setNombre_tanque(request.getParameter("nombre_tanque"));
            tanque.setColor(request.getParameter("color"));
            tanque.setVolumen(Double.parseDouble(request.getParameter("volumen")));
            dao.updateTanque(tanque);
            HttpSession session1 = request.getSession();
            session1.setAttribute("exito", "Tus datos se Editaron correctamente");
            forward = "/tanque/index.jsp";
            request.setAttribute("tanque", dao.getAllTanque());
            RequestDispatcher view1 = request.getRequestDispatcher(forward);
            view1.forward(request, response);
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
