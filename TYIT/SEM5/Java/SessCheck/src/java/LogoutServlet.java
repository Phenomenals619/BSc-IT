
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Servlet LogoutServlet</title></head>");
        out.println("<body>");
        javax.servlet.http.HttpSession hs = request.getSession();
        if (hs != null) {
            hs.invalidate();
        }
        out.println("<h1>You are Logged out now........</h1>");
        out.println("</body>");
        out.println("</html>");
    }
}
