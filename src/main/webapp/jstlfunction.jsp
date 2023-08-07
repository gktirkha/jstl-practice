
<%@page import="java.util.Calendar"%>
<%request.setAttribute("title", "Jstl Functions Page");%>
<%@include file="include/header.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- reading length of string --%>
output from length function ${fn:length("wwww.gtirkha.in")}
<br />
<br />

<%-- reading length of complex data structure --%>
<%String[] names = { "Gautam", "Chirag", "Rahul" };%>
<c:set var="arr" value="<%=names%>" />
len of array ${fn:length(arr)}
<br />
<br />


<%-- trim function --%>
${fn:trim("            www.google.com            ")}
<br />
<br />

<%-- escape HTML --%>

${fn:escapeXml("<h1>in escape xml app</h1>")}
<br />
<br />

<%-- contains ends with starts with --%>
<c:set var="link" value="WWW.GTIRKHA.IN" />
${fn:startsWith(link,"WWW")}
<br />
${fn:endsWith(link,"IN")}
<br />
${fn:contains(link,"gtirkha")}
<br />
${fn:containsIgnoreCase(link,"gtirkha")}

<%-- split and join --%>
<c:set var="splittedArr" value="${fn:split(link,'.')}" />
<br />
<br />
splitted array
<c:forEach items="${splittedArr}" var="i">
	<br />
${i}
</c:forEach>
<br />
<br />
joined array ${fn:join(splittedArr,"@")}

<%@include file="include/footer.jsp"%>