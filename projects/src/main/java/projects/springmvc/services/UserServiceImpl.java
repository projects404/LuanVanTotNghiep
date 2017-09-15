package projects.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import projects.springmvc.dao.UserDao;
import projects.springmvc.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	public List<User> listUser() {
		return userDao.listUser();
	}

	public void add(User user) {
		userDao.add(user);		
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(User user) {
		userDao.delete(user);
	}

	public User findUserById(String id) {
		return userDao.findUserById(id);
	}

}
