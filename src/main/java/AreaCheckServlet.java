import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AreaCheckServlet extends HttpServlet {
        private boolean calculate(String sx, String sy, String sr){
            BigDecimal x = new BigDecimal(sx);
            BigDecimal y = new BigDecimal(sy);
            BigDecimal r = new BigDecimal(sr);
            if (x.compareTo(BigDecimal.ZERO) <= 0 && x.compareTo(r.negate()) >= 0
                    && y.compareTo(BigDecimal.ZERO) >= 0 && y.compareTo(r.divide(BigDecimal.valueOf(2))) <= 0) {
                return true;
            }
            if (x.compareTo(BigDecimal.ZERO) <= 0 && y.compareTo(BigDecimal.ZERO) <= 0
                    && (x.pow(2).add(y.pow(2))).compareTo(r.pow(2)) <= 0) {
                return true;
            }
            if (x.compareTo(BigDecimal.ZERO) >= 0 && y.compareTo(BigDecimal.ZERO) >= 0
                    && y.compareTo(x.multiply(BigDecimal.valueOf(-2)).add(r)) <= 0) {
                return true;
            }
            return false;
        }



        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
            long start = System.nanoTime();
            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String requestTime = df.format(new Date());
            String x = req.getParameter("x");
            String y = req.getParameter("y");
            String r = req.getParameter("r");
            boolean res = calculate(x,y,r);
            long compTime = System.nanoTime()-start;

            out.println("<html>");
            out.println("<head>");
            out.println("<title>WebLab2</title>");
            out.println("<link href=\"style.css\" rel=\"stylesheet\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<header>\n" +
                    "    <table id=\"header-table\">\n" +
                    "        <tbody>\n" +
                    "        <tr>\n" +
                    "            <td class=\"left-header\">\n" +
                    "                Лабораторная работа №1 по веб-программированию\n" +
                    "            </td>\n" +
                    "            <td class=\"right-header\">\n" +
                    "                Кораблин Антон\n" +
                    "            </td>\n" +
                    "        </tr>\n" +
                    "        <tr>\n" +
                    "            <td class=\"left-header\">\n" +
                    "                Вариант 2614\n" +
                    "            </td>\n" +
                    "            <td class=\"right-header\">\n" +
                    "                P3230\n" +
                    "            </td>\n" +
                    "        </tr>\n" +
                    "        </tbody>\n" +
                    "    </table>\n" +
                    "</header>");
            out.println("<table id=\"result-table\">\n" +
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
                    x +
                    "</td>" +
                    "<td>" +
                    y +
                    "</td>" +
                    "<td>" +
                    r +
                    "</td>" +
                    "<td>" +
                    res +
                    "</td>" +
                    "<td>" +
                    requestTime +
                    "</td>" +
                    "<td>" +
                    compTime +" ns" +
                    "</td>" +
                    "</tr>" +
                    "        </tbody>\n" +
                    "    </table>");

            out.println("</body>");
            out.println("</html>");
            out.close();
        }
    }

