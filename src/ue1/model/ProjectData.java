package ue1.model;

import java.util.List;

import ue1.api.Project;

import java.util.ArrayList;

public class ProjectData {

	private List<Project> projects = new ArrayList<>();
	
	public List<Project> getProjects() {
		return projects;
	}
	
	public void addProjects(Project project) {
		projects.add(project);
	}
	
	public int getNumberOfProjects() {
		return projects.size();
	}
	
}
