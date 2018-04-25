<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DMP-Generator</title>
</head>
<body>
<h1>DMP-Generator for finished projects</h1>
Enter your name or your ORCID-ID:<p/>
<form
  action="DMP_generator_servlet"
  method="post">
  
	<input type="text" name="ORCID_name" value="your name" size=50% maxlength=255><p/>
	<input type="text" name="ORCID_ID" value="your ORCID ID" size=50% maxlength=255><p/>

<input type="submit" value="look up my data">
</form>

<form action="DMP_generator_servlet" method="post">
                    <fieldset>
                        <legend id="logindata">Login</legend>
                        <label for="username">Benutzername:</label>
                        <input name="username" id="username" type="text" required="required"/>
                        <label for="password">Passwort:</label>
                        <input name="password" id="password" type="password" required="required"/>
                        <input name="login" id="loginsubmit" class="greenlink formlink clickable" type="submit" value="Anmelden"/>
                    </fieldset>
                    </form>
</body>
</html>