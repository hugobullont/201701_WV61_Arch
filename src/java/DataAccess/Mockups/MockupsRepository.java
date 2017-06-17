/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Mockups;

import Entities.Mockup;
import Hibernate.ArchHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Hugo
 */
public class MockupsRepository implements IMockupsRepository{

    @Override
    public void SaveMockup(Mockup objMockup) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(objMockup);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void UpdateMockup(Mockup objMockup) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(objMockup);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Mockup> GetAllMockups() {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Mockup> mockups = (List<Mockup>)session.createQuery("FROM Mockup").list();
        session.close();
        return mockups;
    }

    @Override
    public List<Mockup> GetMockupsByString(String search) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        int len=search.length();
        List<Mockup> mockups = (List<Mockup>)session.createQuery("FROM Mockup a us where SUBSTRING(us.name, 0, :len)=:search").setParameter("len", len).setParameter("search", search).list();
        session.close();
        return mockups;
    }

    @Override
    public List<Mockup> GetMockupsByUserId(int userId) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Mockup> mockups = (List<Mockup>)session.createQuery("FROM Mockup a us where us.user.idUser=:userId join fetch us.user").setParameter("userId",userId).list();
        session.close();
        return mockups;
    }
    
}
