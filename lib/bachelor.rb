def get_first_name_of_season_winner(data, season)
  data[season].each do |player_hash|
    if player_hash["status"]=="Winner"
      name = player_hash["name"]
      space = name.index(" ")
      return name[0...space]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_info|
    season_info.each do |player_hash|
      if player_hash["occupation"] == occupation
        return player_hash["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  contestant_count = 0
  data.each do |season, season_info|
    season_info.each do |player_hash|
      if player_hash["hometown"] == hometown
        contestant_count+=1
      end
    end
  end
  contestant_count
end

def get_occupation(data, hometown)
  data.each do |season, season_info|
    season_info.each do |player_hash|
      if player_hash["hometown"] == hometown
        return player_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = 0
  total_age = 0
  data[season].each do |player_hash|
    total_age += player_hash["age"].to_f
    contestants += 1
  end
  return (total_age/contestants).round
end
