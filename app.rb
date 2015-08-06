require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')

get('/') do
  erb(:form)
end

get('/allergies') do
  @output = params.fetch("allergy_score").to_i().allergies()
  erb(:allergies)
end
