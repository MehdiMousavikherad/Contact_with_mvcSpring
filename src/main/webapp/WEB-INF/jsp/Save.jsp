<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>

            <html>

            <head>
                <title> authentication </title>
            </head>

            <body>
                <h1>add new contact</h1>
                <form:form action="Save" method="POST" id="save">
                    
                <label for=""></label>
                    <form:input type="number" id="numvber" path="id" />
                    Name :
                    <form:input type="text" path="name" /><br>
                    PhoneNumber : <form:input type="text" path="PhoneNumber"><br>
                        Male
                        <form:radiobutton path="Gender" value="male" />
                        Female
                        <form:radiobutton path="Gender" value="female" /><br>
                        <input type="submit" value="submit">
                </form:form>
<form action=""></form>
            </body>

            </html>