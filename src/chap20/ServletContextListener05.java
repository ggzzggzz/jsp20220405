package chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener05
 *
 */
@WebListener
public class ServletContextListener05 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener05() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
        
    	ServletContext application = sce.getServletContext();
    	String contextPath = application.getContextPath();
    	
    	application.setAttribute("appRoot", contextPath);
    }
	
}
