component displayName="Website.cfc Unit Tests" extends="testbox.system.testing.BaseSpec" {

// executes before all tests
function beforeTests() {
	variables.mockbox = new testbox.system.testing.Mockbox();
	
}

// executes after all tests
function afterTests() {}

function setup() {
	variables.Website = new blog06.Step3.model.Website().init();
	variables.WebsiteDAO = variables.mockbox.createMock(className='blog06.Step3.model.WebsiteDAO', clearMethods=true);
	variables.Website.setDAO( variables.WebsiteDAO );
}

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

function testSaveDomainNameSuccess() {

	variables.mockbox.prepareMock(Website);
	Website.$(method="isValidDomainName", returns=true);

	var domainName = {};
	domainName.domainid = 3;
	domainName.url = "www.2mydomainname.com";
	domainName.websiteid = 5;
	$assert.assert( Website.saveDomainName(domainName) == true, "True was expected, but False was returned - Means there was an Invalid Domain Name Given");
	
	
}


function testGetWebsiteSuccess() {
	
	var mockQuery = mockBox.querySim("id, name
		1|www.gpickin.com
		2|www.gavinpickin.com");
	
	
	variables.WebsiteDAO.$(method="getWebsite",returns=mockQuery);
	
	$assert.typeOf( "query", website.getWebsite(4), "Query Expected - Not Received" );
	$assert.assert( Website.getWebsite(4).recordcount >= 1, "Query with 1 or more Records expected");
}


function testGetWebsiteNotFound() {
	
		
	var mockQuery1 = mockBox.querySim("id, name");	
	var mockQuery2 = mockBox.querySim("id, name
		1|www.gpickin.com");
	
	//variables.WebsiteDAO.$(method="getWebsite").$results(mockQuery2,mockQuery1);
	variables.WebsiteDAO.$(method="getWebsite").$args(2).$results(mockQuery2);
	variables.WebsiteDAO.$(method="getWebsite").$args(4).$results(mockQuery1);
	
	$assert.isEqual( 1, website.getWebsite(2).recordcount);
	$assert.isEqual( 0, Website.getWebsite(4).recordcount);
}






}