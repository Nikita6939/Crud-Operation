<%@page import="com.example.demo.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<Student> list=(List)session.getAttribute("Student");%>
     <table>
     <thead>
     <tr>
     <th>Name</th>
     <th>Email</th>
     <th>Password</th>
     <th>Mobile Number</th>
     <th>Address</th>
     <th>Action</th>
     <tr>
     </thead>
     <tbody>
     <%for(Student s:list){ %>
      <tr>
     <td><%=s.getName()%></td>
     <td><%=s.getEmail() %></td>
     <td><%=s.getPassword() %></td>
     <td><%=s.getMobileNo() %></td>
     <td><%=s.getAddress() %></td>
     <td><a href="update?Id=<%=s.getId()%>&Name=<%=s.getName()%>&Email=<%=s.getEmail()%>&Password=<%=s.getPassword()%>&MobileNo=<%=s.getMobileNo()%>&Address=<%=s.getAddress()%>">Update</a>
     <a href="delete?Id=<%=s.getId()%>">Delete</a>
     </td>
     
    
      
     
     <tr>
      <%} %>
      
     </tbody>
     </table>
    
</body>
</html>