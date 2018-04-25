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
<form action="DMP_generator_servlet" method="post">
                    <fieldset>
                        <legend id="logindata">get my data</legend>
                        <label for="username">name:</label><p/>
                        <input name="ORCIDname" id="ORCIDname" type="text" size=50% value="your name"/><p/>
                        <label for="password">ORCID ID:</label><p/>
                        <input name="ORCIDID" id="ORCIDID" type="text"size=50% value="your ORCID ID"/><p/>
                        <input name="login" id="loginsubmit" class="greenlink formlink clickable" type="submit" value="look up data"/>
                    </fieldset>
                    </form>
</body>
</html>