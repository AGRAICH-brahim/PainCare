package paincare.entities;

import java.sql.Timestamp;
import java.util.Base64;
import java.util.List;

public class BlogEntity {

	private int id;
	private int user_id;
	private String title;
	private String description;
	private byte[] image; // Content of the photo as bytes
	private Timestamp date;
	private String username;
    private List<CommentaireEntity> commentaires; // Nouveau champ pour les commentaires
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	 public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	  public List<CommentaireEntity> getCommentaires() {
	        return commentaires;
	    }

	    public void setCommentaires(List<CommentaireEntity> commentaires) {
	        this.commentaires = commentaires;
	    }
	public String getBase64EncodedContent() {
	        if (image != null) {
	            return Base64.getEncoder().encodeToString(image);
	        } else {
	            return null;
	        }
	    }
}
