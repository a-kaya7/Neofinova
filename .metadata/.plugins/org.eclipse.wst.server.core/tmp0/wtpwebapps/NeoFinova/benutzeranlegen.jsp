<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="administration.jsp"%>
<%@ page import="java.util.List" %>
<%@ page import="model.benutzer.aussensicht.BenutzerBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: white;
	margin: 0;
	padding: 0;
}

.container {
	width: 800px;
	margin: 0 auto;
	padding: 20px;
	backround: white;
	position: absolute;
	top: 50%;
	left: 250px;
	transform: translateY(-50%);
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 9px;
}

input[type="text"], input[type="password"], input[type="date"] {
	border: none;
	border-bottom: 2px solid #00BFFF;
	outline: none;
	padding: 6px;
}

.error {
	color: red;
	font-size: 0.9em;
}

.button {
	margin-top: 20px;
	display: flex;
	justify-content: flex-end;
}

button {
	padding: 15px 15px;
	border: none;
	background-color: #00BFFF;
	color: black;
	border-radius: 3px;
	cursor: pointer;
	display: flex;
	display: inline-block;
	margin: 0 5px;
}

.button button:hover {
	background-color: red;
}

.benutzer-btn {
	position: absolute;
	bottom: 10px;
	right: 10px;
}
.required {
    font-size: 1.5em;
    color: red;
    font-weight: bold;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Benutzer/-gruppe</h2>
		<form action="benutzeranlegen" method="post">
			<div class="form-group">
				<label for="vorname">Benutzer-Vorname</label> 
				<input type="text" name="vorname">
				<div class="error" id="vornameError"></div>
			</div>
			<div class="form-group">
				<label for="nachname">Benutzer-Nachname</label>
				<input type="text"	name="nachname">
				<div class="error" id="nachnameError"></div>
			</div>
			<div class="form-group">
				<label for="username">Username <span class="required" title="Dieses Feld ist erforderlich!">*</span></label> 
				<input type="text" name="username">
				<div class="error" id="usernameError"></div>
			</div>
			<div class="form-group">
				<label for="password">Passwort <span class="required" title="Dieses Feld ist erforderlich!">*</span></label> 
				<input type="password" name="password">
				<div class="error" id="passwordError"></div>
			</div>
			<div class="form-group">
				<label for="password">Passwort Wiederholen <span class="required" title="Dieses Feld ist erforderlich!">*</span></label> 
				<input type="password" name="passwordWiederholung">
				<div class="error" id="passwordWiederholungError"></div>
			</div>
			<div class="form-group">
				<label for="passwordValid">Passwort Gültig Bis</label>
				<input type="date" name="date">
				<div class="error" id="dateError"></div>
			</div>
			<div class="form-group">
				<label for="typ">Benutzer-Typ</label> 
				<input type="text" name="benutzerTyp">
				<div class="error" id="benutzerTypError"></div>
			</div>
			<button type="submit">Anlegen</button>
			<button type="submit">Abbrechen</button>
			<button type="button" class="benutzer-btn" onclick="window.location.href='benutzeranzeigen'">Benutzer Anzeigen</button>
			
		
		</form>
	
	</div>

</body>
</html>