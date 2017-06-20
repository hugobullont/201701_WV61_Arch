package Entities;
// Generated 19-jun-2017 21:49:30 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Mockup generated by hbm2java
 */
public class Mockup  implements java.io.Serializable {


     private Integer idMockup;
     private User user;
     private String name;
     private String description;
     private Set photos = new HashSet(0);

    public Mockup() {
    }

	
    public Mockup(User user, String name, String description) {
        this.user = user;
        this.name = name;
        this.description = description;
    }
    public Mockup(User user, String name, String description, Set photos) {
       this.user = user;
       this.name = name;
       this.description = description;
       this.photos = photos;
    }
   
    public Integer getIdMockup() {
        return this.idMockup;
    }
    
    public void setIdMockup(Integer idMockup) {
        this.idMockup = idMockup;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public Set getPhotos() {
        return this.photos;
    }
    
    public void setPhotos(Set photos) {
        this.photos = photos;
    }




}


