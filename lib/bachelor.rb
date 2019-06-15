require "pry" 

def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data[season].each do |contestant|
    #binding.pry
    if contestant["status"] == "Winner"
      winner_name = contestant["name"].split.first
    end
  end
  winner_name
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
   code here
  hometown_count = 0 
  data[season].each do |contestant|
    if contestant["hometown"] == hometown
      hometown_count += 1
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
  contestant_count = 0
  total_age = 0
  data[season].each do |contestant|
    contestant_count += 1
    total_age += contestant["age"].to_i
  end
  (total_age / contestant_count.to_f).round(0)
  #(total_age / contestant_count).round
end










