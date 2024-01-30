# /dice.rb

require "sinatra" 
require "sinatra/reloader" 


get("/") do
  erb(:elephant)
end

get ("/zebra") do
    "zebra are awesome "
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end


get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end

get("/dice/1/20") do
  first_die = rand(1..20)
  second_die = rand(1..20)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>1d20</h1>
   <p>#{outcome}</p>"
end
 
get("/dice/5/4") do
  first_die = rand(1..5)
  second_die = rand(1..5) 
  third_die = rand(1..5)
  four_die = rand(1..5)
  five_die = rand(1..5) 
  sum = first_die + second_die + third_die + four_die + five_die 
	
  outcome = "You rolled a #{first_die}, #{second_die}, #{third_die}, #{four_die} and a #{five_die} for a total of #{sum}."
	
  "<h1>5d4</h1>
   <p>#{outcome}</p>"
end
