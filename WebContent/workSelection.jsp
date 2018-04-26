<jsp:useBean id="user" scope="session" class="ue1.model.User"/>
<jsp:useBean id="projectData" scope="session" class="ue1.model.ProjectData"/>
<%@ page import="java.util.List,ue1.api.*" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
name: <%= ""+user.getName() %><p/>
instiution: <%= ""+user.getInstitution() %><p/>
faculty: <%= ""+user.getFaculty() %><p/>

<% List<Project> projects = projectData.getProjects();%> 
There was more than one project found on your account. For which project would you like to generate a DMP?<p/>
<form action="DMP_generator_servlet" method="post">
	<fieldset>
		<legend id="workSelection">project selection</legend>
		<label for="projects">projects:</label><p/>
		 <select name="projects">
		 <% for (int i=0; i < projectData.getNumberOfProjects(); i++) {
               Project prj = projectData.get(i);%>
               <option name="project_<%= prj.getName() %>" id="answer_<%= prj.getName() %>" value="<%= prj.getName() %>""><%= prj.getName() %></option>
               <% }%>
  			<option value="volvo">Volvo</option>
		</select> 
		<input name="submit" id="projectsubmit" class="greenlink formlink clickable" type="submit" value="select this project"/>
	</fieldset>
</form>
</body>
</html>