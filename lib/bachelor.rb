def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]['name'].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, value|
    value.each do |person|
      if person['occupation'] == occupation
        return person['name']
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, value|
    value.each do |person|
      if person['hometown'] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, value|
    value.each do |person|
      if person['hometown'] == hometown
        return person['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |person|
    ages << person['age'].to_i
  end
  average = (ages.sum.to_f) / (ages.length.to_f)
  high = ((ages.sum.to_f) / (ages.length.to_f)).ceil
  if average > (high.to_f - 0.5)
    average = average.ceil
  else
    average = average.floor
  end
  average
end
