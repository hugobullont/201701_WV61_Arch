/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Score;

import Entities.Score;

/**
 *
 * @author Usuario
 */
public interface IScoreRepository {
    public float CalcularPromObjeto(String a, int id);
    public void SaveScore(Score objScore);
}
