component displayName="CFMLServer.cfc Unit Tests" {

// executes before all tests
function beforeTests() {}

// executes after all tests
function afterTests() {}

function testIncludesWithCase(){
          $assert.includesWithCase( "hello", "he" );
          $assert.includesWithCase( [ "Monday", "Tuesday" ] , "Monday" );
     }

}