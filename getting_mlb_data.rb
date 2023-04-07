# run ipybn file to update csv then run this in ruby termial -> rails console


require 'csv'

data = CSV.read("/home/luke/projects/blog/mlb_game_data_2023.csv", headers: true, col_sep: ",")

data.each do |row|
    puts row.values_at("home_team","away_team")

end


# data.each do |row|
#   article = Article.new(title:row.values_at("date","home_team","away_team"), body: row.values_at("home_team","home_runs","away_team","away_runs"))
#   article.save
# end