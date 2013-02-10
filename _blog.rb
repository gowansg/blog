require 'rubygems'
require 'sinatra'
set :root, File.dirname(__FILE__)
set :public_folder, '_site'
#before do
	#response.headers['Cache-Control'] = 'public, max-age='
#end
=begin
get '/' do
	send_file 'index.html'
end

get '*' do |path|
	send_file 'index.html'
	file_path = File.join(settings.public_folder, path.downcase!)
	
	unless File.Exists?(file_path) 
		file_path << ".html"	
	end

	send_file file_path
end

not_found do
	send_file '404.html', {:status => 404}
end
=end