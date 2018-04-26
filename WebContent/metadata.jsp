<jsp:useBean id="user" scope="session" class="ue1.model.User"/>
<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>metadata</title>
</head>
<body>
name: <%= ""+user.getName() %><p/>
instiution: <%= ""+user.getInstitution() %><p/>
faculty: <%= ""+user.getFaculty() %><p/>

getting metadata.....
</body>
</html>