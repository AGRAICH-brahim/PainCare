package paincare.servlets.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import paincare.dao.CommentaireDao;
import paincare.dao.DAOFactory;
import paincare.dao.TestDao;
import paincare.dao.imp.CommentaireDaoImp;
import paincare.dao.imp.TestDaoImp;
import paincare.entities.CommentaireEntity;
import paincare.entities.TestEntity;
import paincare.entities.UserEntity;

import java.io.IOException;

/**
 * Servlet implementation class TestServlet
 */
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
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
		 request.getRequestDispatcher("/test_app.jsp").forward(request, response);	
		 }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	HttpSession session = request.getSession();
		
		UserEntity sessionUser = (UserEntity) session.getAttribute("sessionuser");
		 // Récupérer les valeurs du formulaire
	    String commencezregle = request.getParameter("commencezregle");
	    String cyclemenstruel = request.getParameter("cyclemenstruel");
	    String antecedentsfamiliaux = request.getParameter("antecedentsfamiliaux");
	    String accouchement = request.getParameter("accouchement");
	    String tomberenceinte = request.getParameter("tomberenceinte");
	    String poids = request.getParameter("poids");
	    String taille = request.getParameter("taille");
	    String intensiterdouleurs = request.getParameter("intensiterdouleurs");
	    String douleursabdominales = request.getParameter("douleursabdominales");
	    String douleussexuels = request.getParameter("douleussexuels");
	    String aggravevousdouleurs = request.getParameter("aggravevousdouleurs");
	    String periodemenstruelle = request.getParameter("periodemenstruelle");
	    String Naturedesperiodes = request.getParameter("Naturedesperiodes");
	    String victimesexuels = request.getParameter("victimesexuels");

	    // Calculer la somme des valeurs
	    int sum = 0;
	    String commencezregle1 = null;
	    switch (commencezregle) {
	        case "3":
	            commencezregle1 = "Avant l'âge de 11 ans";
	            break;
	        case "2":
	            commencezregle1 = "À partir de 11 ans";
	            break;
	        // Ajoutez d'autres cas au besoin
	    }
	    request.setAttribute("commencezregle1", commencezregle1);

	    // Champ 2 - Cyclemenstruel
	    if (cyclemenstruel != null) {
	        sum += Integer.parseInt(cyclemenstruel);
	        String cyclemenstruelDescription = null;
	        switch (cyclemenstruel) {
	            case "3":
	                cyclemenstruelDescription = "Moins de 27 jours";
	                break;
	            case "4":
	                cyclemenstruelDescription = "Plus de 27 jours";
	                break;
	            case "2":
	                cyclemenstruelDescription = "Je ne suis pas sûr";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("cyclemenstruelDescription", cyclemenstruelDescription);
	    }


	    // Champ 3 - Antécédents familiaux
	    if (antecedentsfamiliaux != null) {
	        sum += Integer.parseInt(antecedentsfamiliaux);
	        String antecedentsfamiliauxDescription = null;
	        switch (antecedentsfamiliaux) {
	            case "5":
	                antecedentsfamiliauxDescription = "Oui";
	                break;
	            case "1":
	                antecedentsfamiliauxDescription = "Non";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("antecedentsfamiliauxDescription", antecedentsfamiliauxDescription);
	    }

	    // Champ 4 - Accouchement
	    if (accouchement != null) {
	        sum += Integer.parseInt(accouchement);
	        String accouchementDescription = null;
	        switch (accouchement) {
	            case "1":
	                accouchementDescription = "Oui";
	                break;
	            case "0":
	                accouchementDescription = "Non";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("accouchementDescription", accouchementDescription);
	    }
	    
	 // Champ 5 - Tomber enceinte
	    if (tomberenceinte != null) {
	        sum += Integer.parseInt(tomberenceinte);
	        String tomberenceinteDescription = null;
	        switch (tomberenceinte) {
	            case "1":
	                tomberenceinteDescription = "Oui";
	                break;
	            case "0":
	                tomberenceinteDescription = "Non";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("tomberenceinteDescription", tomberenceinteDescription);
	    }

	    // Champ 6 - Poids et Taille
	    if (poids != null && taille != null) {
	        sum += Integer.parseInt(poids) + Integer.parseInt(taille);
	        // Vous pouvez faire quelque chose avec les valeurs de poids et taille si nécessaire
	        // Exemple : calculer l'IMC, etc.
	        request.setAttribute("poidsDescription", poids);
	        request.setAttribute("tailleDescription", taille);
	    }

	    // Champ 7 - Intensité des douleurs
	    if (intensiterdouleurs != null) {
	        sum += Integer.parseInt(intensiterdouleurs);
	        String intensiterdouleursDescription = null;
	        switch (intensiterdouleurs) {
	            case "1":
	                intensiterdouleursDescription = "0-2";
	                break;
	            case "2":
	                intensiterdouleursDescription = "3-5";
	                break;
	            case "3":
	                intensiterdouleursDescription = "5-8";
	                break;
	            case "4":
	                intensiterdouleursDescription = "8-10";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("intensiterdouleursDescription", intensiterdouleursDescription);
	    }
	    
	    if (douleursabdominales != null) {
	        sum += Integer.parseInt(douleursabdominales);
	    }

	    // Champ 9 - Douleurs sexuelles
	    if (douleussexuels != null) {
	        sum += Integer.parseInt(douleussexuels);
	        String douleussexuelsDescription = null;
	        switch (douleussexuels) {
	            case "1":
	                douleussexuelsDescription = "0-2";
	                break;
	            case "2":
	                douleussexuelsDescription = "3-5";
	                break;
	            case "3":
	                douleussexuelsDescription = "5-8";
	                break;
	            case "4":
	                douleussexuelsDescription = "8-10";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("douleussexuelsDescription", douleussexuelsDescription);
	    }

	    if (aggravevousdouleurs != null) {
	        sum += Integer.parseInt(aggravevousdouleurs);
	    }

	    // Champ 11 - Durée de la période menstruelle
	    if (periodemenstruelle != null) {
	        sum += Integer.parseInt(periodemenstruelle);
	        String periodemenstruelleDescription = null;
	        switch (periodemenstruelle) {
	            case "1":
	                periodemenstruelleDescription = "1 à 7 jours";
	                break;
	            case "2":
	                periodemenstruelleDescription = "Plus de 7 jours";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("periodemenstruelleDescription", periodemenstruelleDescription);
	    }

	    if (Naturedesperiodes != null) {
	        sum += Integer.parseInt(Naturedesperiodes);
	    }

	    // Champ 13 - Victime d'abus physique ou sexuel
	    if (victimesexuels != null) {
	        sum += Integer.parseInt(victimesexuels);
	        String victimesexuelsDescription = null;
	        switch (victimesexuels) {
	            case "1":
	                victimesexuelsDescription = "Oui";
	                break;
	            case "0":
	                victimesexuelsDescription = "Non";
	                break;
	            // Ajoutez d'autres cas au besoin
	        }
	        request.setAttribute("victimesexuelsDescription", victimesexuelsDescription);
	    }
	    String resultat ;
	    if (sum <= 10) {
	    	resultat = "low";
        } else if (sum <= 20) {
        	resultat =  "medium";
        } else {
        	resultat = "high";
        }
	     // Créer un objet CommentaireEntity avec les données du formulaire
	    TestEntity newTest = new TestEntity();
	    newTest.setIdUser(sessionUser.getIdUser());
	    newTest.setResultatTest(resultat);
	    testDao.saveResultatTest(newTest);
        request.setAttribute("resultat", resultat);
	    
	    request.getRequestDispatcher("confirmationtest.jsp").forward(request, response);   
	}

}
