package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dao.ReplyDao;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyRemoveServlet
 */
@WebServlet("/reply/delete")
public class ReplyRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String boardId = request.getParameter("boardId");
		
		ReplyDto dto = new ReplyDto();
		dto.setId(Integer.parseInt(id));
		dto.setBoardId(Integer.parseInt(boardId));
		
		ReplyDao dao = new ReplyDao();
		
		boolean success = false;
		try(Connection con = ds.getConnection()) {
			 success = dao.delete(con, dto);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String location = request.getContextPath() + "/board/get?id=" + dto.getBoardId();
		
		response.sendRedirect(location);
		
	}

}
