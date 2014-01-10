<html>
	<head>
		<title></title>
	</head>
	<body>
		<h3>gpickin.com - Unit Testing Blog Series<br>
		Blog 04 Index - Unit Testing 04 - Testing with Dependencies</h3>
		
		<h1>Step 2 - Create our saveDomainName function to satisfy the test</h1>
		
		<p><a href="/index.cfm">Back to Series Index</a></p>
		<p><a href="../index.cfm">Back to Blog Index</a></p>
		
		<ul>
			<li>View Code to See File Setup</li>
		</ul>
		
		<cfset r = new testbox.system.testing.TestBox( directory="blog04.Step2.test.unit") >
		<cfoutput>#r.run()#</cfoutput>
	</body>
</html>