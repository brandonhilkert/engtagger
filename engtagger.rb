require 'engtagger'
require_relative 'stemmable'

class String
  include Stemmable
end

tgr = EngTagger.new

text = "Co-founder at Meeteor. I'm a Technology Entrepreneur and have a passion for building something from nothing. I'm motivated by people with purpose and ambition that have a continuing drive to learn and succeed. I tend to use Ruby, Rails, MongoDB, MySQL, Heroku, EC2, Javascript, jQuery, HTML, and CSS."

tagged = tgr.add_tags(text)
nouns = tgr.get_nouns(tagged)

nouns.each do |key, value|
  puts key.stem
end
