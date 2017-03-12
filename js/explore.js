// pseudocode 

// Make a new program that takes a word 
// Measure how long that word is 
// FOR each letter 
// 		Take the letter's position 
//		Subtract that letter's position from the word's length 
// 		Assign that letter to its new position of that result 
// Show the new word 

var stringReverser = function(word) {
	var new_word = ""
	for (var i = 0; i < word.length; i++) {
		letter = word[i];
		new_word += word[i]
		console.log(new_word)
		// console.log(letter);
	}
}

if(3 > 2) {
	stringReverser("Jack")
}
else {
	console.log("Error Error Error")
}
