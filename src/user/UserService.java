package user;

import dao.UserDao;

public class UserService {
    private UserDao userDAO = new UserDao();

    public void registUser(User user){
        userDAO.saveUser(user);
    }

    public User login(User user){
        return userDAO.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    public boolean existUsername(String username){
        if(userDAO.queryUserByUsername(username)==null){
            return false;
        }
        return true;
    }
}
