/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Score;

import Entities.Score;
import Hibernate.ArchHibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Usuario
 */
public class ScoreRepository implements IScoreRepository {
    public float CalcularPromObjeto(String a, int id) {
        Session session = ArchHibernateUtil.getSessionFactory().openSession();   
        char b = a.charAt(0);
        float total=0;
        List<Score> result = session.createQuery("from score as part where part.objectType=:b and part.idObjetc=:id").setParameter("b",b).setParameter("id",id).list();
        session.close();
        if(result.size()>0)
        {
            for(int i=0;i<result.size();i++){
                total=total+result.get(i).getScore();
            }
            total=total/result.size();
            return (total);
        }
        return 0;
    }
}
