require 'open-uri'
require 'pry'
require 'httparty'
require 'byebug'
class Scraper


  def self.scrape_index_page(index_url)
     html = open(index_url)
     doc = Nokogiri::HTML(html)
     roster_body = doc.css('.roster-cards-container')
     roster_student = doc.css('.student-card')
     roster_student.each do |kay,value|
        byebug
     end
  end

  def self.scrape_profile_page(profile_url)

  end

end
