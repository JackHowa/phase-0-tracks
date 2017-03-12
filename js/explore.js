// pseudocode 

// Make a new program that takes a word 
// Measure how long that word is 
// FOR each letter 
// 		Take the letter's position at the end
// 		Assign that letter to its new position next in line in front
// Show the new word 

var stringReverser = function(word) {
	var new_word = ""
	for (var i = word.length - 1; i >= 0; i--) {
		new_word += word[i];
	}
	return new_word
}

// driver

if(3 > 2) {
	console.log(stringReverser("Jack"))
}
else {
	console.log("Error Error Error")
}
