require 'wombat'

Wombat.crawl do
  base_url "http://www.github.com"
  path "/"

  headline "xpath=//h1"
  subheading "css=p.subheading"

  what_is "css=.teaser h3", :list

  links do
    explore 'xpath=//*[@id="wrapper"]/div[1]/div/ul/li[1]/a' do |e|
      e.gsub(/Explore/, "Love")
    end

    search 'css=.search'
    features 'css=.features'
    blog 'css=.blog'
  end
end