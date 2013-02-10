module Jekyll
  class DowncasedPostNameGenerator < Generator
    safe true		
    priority :low

    def generate(site)
      site.posts.each{ |post| puts post.url.downcase! }
    end
  end
end 