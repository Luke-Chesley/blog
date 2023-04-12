# run ipybn file to update csv then run this in rails console


# require 'csv'

# data = CSV.read("/home/luke/projects/blog/mlb_game_data_2023.csv", headers: true, col_sep: ",")


# data.each do |row|
#   title = "#{row["date"]} - #{row["home_team"]} vs. #{row["away_team"]}"
#   body = row.values_at("home_team","home_runs","away_team","away_runs").join(" | ")
#   image_url = "https://i0.wp.com/sportslogosvg.com/wp-content/uploads/2020/09/mlb.png?fit=1992%2C1434&ssl=1"
#   article = Article.new(title: title, body: body, image_url: image_url)
#   article.save
# end