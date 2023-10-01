package ru.javarush.nikitin.quest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/quest")
public class Start extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        if (session.getAttribute("visited") == null) {
            session.setAttribute("visited", true);
            session.setAttribute("essence", Essence.BOMB);
        }

        getServletContext().getRequestDispatcher("/quest.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "bobm" -> session.setAttribute("essence", Essence.BOMB);
                case "yellow" -> session.setAttribute("essence", Essence.YELLOWWIRE);
                case "gray" -> session.setAttribute("essence", Essence.GRAYNWIRE);
                case "green" -> session.setAttribute("essence", Essence.GREENWIRE);
                case "blue" -> session.setAttribute("essence", Essence.BLUEWIRE);
                case "win" -> session.setAttribute("essence", Essence.WATHEBLUEWIRE);

            }
        }
        response.sendRedirect("quest");
    }
}