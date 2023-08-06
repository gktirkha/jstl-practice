<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Practice</title>
</head>
<body>
	<%--- Setting Value --%>

	<c:set value="Gautam" var="name"></c:set>
	settled name = ${name}
	<br />
	<br />

	<%--- Removing Value --%>

	<c:remove var="name" />
	${name}

	<%--- Reading Values from  parameters --%>
	Reading Values from parameters = ${param.msg}
	<br />
	<br />

	<%--- Using bean --%>

	<jsp:useBean id="user" class="in.gt.User" />
	name from bean = ${user.firstName}

	<br />
	<br />

	<%--- Decision Making --%>
	<%--- Decision Making IF --%>

	<c:if test="${param.name != Null}">
	inside if statement (true case)
	${param.name}
	<br />
		<br />
	</c:if>

	<%--- Decision Making Choose --%>

	<c:choose>

		<c:when test="${param.name == 'gautam'}">
		inside choose statement (name = ${param.name})
            Hello Master
         </c:when>

		<c:when test="${param.name != Null}">
		inside choose statement (name = param.name)
            Hello ${param.name}
         </c:when>

		<%--- Default Case--%>

		<c:otherwise>
			<br />
		inside otherwise case
		
		</c:otherwise>
	</c:choose>



	<%--- Loops--%>
	<%--- only For Each Loop as for loop --%>

	<br />
	<br /> from for each loop as for loop:
	<c:forEach begin="0" end="10" var="i" step="2">
		<br />
	${i} 
	</c:forEach>

	<%--- only For Each Loop as for each loop --%>
	<%--- Declaring an array --%>
	<%
	String[] namesArray = new String[3];
	namesArray[0] = "Gautam";
	namesArray[1] = "Chirag";
	namesArray[2] = "Rahul";
	%>
	<br />
	<br /> from for each loop:
	<c:forEach items="<%=namesArray%>" var="i">
		<br />
	${i} 
	</c:forEach>

	<%--- For Tokens --%>
	<br />
	<br /> from for tokens:
	<%!String url = "www.gtirkha.in.xyz";%>
	<c:forTokens items="<%=url%>" delims="." var="i">
		<br />
	${i}
	</c:forTokens>
	<br />
	<br />

	<%--- Catch Tag --%>
	<c:catch var="myEx">
		<%=0 / 0%>
	</c:catch>
	exception from catch tag: ${myEx}



</body>
</html>