package Entities;
// Generated 14-jun-2017 17:57:46 by Hibernate Tools 4.3.1



/**
 * Photo generated by hbm2java
 */
public class Photo  implements java.io.Serializable {


     private int idPhoto;
     private Mockup mockup;
     private byte[] file;

    public Photo() {
    }

    public Photo(int idPhoto, Mockup mockup, byte[] file) {
       this.idPhoto = idPhoto;
       this.mockup = mockup;
       this.file = file;
    }
   
    public int getIdPhoto() {
        return this.idPhoto;
    }
    
    public void setIdPhoto(int idPhoto) {
        this.idPhoto = idPhoto;
    }
    public Mockup getMockup() {
        return this.mockup;
    }
    
    public void setMockup(Mockup mockup) {
        this.mockup = mockup;
    }
    public byte[] getFile() {
        return this.file;
    }
    
    public void setFile(byte[] file) {
        this.file = file;
    }




}


