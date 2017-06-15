/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogic.Users;

import DataAccess.Users.IUserRepository;
import DataAccess.Users.UserRepository;
import Entities.User;

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

    @Override
    public boolean FBUserIsRegistered(String userid) {
        IUserRepository userRepo = new UserRepository();
        return userRepo.FBUserIsRegistered(userid);
    }

    @Override
    public User GetUserByFBId(String userid) {
        IUserRepository userRepo = new UserRepository();
        return userRepo.GetUserByFBId(userid);
    }

    @Override
    public void SaveUser(String userid) {
        User objUser = new User();
        objUser.setFbId(userid);
        IUserRepository userRepo = new UserRepository();
        userRepo.SaveUser(objUser);
    }
    
}
