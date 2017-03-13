// Release 0

// Set a holder for longest phrase length to zero
// Set a holder for longest phrase to empty 
// FOR every word in the phrase list 
//		IF that word's length is greater than current longest phrase length 
//			Make that word's length the new longest phrase length
//			Make that word the the new longest phrase 
// Show the longest phrase

// function longestPhrase(phrases) {
// 	var longestLength = 0;
// 	var longestPhrase = "";
// 	for (var i = 0;i < phrases.length; i++) {
// 		if (phrases[i].length > longestLength)
// 			longestPhrase = phrases[i]
// 			longestLength = longestPhrase.length 
// 	}
// 	return longestPhrase
// }

// // driver code 
// phrases = ["long phrase","longest phrase","longer phrase"];

// console.log(longestPhrase(phrases));

// greetings = ["hello","bonjourno","hola"]

// console.log(longestPhrase(greetings))

// Release 1

// Set one state of matching equal to false
// FOR the first input 
//		IF first input's attributes match the second's 
//			then set state of matching equal to true 
// Show the state of even one of the attributes matching 

// function pairMatcher(object1,object2) {
// matching = false;
// 	for(var key in object1) {
// 		if (object1[key] === object2[key]) {
// 			matching = true;
// 		}
// 	}
// 	return matching;
// }

// object1 = {name: "Steven", age: 54};
// object2 = {name: "Tamir", age: 54};
// object3 = {name: "Jack", age:23};

// console.log(pairMatcher(object1,object2))

// console.log(pairMatcher(object2,object3))


// Release 2 

// Input a whole number into function 
// FOR whole number times 
//		Make a random collection of characters 
//		Add that collection to a word holder 
// Start the longest word function using those letters

function phraseMaker(int) {
	var words_object = {}
	var lowercase = "abcdefghijklmnopqrstuvwxyz"
	for (var i = 0;i < int; i++) {
		var new_word = ""
		for (var i = 0; i < Math.floor((Math.random() * 10) + 1); i++) {
			new_word += "a"

		}
		return new_word

	
	}
	

}

console.log(phraseMaker(4))

