/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Photos;

import Entities.Photo;
import Hibernate.ArchHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Usuario
 */
public class PhotosRepository implements IPhotosRepository{

    @Override
    public List<Photo> GetPhotosByMockupId(int mockupId) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Photo> photos = (List<Photo>) session.createQuery("FROM Photo as pht where pht.mockup.idMockup ="+ mockupId).list();
        session.close();
        return photos;
    }

    @Override
    public Photo GetFirstPhotoByMockupId(int mockupId) {
        List<Photo> allPhotos = this.GetPhotosByMockupId(mockupId);
        return allPhotos.get(0);
    }

    @Override
    public void SavePhoto(Photo objPhoto) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(objPhoto);
        session.getTransaction().commit();
        session.close();
    }
    
}
