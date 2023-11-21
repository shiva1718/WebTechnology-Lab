public class PostParam extends GenericServlet {
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getParameterNames();
    }

}