require 'open-uri'
require 'nokogiri'

class BallparksController < ApplicationController
  def index
    @ballparks = []
    html = URI.open('https://baseballparks.com/ballparkchart/').read
    doc = Nokogiri::HTML(html)

    doc.css('table').last.css('tr').each do |row|
      cols = row.css('td').map(&:text)
      next if cols.empty?

      franchise, league, stadium, city, architect, first_year, last_year, capacity, lf, lcf, cf, rcf, rf, *rest_cols = cols
      fair_territory = rest_cols.join(" ").to_f

      @ballparks << { 
        franchise: franchise,
        league: league,
        stadium: stadium,
        city: city,
        architect: architect,
        first_year: first_year.to_i,
        last_year: last_year.to_i,
        capacity: capacity.to_i,
        left_field: lf.to_f,
        left_center: lcf.to_f,
        center_field: cf.to_f,
        right_center: rcf.to_f,
        right_field: rf.to_f,
        fair_territory: fair_territory
      }
    end
  end
end