require 'bundler'
require 'sinatra'

class BlogServer < Sinatra::Base
  set :public_folder, '_site'

#  before do
#    response.headers['Cache-Control'] = 'public, max-age=1000'
#  end

  get '*' do |url|
    url.downcase!
    url << '/' unless url [-1] == '/' 
    url << 'index.html' unless url[-10] == 'index.html'
    url = settings.public_folder + url
    puts url
    send_file(url)
  end

  not_found do
    send_file '404.html'
  end
end

run BlogServer