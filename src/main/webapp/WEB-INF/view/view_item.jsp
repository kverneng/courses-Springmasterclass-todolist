<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
<html>
<head>
    <title>Todo Items</title>
</head>
<body>
    <div align="center">
        <c:url var="viewItemUrl" value="${Mappings.ITEMS}"/>
        <h2><a href="${viewItemUrl}">Items List</a></h2>
        <table border="1" cellpadding="5">
            <caption><h2>Todo Items</h2></caption>
            <tr>
                <th>Title</th>
                <th>Details</th>
                <th>Deadline</th>
                <th>Edit>
                <th>Delete</th>
            </tr>

                <c:url var="editUrl" value="${Mappings.ADD_ITEM}">
                    <c:param name="id" value="${todoItem.id}"/>
                </c:url>

                <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}">
                    <c:param name="id" value="${todoItem.id}"/>
                </c:url>


                <tr>
                    <td><c:out value="${todoItem.title}"/></td>
                    <td><c:out value="${todoItem.deadline}"/></td>
                    <td><c:out value="${todoItem.details}"/></td>
                    <td><a href="${editUrl}">Edit</a></td>
                    <td><a href="${deleteUrl}">Delete</a></td>
                </tr>
        </table>
    </div>
</body>
</html>