Import java.io.IOException;
Import java.io.PrintWriter;
Import javax.servlet.ServletException;
Import javax.servlet.http.HttpServlet;
Import javax.servlet.http.HttpServletRequest;
Import javax.servlet.http.HttpServletResponse;
/**
*
* @author 24uad091
*/
Public classSessionServlet extends HttpServlet {
 /**
 * Processes requests for both HTTP
<code>GET</code> and <code>POST</code>
 * methods.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific
error occurs
 * @throws IOException if an I/O error occurs
 */
 Protected void
processRequest(HttpServletRequest request,
HttpServletResponse response)
 Throws ServletException, IOException {

Response.setContentType(“text/html;charset=UTF8”);
 Try (PrintWriter out = response.getWriter()) {
 String Name=request.getParameter(“Name”);
 String
Course=request.getParameter(“Course”);
 /* TODO output your page here. You may use
following sample code. */

 Out.println(“<!DOCTYPE html>”);
 Out.println(“<html>”);
 Out.println(“<head>”);
 Out.println(“<title>Servlet
SessionServlet</title>”);
 Out.println(“</head>”);
 Out.println(“<body>”);

 Out.println(“Name:”+Name+”<br>”);
 Out.println(“Course:”+Course+”<br>”);

 Out.print(“<a href=’VisitorServlet?Name=” +
Name +” &Course=” + Course+ “’>visit</a>”);
 Out.println(“</body>”);
 Out.println(“</html>”);
 }
 }

 // <editor-fold defaultstate=”collapsed”
desc=”HttpServlet methods. Click on the + sign on
the left to edit the code.”>
 /**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific
error occurs
 * @throws IOException if an I/O error occurs
 */
 @Override
 Protected void doGet(HttpServletRequest request,
HttpServletResponse response)
 Throws ServletException, IOException {
 processRequest(request, response);
 }
 /**
 * Handles the HTTP <code>POST</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific
error occurs
 * @throws IOException if an I/O error occurs
 */
 @Override
 Protected void doPost(HttpServletRequest
request, HttpServletResponse response)
 Throws ServletException, IOException {
 processRequest(request, response);
 }
 /**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
 @Override
 Public String getServletInfo() {
 Return “Short description”;
 }// </editor-fold>
}