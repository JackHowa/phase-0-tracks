favorite_actors = {
    robin_williams: {
        pretty_name: "Robin Williams",
        favorite_movie_scores: {
            "Dead Poets Society": 85,
            "Good Will Hunting": 97,
            "Fisher King": 82,
            "Good Morning Vietnam": 89
        	},
        to_watch: [
            "What Dreams May Come",
            "Popeye"
        ]
    	},
    matt_damon: {
        pretty_name: "Matt Damon",
        favorite_movie_scores: {
            "Goodwill Hunting": 85,
            "The Departed": 91,
            "Interstellar": 71,
            "The Adjustment Bureau": 72,
            "Bourne Series": {
                "Bourne Ultimatum": 93 ,
                "Bourne": 56,
                "Bourne Identity": 83,
                "Bourne Supremacy": 81
                }
            },
        to_watch: [
            "All The Pretty Horses",
            "Howard Zinn: You Can´t Be Neutral on a Moving Train"
        ]
    	},
    mike_myers: {
        pretty_name: "Mike Myers",
        favorite_movie_scores: {
            "Austin Powers Series": {
                "Austin Powers: International Man of Mystery": 70,
                "Austin Powers: The Spy Who Shagged Me": 51,
                "Austin Powers in Goldmember": 54
            },
            "Wayne's World Series": {
            	"Wayne's World": 86,
            	"Wayne's World 2": 60
        	}},
        to_watch: [
            "Mystery, Alaska",
            "The Thin Pink Line"
        ]
	}
}

puts "The rotten tomatoes score for Good Will Hunting is:"
p favorite_actors[:robin_williams][:favorite_movie_scores][:"Good Will Hunting"]

puts "Here's the first movie I need to see from Mike Myers:"
puts favorite_actors[:mike_myers][:to_watch][0]

puts "Here's a list of my favorite actors:"
puts favorite_actors[:mike_myers][:pretty_name] 
puts favorite_actors[:matt_damon][:pretty_name] 
puts favorite_actors[:mike_myers][:pretty_name]