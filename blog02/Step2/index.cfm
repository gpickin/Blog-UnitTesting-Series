<html>
	<head>
		<title></title>
	</head>
	<body>
		<h3>gpickin.com - Unit Testing Blog Series<br>
		Blog 02 Index - TDD - Lets Write Tests for our Objects, then Build them to Pass the Tests</h3>
		
		<h1>Step 2 - Add Tests to Test if Our Objects Initialize Correctly</h1>
		
		<p><a href="/index.cfm">Back to Series Index</a></p>
		<p><a href="/index.cfm">Back to Blog Index</a></p>
		
		<ul>
			<li>View Code to See File Setup</li>
		</ul>
		
		<cfset r = new testbox.system.testing.TestBox( directory="blog02.Step2.test.unit") >
		<cfoutput>#r.run()#</cfoutput>
	</body>
</html>