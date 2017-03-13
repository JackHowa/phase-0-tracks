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

function pairMatcher(object1,object2) {
	for(var key in object1) {
		if (object1[key] === object2[key]) {
			return true;
		}
	}
	return false;
}

object1 = {name: "Steven", age: 54};
object2 = {name: "Tamir", age: 54};
object3 = {name: "Jack", age:23};

console.log(pairMatcher(object1,object2))

console.log(pairMatcher(object2,object3))


