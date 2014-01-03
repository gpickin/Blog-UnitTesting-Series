component displayName="Website.cfc Unit Tests" extends="testbox.system.testing.BaseSpec" {

// executes before all tests
function beforeTests() {
	Website = new blog03.Step3.model.Website().init();
}

// executes after all tests
function afterTests() {}

function testObjectInit() {
	$assert.typeOf( "component", Website );
}

function testCount() {
	var count = Website.count();
	$assert.typeOf( "numeric", count );
	$assert.assert( int(count) == count, "An integer was expected, but " & count & " was received");
	$assert.assert( count >= 0 , "Expected " & count & " to be greater than 0");

}

function testValidDomainName() {
	
	$assert.assert( Website.isValidDomainName("myTestDomain.com") == true, "True was expected, but False was returned - This is a valid Domain name");
	$assert.assert( Website.isValidDomainName("myTestDomain?com") == false, "False was expected, but True was returned - Question Marks are Invalid Characters");
	$assert.assert( Website.isValidDomainName("myTestDomain/com") == false, "False was expected, but True was returned - Forward Slash are Invalid Characters");
	$assert.assert( Website.isValidDomainName("myTestDomain com") == false, "False was expected, but True was returned - Spaces are Invalid Characters");
	$assert.assert( Website.isValidDomainName("1myTestDomain.com") == false, "False was expected, but True was returned - Segments must start with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain.2com") == false, "False was expected, but True was returned - Segments must start with a letter");
	$assert.assert( Website.isValidDomainName("-myTestDomain.com") == false, "False was expected, but True was returned - Segments must start with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain.-com") == false, "False was expected, but True was returned - Segments must start with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain1.com") == false, "False was expected, but True was returned - Segments must end with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain.com2") == false, "False was expected, but True was returned - Segments must end with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain-.com") == false, "False was expected, but True was returned - Segments must end with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain.com-") == false, "False was expected, but True was returned - Segments must end with a letter");
	$assert.assert( Website.isValidDomainName("myTestDomain..com") == false, "False was expected, but True was returned - Segment must have at least one Character");
	$assert.assert( Website.isValidDomainName("myTestDomain.com.") == false, "False was expected, but True was returned - Segment must have at least one Character");
	$assert.assert( Website.isValidDomainName(".myTestDomain.com") == false, "False was expected, but True was returned - Segment must have at least one Character");
	
}

}