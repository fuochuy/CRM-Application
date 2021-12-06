package cybersoft.javabackend.java14.crm.service;

import java.util.List;

import cybersoft.javabackend.java14.crm.entity.Role;
import cybersoft.javabackend.java14.crm.repository.RoleRepository;

public class RoleService {
	private RoleRepository roleRepository;
	
	public RoleService() {
		roleRepository = new RoleRepository();
	}
	
	public List<Role> getRole() {
		return roleRepository.getRole();
	}
	
}
