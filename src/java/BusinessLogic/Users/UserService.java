/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic.Users;

import DataAccess.Users.IUserRepository;
import DataAccess.Users.UserRepository;

/**
 *
 * @author Usuario
 */
public class UserService implements IUserService {

    @Override
    public String GetNameByUserId(String userid, String accessToken) {
        IUserRepository userRepo = new UserRepository();
        return userRepo.GetNameByUserId(userid, accessToken);
    }
    
}
