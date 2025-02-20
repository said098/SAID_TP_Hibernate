package servlet;

import dao.AnnonceDAO;
import modeles.Annonce;

import java.io.IOException;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AnnonceAdd")
public class AnnonceAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String adress = request.getParameter("adress");
        String mail = request.getParameter("mail");

        Annonce annonce = new Annonce(0, title, description, adress, mail, new Timestamp(System.currentTimeMillis()));

        AnnonceDAO dao = new AnnonceDAO();
        dao.insert(annonce);

        response.sendRedirect("AnnonceList.jsp");
    }
}
