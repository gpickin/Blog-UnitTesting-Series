component displayName="Website.cfc Unit Tests" extends="testbox.system.testing.BaseSpec" {

// executes before all tests
function beforeTests() {
	Website = new blog02.Step2.model.Website().init();
}

// executes after all tests
function afterTests() {}

function testObjectInit() {
	$assert.typeOf( "component", Website );
}

}