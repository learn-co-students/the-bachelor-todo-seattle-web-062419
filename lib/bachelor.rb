def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
      if info["status"] == "Winner"
        return  info["name"].split(' ')[0]
      end
  end
  # code here
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end 
  # code here
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |info|
      if info["hometown"] == hometown
         counter += 1
      end
    end
  end
  return counter
  # code here
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
  # code here
end

def get_average_age_for_season(data, season)
  age = 0
  number = 0
    data[season].each do |info|
      age += info["age"].to_i
      number += 1
    end
  return (age/number.to_f).round(0)
  # code here
end
