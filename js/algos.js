// Set a holder for longest phrase length to zero
// Set a holder for longest phrase to empty 
// FOR every word in the phrase list 
//		IF that word's length is greater than current longest phrase length 
//			Make that word's length the new longest phrase length
//			Make that word the the new longest phrase 
// Show the longest phrase

function longestPhrase(arr) {
	var longestLength = 0;
	var longestPhrase = "";
	for (var i = 0;i < arr.length; i++) {
		if (arr[i].length > longestLength)
			longestPhrase = arr[i]
			longestLength = longestPhrase.length 
	}
	return longestPhrase
}



// driver code 
arr = ["long phrase","longest phrase","longer phrase"];

console.log(longestPhrase(arr));




