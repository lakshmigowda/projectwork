<!-- 
Lakshmi Venkataiah
This is list survey jsp file which shows list of surveys data.
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Survey Form</title>
<style type="text/css">
.body {
	background-color: #CCEEFF;
}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	function deleteFunction(id) {
		var url = "deletesurvey.action?id=" + id;
		$.ajax({
			url : url,
			success : function(data) {
				location.href = '/lakshmi_ws_client/surveylist';
			}
		});
	}
</script>
</head>

<body class="body">
	<div class="form-container">
		<h3>List of all the surveys!</h3>
		<table border="1px solid">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Survey Date</th>
				<th>Most Liked</th>
				<th>Interest</th>
				<th>Recommend</th>
				<th>Raffle</th>
				<th>Comments</th>
			</tr>
			<s:iterator value="surveylist">
				<tr>
					<td><s:property value="firstName" /></td>
					<td><s:property value="lastName" /></td>
					<td><s:property value="streetAddress" /></td>
					<td><s:property value="city" /></td>
					<td><s:property value="state" /></td>
					<td><s:property value="phone" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="surveyDate" /></td>
					<td><s:property value="likedAboutSchool" /></td>
					<td><s:property value="interest" /></td>
					<td><s:property value="recommend" /></td>
					<td><s:property value="raffle" /></td>
					<td><s:property value="comments" /></td>
					<td><button
							onclick="deleteFunction('<s:property value="id" />')">Delete</button></td>

				</tr>
			</s:iterator>
		</table>
	</div>
	<br>
	<button onclick="location.href='/lakshmi_ws_client/welcome'"
		class="submit-button">Back to homepage!</button>

</body>
</html>