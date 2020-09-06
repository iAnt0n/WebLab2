import model.DataModel;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class AreaCheckServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            DataModel data = new DataModel(req.getParameter("x"), req.getParameter("y"), req.getParameter("r"));
            HttpSession session = req.getSession();
            ArrayList dataList = (ArrayList) session.getAttribute("data");
            if (dataList==null){
                dataList = new ArrayList<DataModel>();
            }
            dataList.add(data);
            session.setAttribute("data", dataList);
            out.println("<html lang=\"en\">\n" +
                            "<head>\n" +
                            "    <meta charset=\"UTF-8\">\n" +
                            "    <title>WebLab2</title>\n" +
                            "    <link href=\"style.css\" rel=\"stylesheet\">\n" +
                            "</head>\n" +
                            "<body>\n" +
                            "<header>\n" +
                            "    <div class=\"content\">\n" +
                            "            Лабораторная работа №2 по веб-программированию <br>\n" +
                            "            Вариант 2631\n" +
                            "    </div>\n" +
                            "    <div class=\"text-box-right content\">\n" +
                            "            Кораблин Антон <br>\n" +
                            "            P3230\n" +
                            "    </div>\n" +
                            "</header>");
            out.println("<section class=\"result-table\">" +
                    "<table id=\"result-table\">\n" +
                    "        <thead>\n" +
                    "        <tr id=\"result-header\">\n" +
                    "            <th>\n" +
                    "                X\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Y\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                R\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Result\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Time of request\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Computation time\n" +
                    "            </th>\n" +
                    "        </tr>\n" +
                    "        </thead>\n" +
                    "        <tbody id=\"result-rows\">\n" +
                    "<tr>"+
                    "<td>" +
                    data.getX() +
                    "</td>" +
                    "<td>" +
                    data.getY() +
                    "</td>" +
                    "<td>" +
                    data.getR() +
                    "</td>" +
                    "<td>" +
                    data.isResult() +
                    "</td>" +
                    "<td>" +
                    data.getReqTime() +
                    "</td>" +
                    "<td>" +
                    data.getCompTime() +" ns" +
                    "</td>" +
                    "</tr>" +
                    "        </tbody>\n" +
                    "    </table>"+
                    "<form action=\"\" method=\"get\">" +
                    "<input type=\"submit\" value=\"Return\" class=\"content submit-button\">" +
                    "</form>" +
                    "</section>");
            out.println("</body>");
            out.println("</html>");
            out.close();
        }
    }

