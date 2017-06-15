/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic.Score;

import DataAccess.Score.*;

/**
 *
 * @author Usuario
 */
public class ScoreService implements IScoreService{

    @Override
    public float GetPromObject(String a, int objectId) {
        IScoreRepository scoreRepo = new ScoreRepository();
        return scoreRepo.CalcularPromObjeto(a, objectId);
    }
    
}
