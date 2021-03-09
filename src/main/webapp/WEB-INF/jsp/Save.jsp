<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>

            <html>

            <head>
                <title> authentication </title>
                <style>
                    .error {
                        color: red
                    }
                </style>
            </head>

            <body>
                <h1>add new contact</h1>
                <form:form action="Save" method="POST" id="saveform">

                    <label for="number">id :</label>
                    <form:input type="number" id="number" path="id" />
                    <label for="name">name :</label>
                    <form:input type="text" id="name" path="name" /><br>
                    <label for="phonenumber">PhoneNumber :</label>
                    <form:input type="text" id="phonenumber" path="PhoneNumber">
                        <form:error path="phonenumber" cssClass="error"><br>
                            <label for="male"> male :</label>
                            <form:radiobutton id="male" path="Gender" value="male" />
                            <label for="female">female :</label>
                            <form:radiobutton path="Gender" id="female" value="female" /><br>
                            <input type="submit" value="submit">
                </form:form>
                <h1>update contact</h1>
                <form:form action="update" id="updateform">
                    <label for="id">id :</label>
                    <input type="text" name="id" id="id"><br>
                    <label for="new name">new name :</label>
                    <input type="text" name="new name" id="new name" /><br>
                    <label for="new phone">new PhoneNumber :</label>
                    <input type="text" name="new phone" id="new phone">
                </form:form>

            </body>

            </html>