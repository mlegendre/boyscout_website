#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.scouting.org/meritbadges.aspx'))

links=doc.css('div#middle-element div center a')

links.each do |i|
  puts i
end




#badge_file=File.expand_path("badges.html")
#badge_links=[File.readlines(badge_file)]
#
#
#badge_links.each do |i|
#  badges_linkto=i.grep(/href="\/Home\/BoyScouts\/AdvancementandAwards\/MeritBadges/)
#
#  puts badges_linkto
#end

