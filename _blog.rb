require 'rubygems'
require 'sinatra'

set :public_folder, "_site"

#before do
	#response.headers['Cache-Control'] = 'public, max-age='
#end

get '/' do
	send_file 'index.html'
end

get '*' do |path|
	send_file File.join(settings.public_folder, path.downcase!)
end

