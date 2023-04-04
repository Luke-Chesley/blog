require 'csv'

CSV.foreach("/home/luke/mlb_game_data_2023.csv", headers: true, col_sep: ",") do |row|
    p row
end