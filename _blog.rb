require 'rubygems'
require 'sinatra'

set :public_folder, File.join(__FILE__, "_site")

#before do
	#response.headers['Cache-Control'] = 'public, max-age='
#end

get '/*' do |path|
	send_file ("_site/#{path}")
end

