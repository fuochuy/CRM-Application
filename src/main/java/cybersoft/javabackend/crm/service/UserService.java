package cybersoft.javabackend.crm.service;

import java.util.List;

import cybersoft.javabackend.crm.entity.User;
import cybersoft.javabackend.crm.repository.UserRepository;

public class UserService {
private UserRepository repository;
	
	public UserService() {
		repository = new UserRepository();
	}

	public List<User> getUsers() {
		
		return repository.getUsers();
	}
	public boolean updatePassword(String email, String password) {
		return repository.updatePassword(email, password) ==1 ? true :false;
	}
	public boolean addUser(User user) {
		return repository.addUser(user) == 1? true:false;
	}
	
	public boolean deleteUser(int id) {
		return repository.deleteUser(id) == 1? true:false;
	}

}
