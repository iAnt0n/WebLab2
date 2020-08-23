import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AreaCheckServlet extends HttpServlet {
        private void sendAnswer(HttpServletResponse response) throws IOException {
            String answer = "<html><head></head><body><p>test</p></body></html>";
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.write(answer);
            out.close();
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
            sendAnswer(resp);
        }
    }

