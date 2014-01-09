component  displayname="Website" hint="I am the Website Object" output="false"
{
	
	function init() { return this; }
	
	function count() {
		//return 1.5;
		//return -5;
		return 10;
	}
	
	function isValidDomainName(domainName) {
		var i = "";
		var segmentArray = "";
		if (refind('[^A-Za-z\-\..]', domainName)) {
			return false;
		}
		
		segmentArray = listToArray(domainName, ".", true);
		for (i = 1; i <= arrayLen(segmentArray); i++){
			if (refind('[^A-Za-z]', left(segmentArray[i],1))) {
				return false;
			}
			if (refind('[^A-Za-z]', right(segmentArray[i],1))) {
				return false;
			}
			if (len(segmentArray[i]) == 0) {
				return false;
			}
		}
		
		return true;
		
	}
	
}