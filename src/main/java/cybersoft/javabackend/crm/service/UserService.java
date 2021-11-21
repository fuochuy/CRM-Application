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

}
