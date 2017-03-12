// Release 0

// Set a holder for longest phrase length to zero
// Set a holder for longest phrase to empty 
// FOR every word in the phrase list 
//		IF that word's length is greater than current longest phrase length 
//			Make that word's length the new longest phrase length
//			Make that word the the new longest phrase 
// Show the longest phrase

function longestPhrase(phrases) {
	var longestLength = 0;
	var longestPhrase = "";
	for (var i = 0;i < phrases.length; i++) {
		if (phrases[i].length > longestLength)
			longestPhrase = phrases[i]
			longestLength = longestPhrase.length 
	}
	return longestPhrase
}

// driver code 
phrases = ["long phrase","longest phrase","longer phrase"];

console.log(longestPhrase(phrases));

greetings = ["hello","bonjourno","hola"]

console.log(longestPhrase(greetings))

// Release 1

// function pairMatcher() 




