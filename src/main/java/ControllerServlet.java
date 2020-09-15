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
            double x = Double.parseDouble(req.getParameter("x"));
            double y = Double.parseDouble(req.getParameter("y"));
            double r = Double.parseDouble(req.getParameter("r"));
            if ((Double.compare(x, -3.4)>0)&&(Double.compare(x, 5)<0)
                    &&(Double.compare(y, -5)>0)&&(Double.compare(y, 3.4)<0)
                    &&(r==1||r==1.5||r==2||r==2.5||r==3)){
                getServletContext().getRequestDispatcher("/area-check").forward(req, resp);
            }
            else getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
        catch (NullPointerException | NumberFormatException e){
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
}
