<html>
	<head>
		<title></title>
	</head>
	<body>
		<h3>gpickin.com - Unit Testing Blog Series<br>
		Blog 06 Index - Mocking External Dependencies Part 2</h3>
		
		<h1>Step 0 - Base Template</h1>
		
		<p><a href="/index.cfm">Back to Series Index</a></p>
		<p><a href="../index.cfm">Back to Blog Index</a></p>
		
		<ul>
			<li>View Code to See File Setup</li>
		</ul>
		
		<cfset r = new testbox.system.testing.TestBox( directory="blog06.Step0.test.unit") >
		<cfoutput>#r.run()#</cfoutput>
	</body>
</html>