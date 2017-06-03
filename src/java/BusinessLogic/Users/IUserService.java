/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic.Users;

/**
 *
 * @author Usuario
 */
public interface IUserService {
    public String GetNameByUserId(String userid, String accessToken);
}
