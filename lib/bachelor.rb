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
  counter = 0
  data.each do |season_num, hash|
    hash.each do |outcome|
      outcome.each do |key, value|
        if key == "age"
          total_count << value.to_i
        end
      end
    end
  end
  total_number = 0
  total_count.each do |age|
    total_number += age.to_i
  end
  total_number/
end
