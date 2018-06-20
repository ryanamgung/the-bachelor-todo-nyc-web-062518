def get_first_name_of_season_winner(data, season)
  silly_string = ""
  data.each do |season_num, hash|
    if season_num == season
      hash.each do |outcome|
        if outcome["status"] == "Winner"
          silly_string = outcome["name"].split(" ").first
        end
      end
    end
  end
  silly_string
end

def get_contestant_name(data, occupation)
  silly_string = ""
  data.each do |season_num, hash|
    hash.each do |outcome|
      if outcome["occupation"] == occupation
        silly_string = outcome["name"]
      end
    end
  end
  silly_string
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, hash|
    hash.each do |outcome|
      if outcome["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_num, hash|
    hash.each do |outcome|
      if outcome["hometown"] == hometown
        return outcome["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_count = []
  data.each do |season_num, hash|
    if season_num = season
    hash.each do |outcome|
      total_count << outcome["age"].to_i
    end
   end
  end
  num = total_count.reduce(:+).to_f/total_count.length.to_f
  num.round
  
  age_array = []
 data.each do |season_number, season_hash|
    if season_number == season
      season_hash.each do |contestant|
        age_array << contestant["age"].to_i
      end
    end
  end
  avg = age_array.reduce(:+).to_f/age_array.length.to_f
  avg.round
end
