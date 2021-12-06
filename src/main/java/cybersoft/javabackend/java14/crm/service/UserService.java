package cybersoft.javabackend.java14.crm.service;

import java.util.List;

import cybersoft.javabackend.java14.crm.entity.User;
import cybersoft.javabackend.java14.crm.repository.ProjectRepository;
import cybersoft.javabackend.java14.crm.repository.UserRepository;

public class UserService {
	private UserRepository userRepository;
	
	public UserService() {
		userRepository = new UserRepository();
	}
	
	public List<User> getUser() {
		return userRepository.getUser();
	}
	
	public boolean insertUser(User user) {
		for(User object : getUser()) {
			if(object.getEmail().equals(user.getEmail())) {
				return false;
			}
		}
		return userRepository.insertUser(user) == 1 ? true : false;
	}
	
	public User findOneByUserId(int id) {
		return userRepository.getUserById(id);
	}
	
	public List<User> findByRoleId(int roleId) {
		return userRepository.findByRoleId(roleId);
	}
	
	public User updateUser(User user) {
		return userRepository.updateUser(user) == 1 ? findOneByUserId(user.getId()) : null;
	}
	
	public boolean deleteUser(int id) {
		ProjectRepository projectRepository = new ProjectRepository();
		projectRepository.deleteByCreateBy(id);
		return userRepository.deleteUser(id) == 1 ? true : false;
	}
	
	public User checkLogIn(String email, String password) {
		return userRepository.checkLogIn(email, password);
	}
	
}
