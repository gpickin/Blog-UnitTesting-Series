component displayName="Website.cfc Unit Tests" {

// executes before all tests
function beforeTests() {}

// executes after all tests
function afterTests() {}

function testIncludes(){
          $assert.includes( "hello", "HE" );
          $assert.includes( [ "Monday", "Tuesday" ] , "monday" );
     }

}