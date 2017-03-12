var longestPhrase = function(phrases) {
	for (var i = 0;i < phrases.length; i++) {
		if (phrases[i].length > phrases[i+1].length) {
			console.log("yep")
		}
		else {
			console.log("nope")
			// phrases.splice(i);
		}

		console.log(phrases)
		// bubble sort? 
		// print the first one after looping through all 
	}
}

longestPhrase(["long phrase","longest phrase","longer phrase"])
