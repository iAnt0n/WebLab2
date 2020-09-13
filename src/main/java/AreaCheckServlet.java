import model.DataModel;
import model.DataModelList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DataModel data = new DataModel(req.getParameter("x"), req.getParameter("y"), req.getParameter("r"));
        HttpSession session = req.getSession();
        DataModelList dataList = (DataModelList) session.getAttribute("dataList");
        if (dataList == null) {
            dataList = new DataModelList();
        }
        dataList.push(data);
        session.setAttribute("dataList", dataList);
        req.setAttribute("model", data);
        getServletContext().getRequestDispatcher("/result.jsp").forward(req, resp);
    }
}

