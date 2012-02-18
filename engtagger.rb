require 'engtagger'
require_relative 'sanitize'

tgr = EngTagger.new

text = "Co-founder at Meeteor. I'm a Technology Entrepreneur and have a passion for building something from nothing. I'm motivated by people with purpose and ambition that have a continuing drive to learn and succeed. I tend to use Ruby, Rails, MongoDB, MySQL, Heroku, EC2, Javascript, jQuery, HTML, and CSS."

tagged = tgr.add_tags(text)
nouns = tgr.get_nouns(tagged)

puts ""
puts "Stems"
puts "-----------------"
nouns.each do |key, value|
  puts key.downcase
end

puts ""
puts "Sanitized text and stemmed"
puts "---------------------------"
s = Sanitize.new(text)
puts s.clean
