package meinservletpackage;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/HelloServlet")
public class MeinErstesServlet extends HttpServlet
{
   static final long serialVersionUID = 1L;

   @Override
   public void doGet( HttpServletRequest requ, HttpServletResponse resp )
   throws ServletException, IOException
   {
      resp.setContentType( "text/html" );
      PrintWriter out = resp.getWriter();
      out.println( "<html>" );
      out.println( "<h3> Hallo, mein erstes Servlet meldet sich </h3>" );
      out.println( "<a href='/MyFirstProject/'>zur&uuml;ck</a>" );
      out.println( "</html>" );
      out.close();
   }
}