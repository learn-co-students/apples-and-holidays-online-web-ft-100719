require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july] [1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |holiday, names_hash|
    if holiday == :winter
      names_hash.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_supplies|
    puts "#{season.capitalize}:"
    holiday_supplies.each do |holiday, supplies|
    which_holiday = holiday.to_s.split("_")
      which_holiday.each do |word|
        word.capitalize!
      end
      new_holiday = which_holiday.join(" ")
      puts "  #{new_holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |season, supplies|
    supplies.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq << holiday
      end
    end
  end
  bbq
end
