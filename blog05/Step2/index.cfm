<html>
	<head>
		<title></title>
	</head>
	<body>
		<h3>gpickin.com - Unit Testing Blog Series<br>
		Blog 05 Index - External Dependencies and Dependency Injection</h3>
		
		<h1>Step 1 - Create WebsiteDAO.cfc and Introduction to Dependency Injection</h1>
		
		<p><a href="/index.cfm">Back to Series Index</a></p>
		<p><a href="../index.cfm">Back to Blog Index</a></p>
		
		<ul>
			<li>View Code to See File Setup</li>
		</ul>
		
		<cfset r = new testbox.system.testing.TestBox( directory="blog05.Step2.test.unit") >
		<cfoutput>#r.run()#</cfoutput>
	</body>
</html>