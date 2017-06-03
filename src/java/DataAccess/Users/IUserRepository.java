/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess.Users;

/**
 *
 * @author Usuario
 */
public interface IUserRepository {
    public String GetNameByUserId(String userid, String accessToken);
}
