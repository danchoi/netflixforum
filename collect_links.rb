
require 'open-uri'
require 'nokogiri'

url = "http://developer.netflix.com/forum/topics/18904"

pages = ARGV.first ? ARGV.first.to_i : 10
1.upto(pages) do |i|
  html = open(url + "/#{i}").read
  threads = Nokogiri::HTML(html).search("li.subject a").map {|x| "%s %s" % [x[:href].sub(/^\//, ''), x.inner_text.strip]}
  puts threads
end




