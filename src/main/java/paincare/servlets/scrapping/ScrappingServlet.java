package paincare.servlets.scrapping;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import paincare.entities.ScrapedData;
import paincare.entities.UserEntity;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * Servlet implementation class ScrappingServlet
 */
public class ScrappingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScrappingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    // ...

    private String extractImageUrlFromDataSrcs(String dataSrcs) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(dataSrcs);

            // Extrait l'URL de la première clé (peut nécessiter des ajustements en fonction de votre structure JSON)
            return jsonNode.fields().next().getKey();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 // Liste pour stocker les données scrapées
				HttpSession session = request.getSession();
				UserEntity sessionUser = (UserEntity) session.getAttribute("sessionuser");
				request.setAttribute("user", sessionUser);
		List<ScrapedData> scrapedDataList = new ArrayList<>();

        // URL des pages à scraper
        String[] urls = {
        		"https://www.businessinsider.com/s?q=endometrios",
                "https://www.businessinsider.com/health",
                "https://www.dailysignal.com/?s=health",
                "https://thechalkboardmag.com/"
        };

        for (String url : urls) {
            try {
                Document doc = Jsoup.connect(url).get();

                // Ajoutez votre logique de scraping ici
                Elements articles;
                // Par exemple, récupérez les titres des articles
                if (url.equals("https://www.businessinsider.com/s?q=endometrios")){
                	articles = doc.select(".river-item");
                	
                	for (Element article : articles) {
               		 String title = article.select("h2 > a").text();
               		 String paragraphe = article.select(".tout-copy").text();
               		String date = article.select(".tout-tag span").text();
               	 String absoluteLink = article.select("h2 > a").attr("href");

 		        // Construire l'URL absolue en combinant l'URL de base et le lien relatif
 		        String relativeLink = "https://www.businessinsider.com" + absoluteLink;
               		 
               	  Element image = article.select(".tout-image-wrapper .lazy-holder img").first();
               	  
  		        String imageUrl = null ;
  		        
  		        if (image != null) {
  		            String imageSrc = image.attr("data-srcs");
  		            imageUrl = extractImageUrlFromDataSrcs(imageSrc);
  		            System.out.println("Image not found for article: " + imageUrl + date + relativeLink);

  		            // ...
  		            ScrapedData scrapedDataItem = new ScrapedData(title, paragraphe, imageUrl, relativeLink, date);
  		            scrapedDataList.add(scrapedDataItem);

  		        } else {
  		            // Gérer le cas où l'image n'est pas trouvée
  		            System.out.println("Image not found for article: " + title);
  		        }
	                }
                }
                
                if (url.equals("https://www.businessinsider.com/health")){
                	articles = doc.select(".river-item");
                	
                	for (Element article : articles) {
               		 String title = article.select("h2 > a").text();
               		 String paragraphe = article.select(".tout-copy").text();
               		String date = article.select(".tout-tag span").text();
               		 String absoluteLink = article.select("h2 > a").attr("href");

        		        // Construire l'URL absolue en combinant l'URL de base et le lien relatif
        		        String relativeLink = "https://www.businessinsider.com" + absoluteLink;

        		        Element image = article.select(".tout-image-wrapper .lazy-holder img").first();
        		        String imageUrl = null ;
        		        
        		        if (image != null) {
        		            String imageSrc = image.attr("data-srcs");
        		            imageUrl = extractImageUrlFromDataSrcs(imageSrc);

        		            // ...
        		            ScrapedData scrapedDataItem = new ScrapedData(title, paragraphe, imageUrl, relativeLink, date);
        		            scrapedDataList.add(scrapedDataItem);

        		        } else {
        		            // Gérer le cas où l'image n'est pas trouvée
        		            System.out.println("Image not found for article: " + title);
        		        }

	                }
                }
                if (url.equals("https://thechalkboardmag.com/")){
                	articles = doc.select(".pitem");
                	
                	for (Element article : articles) {
               		 String title = article.select("h2 > a").text();
               		 String paragraphe = article.select(".entry-excerpt p").text();
               		String date = article.select(".tout-tag span").text();
               		 String relativeLink = article.select(" a").attr("href");
        		        
               		Element image = article.select("a img").first();
               	 String imageUrl = article.select("a img").attr("src");
          	 
        		       ScrapedData scrapedDataItem = new ScrapedData(title, paragraphe, imageUrl, relativeLink, date);
        		       scrapedDataList.add(scrapedDataItem);
	                }
                }
                if (url.equals("https://www.dailysignal.com/?s=health")) {
                	 articles = doc.select(".slot-1");
                	 
                	 for (Element article : articles) {
                		 String title = article.select("h2 > a").text();
                		 String paragraphe = article.select("text p.byline + p").text();
                		 String date = article.select(".byline time").text();
                		 String relativeLink = article.select("a").attr("href");
                		 
                		 Element image = article.select(".tout-image-wrapper img").first();
                		 String imageUrl = image != null ? image.absUrl("src") : "N/A";

         		   
         		     ScrapedData scrapedDataItem = new ScrapedData(title, paragraphe, imageUrl, relativeLink, date);
         		    scrapedDataList.add(scrapedDataItem);
 	                }
                	
                }
              
               

                // Ajouter la liste à la portée de la requête
                request.setAttribute("scrapedDataList", scrapedDataList);

                for (ScrapedData data : scrapedDataList) {
                    System.out.println(data.getImageUrl() + data.getDate());
                }
    		    // Dispatcher vers la JSP
    		    RequestDispatcher dispatcher = request.getRequestDispatcher("/article.jsp");
    		    dispatcher.forward(request, response);
    		    
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
