import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Double x = Double.parseDouble(req.getParameter("x"));
            Double y = Double.parseDouble(req.getParameter("y"));
            Double r = Double.parseDouble(req.getParameter("r"));
            getServletContext().getRequestDispatcher("/area-check").forward(req, resp);
        }
        catch (NullPointerException | NumberFormatException e){
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
}
