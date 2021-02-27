<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<html>

<head>
    <title>
        DELETE PAGE
    </title>
</head>

<body>
    <form:form action="delete" method="POST">
        <label for="id">enter contact's id :</label>
        <input type="text" name="id" >
    </form:form>
     <a href="Save.jsp">add contact or update</a>
     
</body>

</html>