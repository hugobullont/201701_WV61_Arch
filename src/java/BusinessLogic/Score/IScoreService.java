/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic.Score;

import Entities.Score;
import Entities.User;

/**
 *
 * @author Usuario
 */
public interface IScoreService {
    public float GetPromObject(String a, int objectId);
    public void SaveScore(User objUser, int score, String objType, int objId);
    public void SaveScore(Score objScore);
}
