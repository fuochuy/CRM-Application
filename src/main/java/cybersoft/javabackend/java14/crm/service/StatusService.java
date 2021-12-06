package cybersoft.javabackend.java14.crm.service;

import java.util.List;

import cybersoft.javabackend.java14.crm.entity.Status;
import cybersoft.javabackend.java14.crm.repository.StatusRepository;

public class StatusService {
private StatusRepository statusRepository;
	
	public StatusService() {
		statusRepository = new StatusRepository();
	}
	
	public List<Status> getStatus() {
		return statusRepository.getStatus();
	}
}
