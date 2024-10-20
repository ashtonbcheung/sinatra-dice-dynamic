require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:zebra/:alice") do
  @num_dice = params.fetch("zebra").to_i

  @sides = params.fetch("alice").to_i

  @rolls = []

  50.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:flexible)
end
