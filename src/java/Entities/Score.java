package Entities;
// Generated 03-jul-2017 14:58:13 by Hibernate Tools 4.3.1



/**
 * Score generated by hbm2java
 */
public class Score  implements java.io.Serializable {


     private Integer idScore;
     private User user;
     private int score;
     private String objectType;
     private int idObject;

    public Score() {
    }

    public Score(User user, int score, String objectType, int idObject) {
       this.user = user;
       this.score = score;
       this.objectType = objectType;
       this.idObject = idObject;
    }
   
    public Integer getIdScore() {
        return this.idScore;
    }
    
    public void setIdScore(Integer idScore) {
        this.idScore = idScore;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public int getScore() {
        return this.score;
    }
    
    public void setScore(int score) {
        this.score = score;
    }
    public String getObjectType() {
        return this.objectType;
    }
    
    public void setObjectType(String objectType) {
        this.objectType = objectType;
    }
    public int getIdObject() {
        return this.idObject;
    }
    
    public void setIdObject(int idObject) {
        this.idObject = idObject;
    }




}


