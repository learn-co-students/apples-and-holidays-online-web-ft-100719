require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_hash|
    if (season == :winter)
      season_hash.each do |holiday, supplies|
        supplies.insert(-1, supply)
      end
    end
      
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

    holiday_hash.each do |season, season_hash|
    if (season == :spring)
      season_hash.each do |holiday, supplies|
        supplies.insert(-1, supply)
      end
    end
      
  end


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season][holiday_name] = supply_array.sort

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
    holiday_hash.each do |season, season_hash|
    if (season == :winter)
      season_hash.each do |holiday, supplies|
        supplies.each do |array_contents|
          winter_supplies.insert(-1, array_contents)
        end
      end
    end
      
  end
  puts winter_supplies
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
    holiday_hash.each do |season, season_hash|
      puts "#{season.to_s.capitalize!}:"
      season_hash.each do |holiday, supplies|
        if(holiday == :new_years)
          puts "  New Years: #{supplies.join(", ")}"
        elsif(holiday == :fourth_of_july)
          puts "  Fourth Of July: #{supplies.join(", ")}"
        elsif(holiday == :memorial_day)
          puts "  Memorial Day: #{supplies.join(", ")}"
        else
          puts "  #{holiday.to_s.capitalize!}: #{supplies.join(", ")}"
        end
        

      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_names = []
  
      holiday_hash.each do |season, season_hash|
        season_hash.each do |holiday, supplies|
          supplies.each do |array_contents|
            if(array_contents == "BBQ")
              if(holiday_names.include?(holiday) == false)
                holiday_names << holiday
              end
            end
          end
        end
      end
  return holiday_names
end







