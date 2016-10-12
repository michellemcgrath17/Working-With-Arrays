require 'sinatra'
get'/' do
  #hello..write ruby code here
  #then find index file in views and use it
  #erb index means go to index file and use that as the webpage
  erb :index, layout: :main
end
