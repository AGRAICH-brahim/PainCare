package paincare.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import paincare.dao.DAOFactory;
import paincare.dao.TestDao;
import paincare.dao.imp.TestDaoImp;
import paincare.entities.TestEntity;
import paincare.entities.UserEntity;

import java.io.IOException;

/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  private TestDao testDao;
    
    public void init() throws ServletException {
        DAOFactory daoFactory = DAOFactory.getInstance();
        this.testDao = new TestDaoImp(daoFactory);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		UserEntity sessionUser = (UserEntity) session.getAttribute("sessionuser");
		TestEntity resultat = testDao.afficherDernierResultatTestByIdUser(sessionUser.getIdUser());
	        request.setAttribute("resultat", resultat);
		request.setAttribute("user", sessionUser);
		System.out.println(sessionUser.getIdUser());
		request.getRequestDispatcher("/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
