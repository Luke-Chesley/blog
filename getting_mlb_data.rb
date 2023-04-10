# run ipybn file to update csv then run this in rails console


# require 'csv'

# data = CSV.read("/home/luke/projects/blog/mlb_game_data_2023.csv", headers: true, col_sep: ",")


# data.each do |row|
#   article = Article.new(title:row.values_at("date","home_team","away_team"), body: row.values_at("home_team","home_runs","away_team","away_runs"),image_url: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_March_2010-1.jpg")
#   article.save
# end