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
  first_die6 = rand(1..6)
  second_die6 = rand(1..6)
  sum6 = first_die6 + second_die6
	
  @outcome6 = "You rolled a #{first_die6} and a #{second_die6} for a total of #{sum6}."
	
  erb(:two_six)
end


get("/dice/2/10") do
  first_die10 = rand(1..10)
  second_die10 = rand(1..10)
  sum10 = first_die10 + second_die10
	
  @outcome10 = "You rolled a #{first_die10} and a #{second_die10} for a total of #{sum10}."
	
  erb(:two_ten)
end

get("/dice/1/20") do
  first_die20 = rand(1..20)
  second_die20 = rand(1..20)
  sum20 = first_die20 + second_die20
	
  @outcome20 = "You rolled a #{first_die20} and a #{second_die20} for a total of #{sum20}."
	
  erb(:one_twenty) 
end
 
get("/dice/5/4") do
  first_die4 = rand(1..5)
  second_die4 = rand(1..5) 
  third_die4 = rand(1..5)
  four_die4 = rand(1..5)
  five_die4 = rand(1..5) 
  sum4 = first_die4 + second_die4 + third_die4 + four_die4 + five_die4
	
  @outcome4 = "You rolled a #{first_die4}, #{second_die4}, #{third_die4}, #{four_die4} and a #{five_die4} for a total of #{sum4}."
	
  erb(:five_four)
end
