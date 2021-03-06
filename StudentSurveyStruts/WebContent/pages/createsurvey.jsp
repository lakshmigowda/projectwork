<!--Lakshmi Venkataiah-->

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>CS Dept. Survey</title>
<meta name="student.viewport"
	content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyStruts/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyStruts/resources/css/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyStruts/resources/css/custom.css" />
</head>

<body>
	<div id="greeting1"></div>
	<div id="greeting2"></div>
	<div id="greeting3"></div>
	<table style="width: 100%">
		<tr>
			<td>
				<div class="container">
					<h1>Welcome to CS Dept. Survey!!</h1>

					<s:form id="surveyform" action="submitsurvey" role="form"
						autocomplete="on">

						<table class="table">
							<tr>
								<td colspan="3"><div id="error" style="color: red"></div></td>
							</tr>
							<tr>
								<td width="33%">Student ID:<s:textfield id="id"
										class="form-control" name="student.id"
										placeholder="Student ID" /></td>
								<td width="33%">Full Name:<s:textfield id="name"
										class="form-control" name="student.name"
										placeholder="First name, Middle name, Last name" /></td>
								<td width="33%">Address: <s:textfield id="address"
										class="form-control" name="student.address" /></td>
							</tr>
							<tr>
								<td>City:<s:textfield id="city" class="form-control"
										name="student.city" /></td>
								<td>State:<s:textfield id="state" class="form-control"
										name="student.state" /></td>
								<td>Zip: <s:textfield id="zip" class="form-control"
										name="student.zip" /></td>
							</tr>
							<tr>
								<td>E-mail:<s:textfield id="email" class="form-control"
										name="student.email" placeholder="xxx@xxxx.com" /></td>
								<td>URL:<s:textfield type="url" class="form-control"
										name="student.url" placeholder="Eg. www.google.com" /></td>
								<td>Data:<s:textfield class="form-control"
										name="student.data" id="data"
										placeholder="Enter 10 comma separated numbers from 1 through 100" /></td>
							</tr>
							<tr>
								<td>Phone:<s:textfield type="tel" class="form-control"
										name="student.phone" placeholder="xxx-xxx-xxxx" /></td>
								<td>What you liked the most about the campus?<br> <s:checkboxlist
										name="student.campusliking" class="campusliking"
										list="likinglist" />
								</td>
								<td>How did you became interested in the university? <br>
									<s:radio name="student.intersteduniv" list="interestlist"
										class="intersteduniv" />
								</td>
							</tr>
							<tr>
								<td>Choose your graduation month and enter year in the text
									box. <s:select name="student.month" list="monthslist"
										class="form-control" /> <br> Year:<s:textfield
										class="form-control" name="student.year" />
								</td>
								<td>Likelihood of you recommending this school for other
									students: <s:select name="student.likelyrecommend"
										list="recommendationlist" class="form-control" />
								</td>
								<td>Enter your comments here:<s:textarea
										class="form-control" rows="4" cols="50"
										name="student.comments" /></td>
							</tr>
							<tr>
								<td>Date:<s:textfield class="form-control"
										name="student.date" id="date" /></td>
								<td></td>
								<td align="center"><s:submit id="submitButton"
										class="btn btn-default" value="Submit" /> <s:reset
										class="btn btn-default" value="Reset" /></td>
							</tr>
						</table>
					</s:form>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div align="right" class="imgdiv"
					title="Please visit http://www.gmu.edu for more information.">
					<a href=" https://www.gmu.edu/"> <img
						src="http://mason.gmu.edu/~lvenkat2/testaccess/assign3/gmu.jpg"
						alt="George Mason University">
					</a>
				</div>
			</td>
		</tr>
	</table>

	<script src="/StudentSurveyStruts/resources/js/jquery.js"
		type="text/javascript"></script>
	<script src="/StudentSurveyStruts/resources/js/jquery-ui.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="/StudentSurveyStruts/resources/js/createsurvey.js"></script>
</body>

</html>