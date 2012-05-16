require 'sinatra'

#set :public, Proc.new { File.join(root, "_site") }

#before do
	#response.headers['Cache-Control'] = 'public, max-age='
#end

get '/' do
	'index.html'
end

