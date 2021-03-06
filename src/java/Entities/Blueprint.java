package Entities;
// Generated 03-jul-2017 14:58:13 by Hibernate Tools 4.3.1



/**
 * Blueprint generated by hbm2java
 */
public class Blueprint  implements java.io.Serializable {


     private Integer idBlueprint;
     private User user;
     private byte[] blueprintFile;
     private String name;
     private String description;
     private String fileType;

    public Blueprint() {
    }

    public Blueprint(User user, byte[] blueprintFile, String name, String description, String fileType) {
       this.user = user;
       this.blueprintFile = blueprintFile;
       this.name = name;
       this.description = description;
       this.fileType = fileType;
    }
   
    public Integer getIdBlueprint() {
        return this.idBlueprint;
    }
    
    public void setIdBlueprint(Integer idBlueprint) {
        this.idBlueprint = idBlueprint;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public byte[] getBlueprintFile() {
        return this.blueprintFile;
    }
    
    public void setBlueprintFile(byte[] blueprintFile) {
        this.blueprintFile = blueprintFile;
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
    public String getFileType() {
        return this.fileType;
    }
    
    public void setFileType(String fileType) {
        this.fileType = fileType;
    }




}


