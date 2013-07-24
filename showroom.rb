require 'sinatra'

get %r{/bootstrap\.(js|css)} do |format|
  send_file "vendor/bootstrap/#{format}/bootstrap.min.#{format}"
end

get '/jquery.js' do
  send_file "vendor/jquery/jquery-1.10.2.min.js"
end

get '/' do
  erb :index
end
