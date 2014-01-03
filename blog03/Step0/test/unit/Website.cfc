component displayName="Website.cfc Unit Tests" extends="testbox.system.testing.BaseSpec" {

// executes before all tests
function beforeTests() {
	Website = new blog02.Step5.model.Website().init();
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

}