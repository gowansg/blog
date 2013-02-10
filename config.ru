require 'bundler'
require 'sinatra'

class BlogServer < Sinatra::Base
  set :public_folder, '_site'

#  before do
#    response.headers['Cache-Control'] = 'public, max-age=1000'
#  end

  get '*' do |url|
    url << '/' unless url [-1] == '/' 
    url << 'index.html'
    send_file(settings.public_folder + url.downcase)
  end

  not_found do
    send_file '404.html'
  end
end

run BlogServer