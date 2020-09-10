import model.DataModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DataModel data = new DataModel(req.getParameter("x"), req.getParameter("y"), req.getParameter("r"));
        HttpSession session = req.getSession();
        ArrayList dataList = (ArrayList) session.getAttribute("data");
        if (dataList == null) {
            dataList = new ArrayList<DataModel>();
        }
        dataList.add(data);
        session.setAttribute("data", dataList);
        req.setAttribute("model", data);
        getServletContext().getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}

