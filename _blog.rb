require 'sinatra'

set :public_folder, File.join(root, "_site")

#before do
	#response.headers['Cache-Control'] = 'public, max-age='
#end

get '/' do
	'index.html'
end

