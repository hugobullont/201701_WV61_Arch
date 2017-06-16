/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Blueprints;

import Entities.Blueprint;
import Hibernate.ArchHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Usuario
 */
public class BlueprintsRepository implements IBlueprintsRepository{

    @Override
    public void SaveBlueprint(Blueprint objBlueprint) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(objBlueprint);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void UpdateBlueprint(Blueprint objBlueprint) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(objBlueprint);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Blueprint> GetAllBlueprints() {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Blueprint> blueprints = (List<Blueprint>)session.createQuery("FROM Blueprint").list();
        session.close();
        return blueprints;
    }

    @Override
    public List<Blueprint> GetBlueprintsByString(String search) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Blueprint> GetBlueprintsByUserId(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
