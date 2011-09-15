require 'sinatra'
require 'open-uri'

def fuck_yeah_url(query)
  "http://fuckyeah.herokuapp.com/#{URI.encode(query)}"
end

get '/:query.jpg' do
  [200,
   { 'Content-Type' => 'image/jpeg' },
   open(fuck_yeah_url(params[:query])).read]
end
