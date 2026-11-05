package service;

import dao.UserRepository;
import entity.User;

public class UserService {

    private UserRepository userRepository=new UserRepository();

    public void register(User user){
        userRepository.addUser(user);
    }
    public User login(String username, String password){
        User user= userRepository.findByUserName(username);
        if(user!=null && user.getPassword().equals(password)){
            return user;
        }
        return null;
    }
}
