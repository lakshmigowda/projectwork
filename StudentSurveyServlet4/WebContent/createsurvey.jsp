<!--Lakshmi Venkataiah-->

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>CS Dept. Survey</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyServlet4/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyServlet4/resources/css/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="/StudentSurveyServlet4/resources/css/custom.css" />
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

					<form id="surveyform" action="submitsurvey" role="form"
						autocomplete="on" method="post">

						<table class="table">
							<tr>
								<td colspan="3"><div id="error" style="color: red"></div></td>
							</tr>
							<tr>
								<td width="33%">Student ID:<input type="text" id="id"
									class="form-control" name="id" autofocus
									placeholder="Student ID"></td>
								<td width="33%">Full Name:<input type="text" id="name"
									class="form-control" name="name" autofocus
									placeholder="First name, Middle name, Last name"></td>
								<td width="33%">Address: <input type="text" id="address"
									class="form-control" name="address"></td>
							</tr>
							<tr>
								<td>City:<input type="text" id="city" class="form-control"
									name="city"></td>
								<td>State:<input type="text" id="state"
									class="form-control" name="state"></td>
								<td>Zip: <input type="text" id="zip" class="form-control"
									name="zip"></td>
							</tr>
							<tr>
								<td>E-mail:<input type="text" id="email"
									class="form-control" name="email" placeholder="xxx@xxxx.com"></td>
								<td>URL:<input type="url" class="form-control" name="url"
									placeholder="Eg. www.google.com"></td>
								<td>Data:<input type="text" class="form-control"
									name="data" id="data"
									placeholder="Enter 10 comma separated numbers from 1 through 100"></td>
							</tr>
							<tr>
								<td>Phone:<input type="tel" class="form-control"
									name="phone" placeholder="xxx-xxx-xxxx"></td>
								<td>What you liked the most about the campus?<br> <label
									class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="students">Students</label> <label
									class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="atmosphere">Atmosphere</label> <label
									class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="location">Location</label> <br>
									<label class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="campus">Campus</label> <label
									class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="dorms">Dorm rooms </label> <label
									class="checkbox-inline"><input type="checkbox"
										name="campusliking" value="sports">Sports</label></td>
								<td>How did you became interested in the university?<label
									class="radio-inline"><input type="radio"
										name="intersteduniv" value="friends">Friends</label> <label
									class="radio-inline"><input type="radio"
										name="intersteduniv" value="television">Television</label> <label
									class="radio-inline"><input type="radio"
										name="intersteduniv" value="internet">Internet</label> <label
									class="radio-inline"><input type="radio"
										name="intersteduniv" value="other">Other</label></td>
							</tr>
							<tr>
								<td>Choose your graduation month and enter year in the text
									box.<input list="months" name="month" class="form-control">
									<datalist id="months">
										<option value="January">
										<option value="February">
										<option value="March">
										<option value="April">
										<option value="May">
										<option value="June">
										<option value="July">
										<option value="August">
										<option value="September">
										<option value="October">
										<option value="November">
										<option value="December">
									</datalist><br> Year:<input type="text" class="form-control"
									name="year">
								</td>
								<td>Likelihood of you recommending this school for other
									students:<select class="form-control" style="width: 200px"
									name="likelyrecommend">
										<option value="veryLikely">Very Likely</option>
										<option value="likely">Likely</option>
										<option value="unlikely">Unlikely</option>
								</select>
								</td>
								<td>Enter your comments here:<textarea class="form-control"
										rows="4" cols="50" name="comments"></textarea></td>
							</tr>
							<tr>
								<td>Date:<input type="date" class="form-control"
									name="date" id="date"></td>
								<td></td>
								<td align="center"><input type="submit" id="submitButton"
									class="btn btn-default" value="Submit"> <input
									type="reset" class="btn btn-default" value="Reset"></td>
							</tr>
						</table>
					</form>
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

	<script src="/StudentSurveyServlet4/resources/js/jquery.js"
		type="text/javascript"></script>
	<script src="/StudentSurveyServlet4/resources/js/jquery-ui.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="/StudentSurveyServlet4/resources/js/createsurvey.js"></script>
</body>

</html>