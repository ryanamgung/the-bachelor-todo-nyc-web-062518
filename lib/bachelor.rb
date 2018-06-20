def get_first_name_of_season_winner(data, season)
  silly_string = ""
  data.each do |season_num, hash|
    if season_num == season
      hash["status"].each do |outcome|
        if outcome == "Winner"
          silly_string << hash["name"].split(" ")
        end
      end
    end
  end
  silly_string
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
