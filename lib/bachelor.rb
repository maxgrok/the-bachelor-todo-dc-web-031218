require "pry"

def get_first_name_of_season_winner(data, season)
  # code here

  #find winner
  	#iterate over season 
  	data.each do |key, value|
  	#iterate over array of data
  		if key == season
  			value.each do |key, value|
  	#iterate over hash of individual's values w/ keys ['name, age, hometown, occupation, etc.']
  				if key["status"] == "Winner"
  	#find status: "Winner" 
  						full_name = key["name"].split(" ")
  						first_name = full_name[0]
  						return first_name
  				end
  			end
  		end
  	end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
  	value.each do |key, value|
  		if key["occupation"] == occupation
  			return key["name"]
  		end
  	end
  end	
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 

  data.each do |key, value|
  	value.each do |key, value|
  		if key["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
  	value.each do |key, value|
  		if key["hometown"] == hometown
  			return key["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  # code here
  array = []
  data.each do |key, value|
  	if key == season
  		value.each do |key, value|
  			array.push(key["age"].to_i)
  		end
  	end
  end
  average = array.inject{ |sum, el| sum + el }.to_f / array.size
  return (average).round / 1.0
end
